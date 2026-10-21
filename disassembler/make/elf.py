"""``make elf-rebuild`` — ELF/DWARF symbol output and C-fragment resplicing."""

import difflib
import hashlib
import json
import os
import re
import subprocess
import sys
import tempfile

from lib import routine_source
from lib.autogen import marker_for, stamp, write_text
from lib.compare.interrupts import _annotate_interrupts
from lib.cachedirs import src_dir
from lib.dwarf_line import fix_elf as _fix_elf_debug_line
from lib.link import include_args
from lib.shared import FOLDER
from lib.symtab import Symbol
from main.projects import discover_binaries

from main.build import nasm_binary

from .common import APPS, PROJECT, _extra_flags, _main_exe


def _elf_globals(asm_path):
    """``global`` lines exporting every label and equ of *asm_path*'s tree."""
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

    symbols = []
    for line in symbol_sources:
        match = re.match(r'\s*([A-Za-z_][A-Za-z0-9_]*)\s*:', line)
        if not match:
            match = re.match(r'\s*([A-Za-z_][A-Za-z0-9_]*)\s+equ\b', line)
        # ``VBASE`` is the ELF build's origin (0), not a symbol to export.
        if match and match.group(1) not in symbols and match.group(1) != 'VBASE':
            symbols.append(match.group(1))
    return ['global ' + ', '.join(symbols[i:i + 64])
            for i in range(0, len(symbols), 64)]


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


def _nasm_elf_build(out_dir, name, entry_ip):
    """Assemble ``<name>.asm`` in place as ELF/DWARF for the debugger.

    The generated source itself is assembled, so the DWARF names the files in
    ``src_<project>``.  ``ELF_BUILD`` drops the MZ header and zeroes the origin
    (ELF has no ``vstart``; the ELF describes the load image), the ``global``
    lines come in through a pre-include, and ``_start`` is added at the MZ entry.
    """
    asm_path = os.path.join(out_dir, f'{name}.asm')
    elf_path = os.path.join(out_dir, 'build_out', f'{name.upper()}.elf')
    tmp_elf = elf_path + '.tmp'
    try:
        with tempfile.TemporaryDirectory() as scratch:
            globals_path = os.path.join(scratch, 'globals.inc')
            with open(globals_path, 'w') as f:
                f.write('\n'.join(_elf_globals(asm_path)) + '\n')
            result = subprocess.run(
                ['nasm', '-O0', '-w-number-overflow', '-f', 'elf32', '-F', 'dwarf',
                 '-DELF_BUILD', '-p', globals_path, *include_args(out_dir),
                 '-o', tmp_elf, f'{name}.asm'],
                capture_output=True, text=True, cwd=out_dir,
            )
        if result.returncode != 0:
            print(f'  ELF BUILD FAIL: {name}.asm -> {os.path.basename(elf_path)}')
            for line in result.stderr.strip().split('\n'):
                print(f'    {line}')
            return result.returncode
        # The ELF's ``.text`` is the load image, so the entry is at ``e_ip``.
        if entry_ip and not _source_has_label(asm_path, '_start'):
            subprocess.run(
                ['objcopy', f'--add-symbol=_start=.text:0x{entry_ip:x},'
                 'global,function', tmp_elf],
                check=True,
            )
        # NASM writes DW_LNS_set_file operands as a single byte, which mangles
        # the line table once the listing references >127 include files. Repair
        # the operand encoding before the ELF is used for source mapping.
        try:
            _fix_elf_debug_line(tmp_elf)
        except Exception as exc:  # never let a repair failure break the build
            print(f'  ELF LINE TABLE WARN: {exc}')
        os.replace(tmp_elf, elf_path)
        return 0
    finally:
        try:
            os.unlink(tmp_elf)
        except FileNotFoundError:
            pass


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
    return {addr: Symbol.local(label, addr, i + 1)
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


def _segment_model(app, bins, binary, data, data_names):
    """*binary*'s segment model as the build makes it, or None.

    The data segment's canonical names and bytes come from it; the DS names
    the pipeline learned (``data_names``) come from the build's render context.
    """
    from lib.segments import SegmentError, from_binary
    from lib.sidecar.binary import per_binary
    from lib.sidecar.loader import load as load_sidecar
    from main.projects import _build_host_model
    sidecar = load_sidecar(app)
    binary_type = (per_binary(sidecar, binary) if sidecar else {}).get('type')
    host = (_build_host_model(os.path.join(APPS, app), bins, sidecar)
            if binary_type == 'aztec_overlay' else None)
    try:
        model = from_binary(data, binary_type, bins[binary][1], host=host)
    except SegmentError:
        return None
    model.data_names = dict(data_names or {})
    return model


def _leading_lines(apath, label, lead):
    """The fragment's text before its root *label*: the module's leading data,
    as the build rendered it from the disassembly ('' when *lead* is 0)."""
    if not lead:
        return ''
    with open(apath) as f:
        lines = f.read().split('\n')
    if lines and lines[0].rstrip() == marker_for(apath):
        lines = lines[1:]
    if f'{label}:' not in lines:
        raise SystemExit(f'error: {apath}: no {label}: line after the '
                         f'module\'s leading data; run "make build"')
    return '\n'.join(lines[:lines.index(f'{label}:')]) + '\n'


def _fragment_labels(label_records, start, end):
    """Select the build's label lines owned by a fragment span."""
    return [{'type': 'label', 'text': text, 'name': name, 'offset': offset}
            for offset, name, text in label_records if start <= offset < end]


def _report_linked(app, binary, label, linked):
    """Print what the linker could not place symbolically."""
    where = f'resplice {app}/{binary}: {label}'
    for addr, text, built, want in linked.failed:
        print(f'  {where}: 0x{addr:x} {text!r} assembles to {built}, '
              f'compiled bytes are {want}')
    for site in linked.unmatched:
        print(f'  {where}: relocation at +0x{site:x} matched no operand')


def resplice_c(app, binary, check_only=False):
    """Recompile the C (and Manx assembly) routine fragments of a built binary.

    Every ``<binary>/<label>.c`` or ``.s`` (:mod:`lib.routine_source`) is
    rebuilt (with its recorded Aztec provenance, or the binary's default for a
    routine with none) and its ``<binary>/<label>.asm`` fragment is rewritten
    to match.  The rewrite
    reuses the build's persisted render context (``.cache/render``, see
    :mod:`lib.renderctx`) so an unedited routine comes back byte-for-byte
    identical.

    The C is gated (:mod:`lib.compare.cgate`): it must reproduce the original
    routine's bytes -- same length, every instruction identical or, unless
    ``--exact-bytes``, semantically equivalent.  A mismatch prints a per-byte
    report, leaves that fragment as it was and exits 1; ``--allow-diff``
    restores the old lenient splice.  A source with no matching asm is an
    error.
    With *check_only* nothing is written: a fragment on disk that differs from
    the regenerated one prints a diff and exits 1.

    The sole constraint is image layout: the routine's byte span is fixed (the
    master listing addresses code absolutely), so a compile that no longer fits
    its fragment is a hard error, and the bytes beyond the compiled code are
    preserved from the original image.  All other fragments -- including
    hand-edited non-C ones -- are left untouched, as is the master listing.  It
    needs the span/label sidecars a prior ``make build`` wrote, and is a no-op
    without them.
    """
    from lib.aztec import cache, relink
    from lib.aztec.modules import entry_for
    from lib.aztec.objread import fixup_width
    from lib.compare.cgate import check_against_original
    from lib.compare.coverrides import (
        _c_bytes_to_records,
        _merge_label_records,
        symbol_index,
    )
    from lib.compare.records import _label_record
    from lib.compare.render import _render_records
    from lib.symtab import Kind

    out_dir = src_dir(app, PROJECT)
    dest = os.path.join(out_dir, binary)
    from lib.cachedirs import labels_dir, render_dir, spans_dir
    from lib.renderctx import context_path
    spans_path = os.path.join(spans_dir(app),
                              f'{binary}_aztec_spans.json')
    labels_path = os.path.join(labels_dir(app),
                               f'{binary}_labels.json')
    manifest = cache.manifest_path(app, binary)
    if not all(os.path.isfile(p) for p in (spans_path, labels_path)):
        return
    with open(spans_path) as f:
        spans = json.load(f)
    # A binary with no recovered library routine has no manifest; its C
    # (a shared routine's, say) all takes the default provenance.
    entries = {}
    if os.path.isfile(manifest):
        with open(manifest) as f:
            entries = json.load(f)['functions']
    from lib.cross_ref import read_label_json
    label_map = read_label_json(labels_path)
    context = _load_render_context(app, binary)
    bins = discover_binaries(os.path.join(APPS, app))
    with open(os.path.join(APPS, app, bins[binary][0]), 'rb') as f:
        data = f.read()
    index = image_base = None
    segments = None
    if context is not None:
        segments = _segment_model(app, bins, binary, data,
                                  context['data_names'])
        image_base = (bins[binary][1]
                      - (getattr(segments, 'load_offset', 0) or 0))
        index = symbol_index(
            label_map, context['foreign_label_map'], context['data_labels'],
            {**context['mem_equ'], **context['geometry']}, data, segments,
            image_base)

    # A binary's sources sit in its folder or, with sidecar ``bands``, in a
    # band folder beneath it (``ds/game/x.asm``).  ``data/`` holds data
    # objects, whose vendor .c the build checks (main.aztec._data_sources).
    folders = [dest] + sorted(
        os.path.join(dest, d) for d in (os.listdir(dest)
                                        if os.path.isdir(dest) else ())
        if d != 'data' and os.path.isdir(os.path.join(dest, d)))
    own_dir = {}
    own_src = {}
    for folder in folders:
        for name in os.listdir(folder):
            if name.endswith(('.asm',) + routine_source.SUFFIXES):
                own_dir.setdefault(routine_source.stem(name), folder)
        for label, name in routine_source.sources_in(folder).items():
            own_src.setdefault(label, name)
    # Sources shared between binaries live in shared/ beside their .asm
    # (lib.shared).
    shared_dir = os.path.join(out_dir, FOLDER)
    shared_src = routine_source.sources_in(shared_dir)
    def has_own_asm(label):
        # a same-named routine owned by this binary is not the shared one
        return os.path.exists(os.path.join(own_dir.get(label, dest),
                                           label + '.asm'))

    c_labels = set(own_src) | {label for label in shared_src
                               if label in spans and not has_own_asm(label)}
    c_labels = sorted(c_labels)

    def where(label, suffix):
        shared = os.path.join(shared_dir, label + suffix)
        own = os.path.join(own_dir.get(label, dest), label + suffix)
        if has_own_asm(label):
            return own
        return shared if os.path.exists(shared) else own

    def source_of(label):
        name = own_src.get(label) or shared_src[label]
        return where(label, os.path.splitext(name)[1])

    orphans = [source_of(label) for label in c_labels
               if label not in spans
               or not os.path.isfile(where(label, '.asm'))]
    if orphans:
        raise SystemExit('error: source file(s) with no matching asm '
                         'routine: ' + ', '.join(orphans))

    exact_here = ('--exact-bytes' in _extra_flags()
                  or bool(context and context['exact_bytes']))
    lenient = '--allow-diff' in _extra_flags()
    failures = []
    mismatches = []
    sources = []
    count = 0
    picked = []
    # A routine whose inputs and output fragment are unchanged since its last
    # resplice is skipped (no compile, gate or rewrite).
    stamps_path = os.path.join(render_dir(app), f'{binary}_resplice.json')
    try:
        with open(stamps_path) as f:
            stamps = json.load(f)
    except (OSError, ValueError):
        stamps = {}
    # The data-owner gate is part of the resplice result; an old stamp written
    # before it existed must not skip the source that gate needs to check.
    env = hashlib.sha1(repr((exact_here, lenient, 'data-owner-v1')).encode())
    for path in (labels_path, spans_path, manifest, context_path(app, binary)):
        if os.path.isfile(path):
            with open(path, 'rb') as f:
                env.update(f.read())
    for label in c_labels:
        cpath = source_of(label)
        start, end = spans[label]
        span_len = end - start
        with open(cpath) as f:
            text = f.read()
        # A vendor module's fragment is named after its source file
        # (aztec_croot); anything else is a hand-written routine's.
        module = entry_for(app, label, entries)
        entry = module or cache.default_entry(label, app,
                                              os.path.splitext(cpath)[1])
        apath = where(label, '.asm')
        # The tool and flags too: the entry carries none, they come from the
        # sidecar's ``compiler_flags`` by name.
        tool = cache._tool(app, binary, label, entry)
        in_stamp = hashlib.sha1(
            (env.hexdigest() + json.dumps(entry, sort_keys=True)
             + repr(tool) + text)
            .encode('utf-8', 'replace')).hexdigest()
        prev = stamps.get(label)
        if prev and prev['in'] == in_stamp and os.path.isfile(apath):
            with open(apath, 'rb') as f:
                if hashlib.sha1(f.read()).hexdigest() == prev['out']:
                    continue
        compiled_module, func = cache.compile_source_module(
            app, binary, label, entry, text)
        if compiled_module.data:
            # The data gate below owns named objects by address; a routine's
            # module data is still the same source even when someone edits a
            # table in the middle of it (``modes``/``Cbuffs``).
            sources.append({
                'path': os.path.relpath(cpath, out_dir),
                'data': compiled_module.data,
                'relocations': compiled_module.data_relocations,
                'symbols': {fx.symbol for fx in func.fixups if fx.symbol},
                'externals': compiled_module.externals,
            })
        spans_here = cache.data_spans(app, binary, label, entry, text)
        # The .c compiles to exactly its fragment.  One that no longer does is
        # a real edit that moves code, which only a full build can relayout.
        if len(func.code) != span_len and not lenient:
            raise SystemExit(
                f'error: {label}: {os.path.relpath(cpath, out_dir)} compiles '
                f'to {len(func.code)} bytes, its fragment is {span_len}; run '
                f'"make build {app}"')
        # A vendor module's bytes before its first routine are data the build
        # rendered from the disassembly; they stay as the fragment has them.
        first = start
        if module is not None:
            first = min((addr for addr, name in label_map.items()
                         if start <= addr < end
                         and getattr(name, 'role', None) == 'aztec'),
                        default=start)
        lead = first - start

        linked = None
        if index is not None:
            # Resolve the C's own relocations against the asm namespace; the
            # original image supplies only the ones the linker does not model.
            labels_in = [(offset, name)
                         for offset, name, _ in context['label_records']
                         if start <= offset < end]
            labels_at = {offset: name
                         for offset, name, _ in context['label_records']}
            for offset, name in context.get('table_labels', {}).items():
                labels_at.setdefault(offset, name)
            try:
                linked = relink.link(label, start, func, index, data,
                                     labels_in, labels_at)
            except relink.RelinkError as exc:
                raise SystemExit(f'error: {exc}')
            compiled = linked.code
        else:
            compiled = bytearray(func.code)
            for fx in func.fixups:
                n = min(fixup_width(fx.kind), len(compiled) - fx.offset)
                if n <= 0:
                    continue
                chunk = data[start + fx.offset:start + fx.offset + n]
                if len(chunk) < n:
                    chunk = chunk + bytes(n - len(chunk))
                compiled[fx.offset:fx.offset + n] = chunk

        if not lenient:
            report = check_against_original(
                label, start, data[start:end], compiled, exact=exact_here)
            if report:
                failures.extend(report)
                continue

        # Overlay the compiled code onto the original span (an --allow-diff
        # compile shorter than its fragment is NOP-padded to keep its size).
        final = bytearray(data[start:end])
        write_len = min(len(compiled), span_len)
        final[:write_len] = compiled[:write_len]
        final[write_len:] = b'\x90' * (span_len - write_len)
        code_len = span_len

        if context is not None:
            # Re-render with the build's own maps so an unedited fragment comes
            # back byte-for-byte identical (resolved operand symbols and local
            # label numbering included), and an edited one keeps that fidelity.
            local_labels = context['local_labels']
            label_records = _fragment_labels(
                context['label_records'], start, end)
            if linked is not None:
                # Branch labels follow the code the compiler produced.
                label_records = ([r for r in label_records
                                  if r['name'].kind is not Kind.LOCAL]
                                 + linked.local_records)
            data_labels = context['data_labels']
            mem_symbols = context['mem_symbols']
            mem_equ = context['mem_equ']
            foreign_label_map = context['foreign_label_map']
            immediate_labels = context['immediate_labels']
            exact_bytes = context['exact_bytes']
            # A C ``switch`` table renders as the build's own record.
            tables = [r for r in context.get('jump_tables', ())
                      if start + lead <= r['start'] and r['end'] <= end]
            label_addrs = {name: offset for offset, name, _
                           in context['label_records']}
        else:
            # No persisted context (e.g. an older build tree): fall back to the
            # per-fragment synthesis this hot loop used before the maps existed.
            local_labels = _synthesize_locals(
                bytes(final), start, code_len, label)
            label_records = [_label_record(label_map.get(start, label), start)]
            label_records.extend(
                _label_record(name, addr)
                for addr, name in sorted(label_map.items())
                if start < addr < end and isinstance(name, str))
            label_records.extend(
                _label_record(name, addr)
                for addr, name in sorted(local_labels.items()))
            data_labels = mem_symbols = mem_equ = None
            foreign_label_map = immediate_labels = None
            exact_bytes = False
            tables, label_addrs = [], None
        table_starts = {(r['start'], r['label']) for r in tables}
        label_records = [r for r in label_records
                         if (r['offset'], r['name']) not in table_starts]
        records = _c_bytes_to_records(
            bytes(final), start, label_map, local_labels, foreign_label_map,
            immediate_labels, exact_bytes=exact_bytes, data_labels=data_labels,
            mem_symbols=mem_symbols, mem_equ=mem_equ, image_base=image_base,
            linked=linked, skip=lead,
            data_spans=[*spans_here, *((r['start'] - start, r['end'] - start)
                                       for r in tables)],
            label_offsets=[r['offset'] for r in label_records],
            jump_tables=tables, label_addrs=label_addrs)
        head = _leading_lines(apath, str(label_map.get(first, label)), lead)
        if lead:
            # The leading lines already carry the labels up to the root.
            kept = set(head.split('\n'))
            label_records = [r for r in label_records
                             if r['offset'] >= start + lead
                             and r['text'] not in kept]
            if linked is not None:
                linked.consumed.update(s for s in linked.refs if s < lead)
        # The build annotates ``int`` calls after its splice (lib.compare.verify).
        _annotate_interrupts(records)
        if linked is not None:
            _report_linked(app, binary, label, linked)
        records = _merge_label_records(records, label_records)
        fragment = (head + '\n'.join(_render_records(records, data, True)) + '\n')
        if os.path.dirname(apath) == shared_dir:
            # Shared by several binaries: no one binary's addresses.
            from lib.shared import neutral
            fragment = neutral(fragment)
        if check_only:
            # The fragment on disk is the source of truth: it must already be
            # exactly what the C regenerates, never rewritten to match.
            expected = stamp(fragment, apath)
            with open(apath) as f:
                on_disk = f.read()
            if on_disk != expected:
                rel = os.path.relpath(apath, out_dir)
                diff = list(difflib.unified_diff(
                    on_disk.splitlines(), expected.splitlines(),
                    f'{rel} (on disk)',
                    f'{rel} (from {os.path.basename(cpath)})',
                    lineterm=''))
                if len(diff) > 40:
                    diff = diff[:40] + [f'... ({len(diff) - 40} more lines)']
                mismatches.append('\n'.join(diff))
                continue
        else:
            # Regenerated from the C, so it stays an auto-generated file
            # (``make clean`` removes it, a human takeover would not be
            # rewritten).
            write_text(apath, fragment)
        with open(apath, 'rb') as f:
            stamps[label] = {'in': in_stamp,
                             'out': hashlib.sha1(f.read()).hexdigest()}
        count += 1
        picked.append(os.path.relpath(cpath, out_dir))
    if sources:
        from lib.aztec.dataowners import DataOwnerError, validate as validate_data
        try:
            validate_data(segments, data, sources)
        except DataOwnerError as exc:
            raise SystemExit(f'error: {exc}') from exc
    os.makedirs(os.path.dirname(stamps_path), exist_ok=True)
    with open(stamps_path, 'w') as f:
        json.dump(stamps, f)
    if failures:
        print(f'resplice {app}/{binary}: C does not reproduce the original:',
              file=sys.stderr)
        print('\n'.join(failures), file=sys.stderr)
        raise SystemExit(1)
    if mismatches:
        print(f'resplice {app}/{binary}: asm on disk differs from what its C '
              f'regenerates (not written; fix the .asm or its .c/.s, or run '
              f'"make build {app}"):', file=sys.stderr)
        print('\n'.join(mismatches), file=sys.stderr)
        raise SystemExit(1)
    if count:
        verb = 'verified against' if check_only else 'from'
        print(f'  resplice {app}/{binary}: {count} routine(s) {verb} '
              '.c/.s')
        for name in picked:
            print(f'    {name}')


def cmd_elf_rebuild(app=None, binary=None, all_projects=()):
    """``make elf-rebuild [PROJECT [BIN]]``: all projects, or just one."""
    for project in ([app] if app else all_projects):
        _elf_rebuild_one(project, binary)


def _elf_rebuild_one(app, binary=None):
    """Full rebuild of the whole game from the current sources, then ELF.

    ``src_<project>`` is the source of truth: this does *not* regenerate it from
    the original binaries (that would discard edits).  Instead it recompiles the
    edited C seeds, runs the pre-NASM link step, and assembles **every** binary
    -- so editing the host moves the overlays too -- before emitting DWARF for
    *binary* (or the MZ host when *binary* is omitted).  See ``plan.md`` D7.0c.
    """
    app_dir = os.path.join(APPS, app)
    out_dir = src_dir(app, PROJECT)
    bins = discover_binaries(app_dir)
    if not bins:
        print(f'{app}: no binaries found')
        sys.exit(1)
    if binary is None:
        binary, _ = _main_exe(out_dir, bins)
        if binary is None:
            print(f'{app}: no binary to emit ELF for')
            sys.exit(1)
    else:
        if binary not in bins:
            print(f'Unknown binary "{binary}" in {app}')
            print(f'Known: {", ".join(sorted(bins))}')
            sys.exit(1)

    asm_path = os.path.join(out_dir, f'{binary}.asm')
    if not os.path.isfile(asm_path):
        print(f'{asm_path} not found; run "make build {app}" first')
        sys.exit(1)

    # 1) Recompile the edited C seeds of every binary, since step 2 assembles
    #    them all.  A binary with no ``.c`` is a no-op.
    for name in sorted(bins):
        resplice_c(app, name, check_only=True)

    # 2) Assemble every binary from the current sources (overlays include the
    #    host source for its symbols, so host edits reach them directly).
    failed = []
    for name, (rel_path, _start_offset) in sorted(bins.items()):
        if nasm_binary(out_dir, name, rel_path) != 0:
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
        if _nasm_elf_build(out_dir, binary, entry_ip) != 0:
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
