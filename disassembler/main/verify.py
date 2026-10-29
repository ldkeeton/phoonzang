"""Byte-for-byte / semantic verification of generated assembly."""

import bisect
import os
import re
import subprocess
import sys
import tempfile

from lib import progress
from lib.cachedirs import src_dir
from lib.model import IS_CODE
from lib.sidecar.patches import PatchError, finalize as finalize_patches

from .options import APPS_DIR, EXACT_BYTES, PROJECT_ROOT
from .projects import (
    discover_binaries,
    get_projects,
    load_sidecar,
    sidecar_per_binary,
)


_INCLUDE_AT_RE = re.compile(r'^%include\s+"([^"]+)"\s*;\s*0x([0-9a-f]+)\b', re.I)


_LIST_RE = re.compile(r'^\s*\d+ (?:([0-9A-F]{8}) (\S+))?\s*(?:<\d+>)?\s?(.*)$')
_LIST_BYTES_RE = re.compile(r'[0-9A-F()\[\]]+-?')
_LIST_LABEL_RE = re.compile(r'^([.\w$@?]+):\s*')
# Source lines that lay out data: every other line that emits bytes is an
# instruction.
_DATA_DIRECTIVES = frozenset((
    'db', 'dw', 'dd', 'dq', 'dt', 'times', 'incbin', 'resb', 'resw', 'resd',
    'align', 'alignb', 'istruc', 'at', 'iend'))


def listing_map(text, size):
    """``(bitmap, labels)`` from a NASM listing of the binary.

    *bitmap* marks each byte an instruction line emitted ``IS_CODE``: the
    code the source spells, so the comparison starts every instruction where
    the source does.  *labels* is ``[(offset, name)]``, each non-local label
    at the first byte after it.  The generated sources put every byte at its
    file offset, so a listing address is a file offset.
    """
    bitmap = bytearray(size)
    labels = []
    pending = []
    for line in text.splitlines():
        match = _LIST_RE.match(line)
        if not match:
            continue
        address, hexed, source = match.groups()
        source = source.split(';', 1)[0].strip()
        while True:
            label = _LIST_LABEL_RE.match(source)
            if not label:
                break
            if not label.group(1).startswith(('.', '__')):
                pending.append(label.group(1))
            source = source[label.end():]
        if address is None or not _LIST_BYTES_RE.fullmatch(hexed):
            continue
        offset = int(address, 16)
        labels.extend((offset, name) for name in pending)
        pending = []
        if not source or source.split()[0].lower() in _DATA_DIRECTIVES:
            continue
        end = min(offset + len(re.sub(r'[^0-9A-F]', '', hexed)) // 2, size)
        bitmap[offset:end] = bytes([IS_CODE]) * max(0, end - offset)
    return bitmap, labels


def locator(asm_dir, name, labels=()):
    """``where(offset)``: the source file and label holding *offset*.

    The file is the master's last ``%include "..." ; 0x<offset>`` at or before
    it; the label is the last of *labels* (:func:`listing_map`) there.
    """
    includes = []
    try:
        with open(os.path.join(asm_dir, f'{name}.asm')) as f:
            for line in f:
                match = _INCLUDE_AT_RE.match(line)
                if match:
                    includes.append((int(match.group(2), 16), match.group(1)))
    except OSError:
        pass
    includes.sort()
    labels = sorted(labels)

    def where(offset):
        parts = []
        k = bisect.bisect_right(includes, (offset, '\uffff')) - 1
        parts.append(includes[k][1] if k >= 0 else f'{name}.asm')
        k = bisect.bisect_right(labels, (offset, '\uffff')) - 1
        if k >= 0:
            start, label = labels[k]
            parts.append(f'{label}+0x{offset - start:x}' if offset != start
                         else label)
        return ' in ' + ', '.join(parts)
    return where


def byte_verify(name, orig_dir, rel_path, asm_dir, sidecar_entry=None,
                exact_bytes=False):
    """Assemble ``<name>.asm`` and compare it with the shipped file."""
    asm_path = os.path.join(asm_dir, f'{name}.asm')
    orig_path = os.path.join(orig_dir, rel_path)

    if not os.path.exists(asm_path):
        print(f'{name}: SKIP (no .asm)')
        return False

    with tempfile.TemporaryDirectory() as tmp:
        from lib.link import include_args
        bin_path = os.path.join(tmp, 'out.bin')
        lst_path = os.path.join(tmp, 'out.lst')
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-w-other',
             *include_args(asm_dir), '-o', bin_path, '-l', lst_path,
             asm_path],
            capture_output=True, text=True,
        )

        def print_warnings():
            if r.stderr.strip():
                for line in r.stderr.strip().split('\n'):
                    print(line.replace(asm_path, f'{name}.asm'))

        if r.returncode != 0:
            print(f'{name} -> {rel_path}  [FAIL]')
            print_warnings()
            return False

        with open(bin_path, 'rb') as f:
            built = f.read()
        with open(lst_path, errors='replace') as f:
            bitmap, labels = listing_map(f.read(), len(built))

    # Reapply each post-link edit before comparing with the shipped file.  The
    # source holds the compiler's bytes (the analysis view); the artifact and
    # the original carry the shipped bytes.
    patches = (sidecar_entry or {}).get('byte_patches') or ()
    if patches:
        try:
            def applied(patch, before):
                progress.log(f'  patch {name}: 0x{patch["offset"]:04x} '
                             f'{before.hex()} -> {patch["apply"].hex()} '
                             f'({patch["note"]})')

            built = finalize_patches(built, patches, on_apply=applied)
        except PatchError as exc:
            print(f'{name} -> {rel_path}  [FAIL]  {exc}')
            return False

    ok = compare_image(name, orig_path, rel_path, built, bitmap,
                       exact_bytes=exact_bytes,
                       where=locator(asm_dir, name, labels))
    if ok:
        print(f'{name} -> {rel_path}  [OK]')
    print_warnings()
    return ok


def compare_image(name, orig_path, rel_path, built, bitmap,
                  exact_bytes=False, where=None):
    """True when *built* matches the shipped file at *orig_path*.

    Code (per *bitmap*, from :func:`listing_map`) is compared instruction by
    instruction, semantically unless *exact_bytes*; any other byte must be
    equal or lie in an instruction that is semantically equal.  A failure is
    printed with *where(offset)*, the source that holds it.
    """
    where = where or (lambda offset: '')
    with open(orig_path, 'rb') as f:
        orig = f.read()

    def fail(text, offset):
        print(f'{name} -> {rel_path}  [FAIL]  {text} at 0x{offset:04x}'
              f'{where(offset)}')
        return False

    if len(orig) != len(built):
        print(f'{name} -> {rel_path}  [FAIL]  size {len(orig)} != {len(built)}')
        return False

    if exact_bytes:
        for i in range(len(orig)):
            if orig[i] != built[i]:
                return fail('mismatch', i)
        return True

    from lib.verify.assemble import is_semantically_equivalent
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    n = len(orig)
    off = 0
    while off < n:
        while off < n and (off >= len(bitmap) or bitmap[off] != IS_CODE):
            if orig[off] != built[off]:
                resolved = False
                for delta in range(0, 8):
                    test_off = off - delta
                    if test_off < 0:
                        continue
                    try:
                        o_insn = next(md.disasm(
                            orig[test_off:test_off + 15], test_off))
                        b_insn = next(md.disasm(
                            built[test_off:test_off + 15], test_off))
                    except StopIteration:
                        continue
                    if test_off + o_insn.size <= off:
                        continue
                    if (o_insn.address == b_insn.address and
                            is_semantically_equivalent(
                                bytes(o_insn.bytes),
                                bytes(b_insn.bytes), test_off)):
                        off += (test_off + o_insn.size - off)
                        resolved = True
                        break
                if not resolved:
                    return fail('byte mismatch (data region)', off)
                continue
            off += 1

        code_start = off
        while off < n and off < len(bitmap) and bitmap[off] == IS_CODE:
            off += 1
        code_end = off

        if code_start < code_end:
            for o_insn in md.disasm(orig[code_start:code_end], code_start):
                addr = o_insn.address
                try:
                    b_insn = next(md.disasm(built[addr:addr + 15], addr))
                except StopIteration:
                    return fail('no instruction', addr)
                if addr != b_insn.address:
                    return fail(f'alignment diverged (built '
                                f'0x{b_insn.address:04x})', addr)
                if o_insn.bytes != b_insn.bytes and not is_semantically_equivalent(
                        bytes(o_insn.bytes), bytes(b_insn.bytes), addr):
                    return fail('semantic mismatch', addr)
    return True


def verify_project(project_name):
    project_dir = os.path.join(APPS_DIR, project_name)
    if not os.path.isdir(project_dir):
        return 0, []

    out_dir = src_dir(project_name, PROJECT_ROOT)
    sidecar = load_sidecar(project_name)
    bins = discover_binaries(project_dir)
    ok = 0
    fail = []
    for name, (rel_path, _start) in sorted(bins.items()):
        sidecar_entry = sidecar_per_binary(sidecar, name) if sidecar else None
        if byte_verify(name, project_dir, rel_path, out_dir,
                       sidecar_entry=sidecar_entry, exact_bytes=EXACT_BYTES):
            ok += 1
        else:
            fail.append(name)
    return ok, fail


def verify_all():
    total_ok = 0
    total_fail = []
    for pname in get_projects():
        ok, fail = verify_project(pname)
        total_ok += ok
        total_fail.extend(f'{pname}/{f}' for f in fail)
    print(f'\n{total_ok}/{total_ok + len(total_fail)} passed')
    if total_fail:
        sys.exit(1)
