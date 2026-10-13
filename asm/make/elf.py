"""``make elf-rebuild`` — ELF/DWARF symbol output and C-fragment resplicing."""

import json
import os
import re
import shutil
import subprocess
import sys

from lib.dwarf_line import fix_elf as _fix_elf_debug_line
from lib.link import include_args
from main import discover_binaries

from .common import APPS, PROJECT, _main_exe, _nasm_build


# An image defines its own origin -- the virtual address of file offset 0 -- as
# ``VBASE``.  ELF has no ``vstart``, so the ELF build lays the section out from 0
# and the origin must be 0 for the ``+ VBASE`` equ values to agree with the
# section-relative labels.
_ORIGIN_EQU_RE = re.compile(r'^(\s*)VBASE\s+equ\b.*$')


def _force_origin_zero(lines):
    """Rewrite an image's own ``VBASE`` definition to 0 for the ELF build.

    This used to be a ``-DVBASE=0`` on the nasm command line, but an overlay
    includes the host source for its symbols and that include defines ``VBASE``
    for its own frame and clears it afterwards, so a command-line definition
    never reaches the overlay's own origin line.  Rewriting the prepared source
    is the same place the ``vstart`` line is blanked, and it leaves the host
    include's ``%define`` (a different spelling, and a different frame) alone.
    """
    return [_ORIGIN_EQU_RE.sub(r'\1VBASE equ 0', line) for line in lines]


def _elf_source_text(asm_path, entry_line=None, add_entry_symbol=False):
    """Prepare generated MZ assembly for ELF/DWARF symbol output."""
    with open(asm_path) as f:
        lines = f.read().splitlines()

    asm_root = os.path.dirname(os.path.abspath(asm_path))
    include_re = re.compile(r'^\s*%include\s+["\']([^"\']+)["\']')
    symbol_sources = []
    visited_sources = set()

    def collect_symbols(source_path):
        source_path = os.path.abspath(source_path)
        if source_path in visited_sources or not os.path.isfile(source_path):
            return
        visited_sources.add(source_path)
        with open(source_path) as f:
            source_lines = f.read().splitlines()
        symbol_sources.extend(source_lines)
        for source_line in source_lines:
            match = include_re.match(source_line)
            if not match:
                continue
            include_name = match.group(1)
            candidates = (
                os.path.join(asm_root, include_name),
                os.path.join(os.path.dirname(source_path), include_name),
            )
            for include_path in candidates:
                if os.path.isfile(include_path):
                    collect_symbols(include_path)
                    break

    collect_symbols(asm_path)

    # The origin line is ``org 0`` (drivers) or ``section .text vstart=VBASE``
    # (images with a known load address); ELF has no ``vstart``, so it is
    # blanked and the image's own ``VBASE`` is rewritten to 0 (the section is
    # laid out from 0, so the labels end up in the load image's own frame).
    org_line = next(
        (i for i, line in enumerate(lines)
         if line.strip().lower() in ('org 0', 'section .text vstart=vbase')),
        None,
    )
    header_line = next(
        (i for i, line in enumerate(lines) if 'header (' in line.lower()),
        None,
    )
    if org_line is None or header_line is None:
        raise ValueError(f'{asm_path}: expected generated MZ header and origin line')

    header_end = next(
        (
            i for i, line in enumerate(lines[header_line + 1:], header_line + 1)
            if re.match(r'\s*[A-Za-z_][A-Za-z0-9_]*\s+equ\b', line)
        ),
        None,
    )
    if header_end is None:
        raise ValueError(f'{asm_path}: could not locate code following MZ header')

    symbols = []
    for line in symbol_sources:
        match = re.match(r'\s*([A-Za-z_][A-Za-z0-9_]*)\s*:', line)
        if not match:
            match = re.match(r'\s*([A-Za-z_][A-Za-z0-9_]*)\s+equ\b', line)
        # ``VBASE`` is the ELF build's origin (rewritten to 0), not a symbol to
        # export.
        if match and match.group(1) not in symbols and match.group(1) != 'VBASE':
            symbols.append(match.group(1))
    needs_entry_symbol = (
        (entry_line is not None or add_entry_symbol) and '_start' not in symbols
    )
    if needs_entry_symbol:
        symbols.append('_start')

    # The ELF describes the DOS load image, which starts after the MZ header.
    # Replace header lines in place so DWARF line numbers still match ds.asm.
    header_slots = header_end - header_line
    declarations = [
        'global ' + ', '.join(symbols[i:i + 64])
        for i in range(0, len(symbols), 64)
    ]
    if len(declarations) > header_slots:
        raise ValueError(
            f'{asm_path}: MZ header block is too short for '
            f'{len(symbols)} ELF symbols'
        )

    lines[org_line] = ''
    lines = _force_origin_zero(lines)
    lines[header_line:header_end] = declarations + [
        '' for _ in range(header_slots - len(declarations))
    ]
    if entry_line is not None:
        if not 1 <= entry_line <= len(lines):
            raise ValueError(f'{asm_path}: invalid MZ entry source line {entry_line}')
        lines[entry_line - 1] = '_start: ' + lines[entry_line - 1].lstrip()
    return '\n'.join(lines) + '\n'


def _is_instruction_source_line(line):
    code = line.split(';', 1)[0].strip()
    if not code:
        return False
    code = re.sub(r'^[A-Za-z_@.?][A-Za-z0-9_@.?]*\s*:\s*', '', code)
    if not code:
        return False
    directive = re.match(
        r'^(?:%|times\b|org\b|bits\b|section\b|global\b|extern\b|'
        r'align\b|res[bwdq]\b|db\b|dw\b|dd\b|dq\b|dt\b|equ\b)',
        code, re.I,
    )
    return directive is None


def _source_has_label(asm_path, wanted_label):
    include_re = re.compile(r'^\s*%include\s+["\']([^"\']+)["\']', re.I)
    asm_root = os.path.dirname(os.path.abspath(asm_path))
    visited = set()

    def visit(source_path):
        source_path = os.path.realpath(source_path)
        if source_path in visited or not os.path.isfile(source_path):
            return False
        visited.add(source_path)
        with open(source_path) as source_file:
            source_lines = source_file.read().splitlines()
        for line in source_lines:
            if re.match(rf'\s*{re.escape(wanted_label)}\s*:', line, re.I):
                return True
            match = include_re.match(line)
            if not match:
                continue
            include_name = match.group(1)
            for candidate in (
                os.path.join(asm_root, include_name),
                os.path.join(os.path.dirname(source_path), include_name),
            ):
                if os.path.isfile(candidate):
                    if visit(candidate):
                        return True
                    break
        return False

    return visit(asm_path)


def _locate_address_line(asm_path, file_offset):
    """Return ``(source_path, line_number)`` of the instruction at *file_offset*.

    The generated listing carries the original file offset as a trailing
    ``; 0xADDR`` comment on every instruction, so the MZ entry can be located
    from the source directly.  This deliberately avoids ``addr2line``/the
    DWARF line table, which is unreliable once the include tree grows past the
    ELF line-table file-index limit.
    """
    include_re = re.compile(r'^\s*%include\s+["\']([^"\']+)["\']', re.I)
    addr_re = re.compile(r';\s*0x([0-9a-fA-F]+)\s*$')
    asm_root = os.path.dirname(os.path.abspath(asm_path))
    visited = set()

    def visit(source_path):
        source_path = os.path.realpath(source_path)
        if source_path in visited or not os.path.isfile(source_path):
            return None
        visited.add(source_path)
        with open(source_path) as source_file:
            source_lines = source_file.read().splitlines()
        for index, line in enumerate(source_lines):
            match = include_re.match(line)
            if match:
                include_name = match.group(1)
                for candidate in (
                    os.path.join(asm_root, include_name),
                    os.path.join(os.path.dirname(source_path), include_name),
                ):
                    if os.path.isfile(candidate):
                        found = visit(candidate)
                        if found is not None:
                            return found
                        break
                continue
            addr_match = addr_re.search(line)
            if addr_match and int(addr_match.group(1), 16) == file_offset:
                return (source_path, index + 1)
        return None

    return visit(asm_path)


def _nasm_elf_build(out_dir, name, entry_ip, load_offset=0x200):
    asm_path = os.path.join(out_dir, f'{name}.asm')
    build_out = os.path.join(out_dir, 'build_out')
    elf_dir = os.path.join(build_out, '.elf-rebuild')
    # The source mirror is generated and may contain a synthetic _start label
    # from a previous build. Recreate it so each pass starts from clean sources.
    shutil.rmtree(elf_dir, ignore_errors=True)
    os.makedirs(elf_dir, exist_ok=True)
    source_path = os.path.join(elf_dir, f'{name}.asm')
    elf_path = os.path.join(build_out, f'{name.upper()}.elf')
    tmp_elf = elf_path + '.tmp'
    build_succeeded = False

    try:
        cmd = [
            'nasm', '-O0', '-w-number-overflow', '-f', 'elf32', '-F', 'dwarf',
            *include_args(out_dir), '-o', tmp_elf, f'{name}.asm',
        ]

        def assemble(source_text):
            with open(source_path, 'w') as f:
                f.write(source_text)
            return subprocess.run(
                cmd, capture_output=True, text=True, cwd=elf_dir,
            )

        result = assemble(_elf_source_text(asm_path))
        if result.returncode != 0:
            print(f'  ELF BUILD FAIL: {name}.asm -> {os.path.basename(elf_path)}')
            for line in result.stderr.strip().split('\n'):
                print(f'    {line}')
            return result.returncode

        # Add a synthetic _start at the entry instruction. The entry is found
        # from the listing's ``; 0xADDR`` comments (plus the MZ header size)
        # rather than the DWARF line table, which is unreliable for large
        # include trees.
        if entry_ip:
            located = _locate_address_line(asm_path, entry_ip + load_offset)
            if located is None:
                print(
                    f'  ELF ENTRY MAP WARN: could not map MZ entry '
                    f'0x{entry_ip:x}; continuing without synthetic _start'
                )
            else:
                entry_source, entry_line = located
                root_source = os.path.realpath(asm_path)
                out_root = os.path.realpath(out_dir)
                try:
                    inside_out_root = os.path.commonpath((out_root, entry_source)) == out_root
                except ValueError:
                    inside_out_root = False

                if _source_has_label(asm_path, '_start'):
                    print(
                        '  ELF ENTRY MAP WARN: _start already exists; '
                        'keeping existing symbol and continuing'
                    )
                elif not inside_out_root:
                    print(
                        '  ELF ENTRY MAP WARN: entry source is outside generated '
                        'assembly; continuing without synthetic _start'
                    )
                else:
                    try:
                        with open(entry_source) as f:
                            entry_lines = f.read().splitlines()
                    except OSError:
                        entry_lines = []
                    if not 1 <= entry_line <= len(entry_lines) or not _is_instruction_source_line(entry_lines[entry_line - 1]):
                        print(
                            '  ELF ENTRY MAP WARN: entry maps to a non-instruction '
                            'source row; continuing without synthetic _start'
                        )
                    else:
                        if entry_source == root_source:
                            source_text = _elf_source_text(asm_path, entry_line)
                        else:
                            relative_source = os.path.relpath(entry_source, out_root)
                            entry_copy = os.path.join(elf_dir, relative_source)
                            os.makedirs(os.path.dirname(entry_copy), exist_ok=True)
                            entry_lines[entry_line - 1] = (
                                '_start: ' + entry_lines[entry_line - 1].lstrip()
                            )
                            with open(entry_copy, 'w') as f:
                                f.write('\n'.join(entry_lines) + '\n')
                            source_text = _elf_source_text(
                                asm_path, add_entry_symbol=True,
                            )

                        result = assemble(source_text)
                        if result.returncode != 0:
                            print(
                                f'  ELF ENTRY MAP WARN: synthetic _start assembly '
                                f'failed; keeping first-pass ELF'
                            )
                            for line in result.stderr.strip().split('\n'):
                                print(f'    {line}')
                            # Reassemble the clean first-pass source after the
                            # failed relabel attempt to restore the usable ELF.
                            if entry_source != root_source:
                                try:
                                    os.unlink(entry_copy)
                                except FileNotFoundError:
                                    pass
                            result = assemble(_elf_source_text(asm_path))
                            if result.returncode != 0:
                                print(f'  ELF BUILD FAIL: {name}.asm -> {os.path.basename(elf_path)}')
                                for line in result.stderr.strip().split('\n'):
                                    print(f'    {line}')
                                return result.returncode
        # NASM writes DW_LNS_set_file operands as a single byte, which mangles
        # the line table once the listing references >127 include files. Repair
        # the operand encoding before the ELF is used for source mapping.
        try:
            _fix_elf_debug_line(tmp_elf)
        except Exception as exc:  # never let a repair failure break the build
            print(f'  ELF LINE TABLE WARN: {exc}')
        os.replace(tmp_elf, elf_path)
        build_succeeded = True
        return 0
    finally:
        # GDB resolves source breakpoints by opening the path recorded in
        # DW_AT_comp_dir. Keep the generated, line-aligned source at that path
        # so absolute break-insert requests can resolve instead of staying
        # pending. The VS Code sourceFileMap still presents the original file.
        cleanup_paths = (tmp_elf,) if build_succeeded else (source_path, tmp_elf)
        for path in cleanup_paths:
            try:
                os.unlink(path)
            except FileNotFoundError:
                pass
        if not build_succeeded:
            shutil.rmtree(elf_dir, ignore_errors=True)


def _synthesize_locals(code, base, length, label):
    """Map compiled-code branch targets to ``@..<label>.lN`` names."""
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    targets = set()
    for insn in md.disasm(code[:length], base):
        for op in insn.operands:
            if op.type == CS_OP_IMM and base < op.imm < base + length:
                targets.add(op.imm)
    return {addr: f'@..{label}.l{i + 1}'
            for i, addr in enumerate(sorted(targets))}


def _load_render_context(app, binary):
    """Load the persisted build render maps, or ``None`` when absent.

    An older build tree has no context; resplice then falls back to the
    per-fragment synthesis it used before the maps were persisted.
    """
    from lib.renderctx import context_path, decode
    path = context_path(app, binary)
    if not os.path.isfile(path):
        return None
    with open(path) as context_file:
        return decode(json.load(context_file))


def _fragment_labels(label_records, start, end):
    """Select the build's label lines owned by a fragment span."""
    return [{'type': 'label', 'text': text, 'offset': offset}
            for offset, text in label_records if start <= offset < end]


def resplice_c(app, binary):
    """Recompile the C routine fragments of an already-built binary.

    This is the debug hot loop, not a verification pass: every routine that has
    a ``.c`` seed is recompiled with its recorded Aztec provenance and its
    ``<binary>/<label>.asm`` fragment is rewritten to match the C as it stands
    now.  The rewrite reuses the build's persisted render context
    (``.cache/render``, see :mod:`lib.renderctx`) so an unedited routine comes
    back byte-for-byte identical instead of dropping its resolved operand
    symbols (``bss_0d00``) and renumbering its local labels.  C and ASM edits
    are expected before a resplice, so an edited routine is *meant* to differ
    from the recovered original; ``make verify`` only matters once a full
    ``make build`` completes.

    The sole constraint is image layout: the routine's byte span is fixed (the
    master listing addresses code absolutely), so a compile that no longer fits
    its fragment is a hard error, and the bytes beyond the compiled code are
    preserved from the original image.  All other fragments -- including
    hand-edited non-C ones -- are left untouched, as is the master listing.  It
    needs the span/label sidecars a prior ``make build`` wrote, and is a no-op
    without them.
    """
    from lib.aztec import cache
    from lib.aztec.objread import fixup_width
    from lib.compare import (
        _c_bytes_to_records, _merge_label_records, _render_records,
    )

    out_dir = os.path.join(PROJECT, f'asm_{app}')
    dest = os.path.join(out_dir, binary)
    from lib.cachedirs import labels_dir, spans_dir
    spans_path = os.path.join(spans_dir(app),
                              f'{binary}_aztec_spans.json')
    labels_path = os.path.join(labels_dir(app),
                               f'{binary}_labels.json')
    manifest = cache.manifest_path(app, binary)
    if not all(os.path.isfile(p) for p in
               (spans_path, labels_path, manifest)):
        return
    with open(spans_path) as f:
        spans = json.load(f)
    with open(manifest) as f:
        entries = json.load(f)['functions']
    with open(labels_path) as f:
        label_map = {int(k): v for k, v in json.load(f).items()}
    context = _load_render_context(app, binary)
    bins = discover_binaries(os.path.join(APPS, app))
    with open(os.path.join(APPS, app, bins[binary][0]), 'rb') as f:
        data = f.read()

    count = 0
    for label, entry in entries.items():
        cpath = os.path.join(dest, f'{label}.c')
        span = spans.get(label)
        if not os.path.isfile(cpath) or not span:
            continue
        start, end = span
        span_len = end - start
        with open(cpath) as f:
            text = f.read()
        func = cache.compile_source(app, label, entry, text)

        compiled = bytearray(func.code)
        for fx in func.fixups:
            n = min(fixup_width(fx.kind), len(compiled) - fx.offset)
            if n <= 0:
                continue
            chunk = data[start + fx.offset:start + fx.offset + n]
            if len(chunk) < n:
                chunk = chunk + bytes(n - len(chunk))
            compiled[fx.offset:fx.offset + n] = chunk

        # Overlay the compiled code onto the original span.  The fragment's
        # span is fixed because the master listing addresses code absolutely.
        # A routine whose recovered code is *longer* than its own fragment (its
        # tail lies in a neighbouring fragment) keeps that tail there, so only
        # the part inside this fragment is rewritten.  This is defensive only:
        # ``_select_split_ranges`` gives a C routine its full recovered extent,
        # so it should not fire (an old build tree can still trigger it).
        # Otherwise the routine's recorded code length is NOP-padded
        # so an edited-but-shorter routine keeps its byte count, while the tail
        # beyond it (data, padding) survives untouched.
        original = entry.get('original_length') or len(compiled)
        spilled = len(compiled) > span_len
        if spilled and len(compiled) > original:
            # The routine *grew* past its fragment; the overflow would have to
            # be written into a neighbouring fragment, which only a full build
            # can relayout.
            raise SystemExit(
                f'error: {label}: compiled {len(compiled)} bytes no longer fits '
                f'its {span_len}-byte fragment (was {original}); run '
                f'"make build {app}"')
        if spilled:
            print(f'  resplice {app}/{binary}: {label}: {len(compiled)} compiled '
                  f'bytes span the {span_len}-byte fragment; shared tail left '
                  f'to the neighbouring fragment')
        write_len = min(len(compiled), span_len)
        final = bytearray(data[start:end])
        final[:write_len] = compiled[:write_len]
        code_len = span_len if spilled else min(max(len(compiled), original),
                                                span_len)
        if write_len < code_len:
            final[write_len:code_len] = b'\x90' * (code_len - write_len)

        if context is not None:
            # Re-render with the build's own maps so an unedited fragment comes
            # back byte-for-byte identical (resolved operand symbols and local
            # label numbering included), and an edited one keeps that fidelity.
            local_labels = context['local_labels']
            label_records = _fragment_labels(
                context['label_records'], start, end)
            data_labels = context['data_labels']
            mem_symbols = context['mem_symbols']
            mem_equ = context['mem_equ']
            foreign_label_map = context['foreign_label_map']
            immediate_labels = context['immediate_labels']
            exact_bytes = context['exact_bytes']
        else:
            # No persisted context (e.g. an older build tree): fall back to the
            # per-fragment synthesis this hot loop used before the maps existed.
            local_labels = _synthesize_locals(
                bytes(final), start, code_len, label)
            label_records = [{'type': 'label', 'text': f'{label}:',
                              'offset': start}]
            label_records.extend(
                {'type': 'label', 'text': f'{name}:', 'offset': addr}
                for addr, name in sorted(label_map.items())
                if start < addr < end and isinstance(name, str))
            label_records.extend(
                {'type': 'label', 'text': f'{name}:', 'offset': addr}
                for addr, name in sorted(local_labels.items()))
            data_labels = mem_symbols = mem_equ = None
            foreign_label_map = immediate_labels = None
            exact_bytes = False
        records = _c_bytes_to_records(
            bytes(final), start, label_map, local_labels, foreign_label_map,
            immediate_labels, exact_bytes=exact_bytes, data_labels=data_labels,
            mem_symbols=mem_symbols, mem_equ=mem_equ)
        records = _merge_label_records(records, label_records)
        fragment = '\n'.join(_render_records(records, data, True)) + '\n'
        with open(os.path.join(dest, f'{label}.asm'), 'w') as f:
            f.write(fragment)
        count += 1
    if count:
        print(f'  resplice {app}/{binary}: {count} C routine(s) from .c')


def cmd_elf_rebuild(app, binary=None):
    """Full rebuild of the whole game from the current sources, then ELF.

    ``asm_<project>`` is the source of truth: this does *not* regenerate it from
    the original binaries (that would discard edits).  Instead it recompiles the
    edited C seeds, runs the pre-NASM link step, and assembles **every** binary
    -- so editing the host moves the overlays too -- before emitting DWARF for
    *binary* (or the MZ host when *binary* is omitted).  See ``plan.md`` D7.0c.
    """
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if not bins:
        print(f'{app}: no binaries found')
        sys.exit(1)
    if binary is None:
        binary, _ = _main_exe(out_dir, bins)
        if binary is None:
            print(f'{app}: no binary to emit ELF for')
            sys.exit(1)
        targets = sorted(bins)
    else:
        if binary not in bins:
            print(f'Unknown binary "{binary}" in {app}')
            print(f'Known: {", ".join(sorted(bins))}')
            sys.exit(1)
        targets = [binary]

    asm_path = os.path.join(out_dir, f'{binary}.asm')
    if not os.path.isfile(asm_path):
        print(f'{asm_path} not found; run "make build {app}" first')
        sys.exit(1)

    # 1) Recompile the edited C seeds.  A binary with no ``.c`` is a no-op.
    for name in targets:
        resplice_c(app, name)

    # 2) Assemble every binary from the current sources (overlays include the
    #    host source for its symbols, so host edits reach them directly).
    failed = []
    for name, (rel_path, _start_offset) in sorted(bins.items()):
        if _nasm_build(out_dir, name, rel_path) != 0:
            failed.append(name)
    if failed:
        print(f'elf-rebuild {app}: {len(set(failed))} binary(ies) failed to build')
        sys.exit(1)

    # 4) Emit ELF/DWARF for the selected binary.
    rel_path, start_offset = bins[binary]
    if rel_path.upper().endswith('.EXE') and start_offset == 0x200:
        exe_path = os.path.join(out_dir, 'build_out', rel_path)
        with open(exe_path, 'rb') as f:
            header = f.read(0x18)
        entry_ip = int.from_bytes(header[0x14:0x16], 'little')
        load_offset = int.from_bytes(header[0x08:0x0a], 'little') * 16
        if _nasm_elf_build(out_dir, binary, entry_ip, load_offset) != 0:
            sys.exit(1)
        print(
            f'elf-rebuild {app}/{binary} -> {rel_path} + '
            f'{binary.upper()}.elf  [OK]'
        )
    else:
        # Full rebuild done; overlay/driver DWARF is D7.0d.
        print(
            f'elf-rebuild {app}/{binary} -> {rel_path}  [OK]  '
            f'(no ELF yet: overlay/driver DWARF is D7.0d)'
        )
