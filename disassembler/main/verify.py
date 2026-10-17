"""Byte-for-byte / semantic verification of generated assembly."""

import os
import subprocess
import sys
import tempfile

from lib.model import IS_CODE

from .options import APPS_DIR, EXACT_BYTES, PROJECT_ROOT
from .projects import (
    discover_binaries,
    get_projects,
    load_sidecar,
    sidecar_per_binary,
)


def byte_verify(name, orig_dir, rel_path, asm_dir, start_offset,
                exact_bytes=False, bitmap=None, sidecar_entry=None):
    asm_path = os.path.join(asm_dir, f'{name}.asm')
    orig_path = os.path.join(orig_dir, rel_path)

    if not os.path.exists(asm_path):
        print(f'{name}: SKIP (no .asm)')
        return False

    with tempfile.NamedTemporaryFile(suffix='.bin') as tmp:
        from lib.link import include_args
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-w-other',
             *include_args(asm_dir), '-o', tmp.name, asm_path],
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

        with open(orig_path, 'rb') as f:
            orig = f.read()
        with open(tmp.name, 'rb') as f:
            built = f.read()

    if len(orig) != len(built):
        print(f'{name} -> {rel_path}  [FAIL]  size {len(orig)} != {len(built)}')
        return False

    if exact_bytes:
        for i in range(len(orig)):
            if orig[i] != built[i]:
                print(f'{name} -> {rel_path}  [FAIL]  mismatch at 0x{i:04x}')
                return False
    else:
        from lib.verify.assemble import is_semantically_equivalent
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        if bitmap is None:
            with open(orig_path, 'rb') as f:
                data = f.read()
            from lib.classify import classify
            bitmap, _ = classify(
                data, start_offset, entry_points=set(),
                sidecar_entry=sidecar_entry,
            )

        if bitmap is not None:
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
                            print(f'{name} -> {rel_path}  [FAIL]  byte mismatch at '
                                  f'0x{off:04x} (data region)')
                            print_warnings()
                            return False
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
                            print(f'{name} -> {rel_path}  [FAIL]  no instruction at '
                                  f'0x{addr:04x}')
                            print_warnings()
                            return False

                        if addr != b_insn.address:
                            print(f'{name} -> {rel_path}  [FAIL]  alignment diverged at '
                                  f'0x{addr:04x} vs 0x{b_insn.address:04x}')
                            print_warnings()
                            return False

                        if o_insn.bytes != b_insn.bytes:
                            if not is_semantically_equivalent(
                                    bytes(o_insn.bytes),
                                    bytes(b_insn.bytes), addr):
                                print(f'{name} -> {rel_path}  [FAIL]  semantic '
                                      f'mismatch at 0x{addr:04x}')
                                print_warnings()
                                return False
        else:
            o_it = iter(md.disasm(orig, 0))
            b_it = iter(md.disasm(built, 0))
            while True:
                try:
                    o_insn = next(o_it)
                    b_insn = next(b_it)
                except StopIteration:
                    break

                i = o_insn.address
                if i != b_insn.address:
                    print(f'{name} -> {rel_path}  [FAIL]  alignment diverged at '
                          f'0x{i:04x} vs 0x{b_insn.address:04x}')
                    print_warnings()
                    return False

                if o_insn.bytes == b_insn.bytes:
                    continue

                if not is_semantically_equivalent(bytes(o_insn.bytes),
                                                   bytes(b_insn.bytes), i):
                    print(f'{name} -> {rel_path}  [FAIL]  semantic mismatch '
                          f'at 0x{i:04x}')
                    print_warnings()
                    return False

    print(f'{name} -> {rel_path}  [OK]')
    print_warnings()
    return True


def verify_project(project_name):
    project_dir = os.path.join(APPS_DIR, project_name)
    if not os.path.isdir(project_dir):
        return 0, []

    out_dir = os.path.join(PROJECT_ROOT, f'asm_{project_name}')
    sidecar = load_sidecar(project_name)
    bins = discover_binaries(project_dir)
    ok = 0
    fail = []
    for name, (rel_path, start_offset) in sorted(bins.items()):
        sidecar_entry = sidecar_per_binary(sidecar, name) if sidecar else None
        if byte_verify(name, project_dir, rel_path, out_dir, start_offset,
                       exact_bytes=EXACT_BYTES,
                       sidecar_entry=sidecar_entry):
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
