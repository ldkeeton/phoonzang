#!/usr/bin/env python3
"""Companion to Makefile — parallel asm gen, NASM build, asset copy, check/run.

Usage (from asm/):
  make                     show help
  make all                 all projects serially
  make build PROJECT [BIN] asm + nasm + assets for one project or binary
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT         run game in dosbox
  make verify [PROJECT...] verify one or all projects
  make clean [PROJECT...]  clean one or all projects
  make rebuild PROJECT BIN nasm-only rebuild of one binary
  make elf-rebuild PROJECT BIN rebuild DOS EXE plus ELF/DWARF symbols
  make delta PROJECT BIN          compare original and edited assembly layouts

Env:
  EXTRA_FLAGS              space-separated flags forwarded to main.py:
                              --exact-bytes     strict byte-accurate mode
                              --detailed-timings full-precision phase timings
                              --no-show-offsets suppress instruction offsets
  EXACT_FLAG (deprecated)  same as EXTRA_FLAGS=--exact-bytes
"""

import json
import os
import re
import shutil
import subprocess
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed

PROJECT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ASM = os.path.dirname(os.path.abspath(__file__))
APPS = os.path.join(PROJECT, 'apps')
JOBS = os.cpu_count() or 4

sys.path.insert(0, ASM)
from main import discover_binaries, load_whitelist, verify_all, clean_all, verify_project
from lib.report import STATS_DIR, BASELINE_DIR, clear_stats, clear_project_stats, list_project_dirs
from lib.cross_ref import detect as detect_cross_refs, read_label_json, write_label_json
from lib.delta import (
    analyze_delta, parse_nm_symbols, write_address_inventory, write_delta,
)


# ── helpers ─────────────────────────────────────────────────────────────────

def _apps():
    whitelist = load_whitelist()
    for d in sorted(os.listdir(APPS)):
        p = os.path.join(APPS, d)
        if os.path.isdir(p) and (whitelist is None or d in whitelist):
            yield d


def _run(*args):
    return subprocess.run(args, capture_output=True, text=True)


def _extra_flags():
    """Return list of extra CLI flags to forward to main.py based on env."""
    flags = []
    val = os.environ.get('EXTRA_FLAGS', '')
    if val:
        flags.extend(val.split())
    # backward compat: EXACT_FLAG
    old = os.environ.get('EXACT_FLAG', '')
    if old == '--exact-bytes' and '--exact-bytes' not in flags:
        flags.append('--exact-bytes')
    return flags


def _asm_one(app, binary, extra_args=None):
    cmd = [sys.executable, os.path.join(ASM, 'main.py'), app, binary]
    cmd[3:3] = _extra_flags()
    if extra_args:
        cmd.extend(extra_args)
    r = _run(*cmd)
    for line in r.stdout.strip().split('\n'):
        print(line)
    if r.returncode != 0 and r.stderr.strip():
        for line in r.stderr.strip().split('\n'):
            print(f'  {line}', file=sys.stderr)
    return r.returncode


def _nasm_build(out_dir, name, rel_path):
    asm_path = os.path.join(out_dir, f'{name}.asm')
    bin_path = os.path.join(out_dir, 'build_out', rel_path)
    os.makedirs(os.path.dirname(bin_path), exist_ok=True)
    r = _run('nasm', '-O0', '-f', 'bin', '-w-number-overflow',
             f'-I{out_dir}/', '-o', bin_path, asm_path)
    if r.returncode != 0:
        print(f'  BUILD FAIL: {name}.asm -> {rel_path}')
        for line in r.stderr.strip().split('\n'):
            print(f'    {line}')
    return r.returncode


def _main_exe(out_dir, bins):
    """Return (binary_name, rel_path) of the main executable for a project."""
    for name in sorted(bins):
        rel_path = bins[name][0]
        if rel_path.upper().endswith('.EXE'):
            return name, rel_path
    # fallback
    for name in sorted(bins):
        return name, bins[name][0]
    return None, None


def _copy_assets(app_dir, build_out):
    os.makedirs(build_out, exist_ok=True)
    for entry in sorted(os.listdir(app_dir)):
        src = os.path.join(app_dir, entry)
        dst = os.path.join(build_out, entry)
        if os.path.isfile(src):
            shutil.copy2(src, dst)
        elif os.path.isdir(src):
            shutil.copytree(src, dst, dirs_exist_ok=True)


def _prepare_cross_ref_sources(app, app_dir, out_dir, bins, cross_refs,
                               process_sources=None):
    source_names = {src for refs in cross_refs.values() for _, src in refs}
    if process_sources is None:
        process_sources = source_names

    if cross_refs:
        print(f'  Cross-binary references detected: {len(cross_refs)} consumers')
        for name in sorted(source_names):
            print(f'  Source binary: {name}')

    for src_name in sorted(source_names & set(bins.keys()) & process_sources):
        print(f'  Processing source: {src_name}')
        if _asm_one(app, src_name, ['--export-labels']) != 0:
            print(f'  FAILED: {src_name}')

    # Inject synthetic dispatch labels for cross-binary targets.
    if cross_refs:
        for src_name in source_names & set(bins.keys()):
            json_path = os.path.join(out_dir, f'{src_name}_labels.json')
            if not os.path.exists(json_path):
                continue
            src_rel_path = bins[src_name][0]
            src_path = os.path.join(app_dir, src_rel_path)
            if not os.path.exists(src_path):
                continue
            try:
                with open(json_path) as f:
                    labels = json.load(f)
                with open(src_path, 'rb') as f:
                    src_data = f.read()
            except (OSError, json.JSONDecodeError):
                continue
            labels = {int(k): v for k, v in labels.items()}
            changed = False
            for consumer_name, refs in cross_refs.items():
                consumer_start = bins[consumer_name][1] if consumer_name in bins else 0
                for target, src in refs:
                    if src == src_name:
                        abs_target = target + consumer_start
                        if abs_target not in labels and abs_target < len(src_data):
                            labels[abs_target] = f'dispatch_{abs_target:04x}'
                            changed = True
            if changed:
                write_label_json(labels, json_path)


def _foreign_args(out_dir, name, cross_refs):
    if name not in cross_refs:
        return None
    prefix = next(iter(set(src for _, src in cross_refs[name])), '')
    json_path = os.path.join(out_dir, f'{prefix}_labels.json')
    if not os.path.exists(json_path):
        return None
    return [
        f'--foreign-labels={json_path}',
        f'--foreign-prefix={prefix}',
    ]


# ── public commands ─────────────────────────────────────────────────────────

def asm_app(app):
    clear_project_stats(app)
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    os.makedirs(out_dir, exist_ok=True)

    bins = discover_binaries(app_dir)
    if not bins:
        print(f'{app}: no binaries found')
        return

    print(f'\n=== {app} ({len(bins)} binaries) ===')

    cross_refs = detect_cross_refs(app_dir, bins)
    _prepare_cross_ref_sources(app, app_dir, out_dir, bins, cross_refs)
    source_names = {src for refs in cross_refs.values() for _, src in refs}

    consumers = [n for n in sorted(bins) if n not in source_names]

    with ThreadPoolExecutor(max_workers=JOBS) as ex:
        futures = {}
        for name in consumers:
            extra = _foreign_args(out_dir, name, cross_refs)
            futures[ex.submit(_asm_one, app, name, extra)] = name
        for f in as_completed(futures):
            if f.result() != 0:
                print(f'  FAILED: {futures[f]}')

    build_out = os.path.join(out_dir, 'build_out')
    _copy_assets(app_dir, build_out)

    with ThreadPoolExecutor(max_workers=JOBS) as ex:
        futures = {ex.submit(_nasm_build, out_dir, name, rel_path): name
                   for name, (rel_path, _) in sorted(bins.items())}
        for f in as_completed(futures):
            if f.result() != 0:
                print(f'  BUILD FAIL: {futures[f]}')

    _charts(app)


def _copy_original_project(app):
    """Refresh the comparison tree from the freshly generated project tree."""
    source_dir = os.path.join(PROJECT, f'asm_{app}')
    original_dir = os.path.join(PROJECT, f'asm_{app}_orig')
    shutil.rmtree(original_dir, ignore_errors=True)
    shutil.copytree(source_dir, original_dir)
    print(f'  original baseline refreshed: {original_dir}')


def cmd_build_binary(app, binary):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)

    cmd_clean([app])
    clear_project_stats(app)
    os.makedirs(out_dir, exist_ok=True)
    cross_refs = detect_cross_refs(app_dir, bins)
    source_names = {src for refs in cross_refs.values() for _, src in refs}
    required_sources = {src for _, src in cross_refs.get(binary, [])}
    if binary in source_names:
        required_sources.add(binary)
    _prepare_cross_ref_sources(
        app, app_dir, out_dir, bins, cross_refs, required_sources,
    )

    if binary in source_names:
        result = 0
    else:
        result = _asm_one(app, binary, _foreign_args(out_dir, binary, cross_refs))
    if result != 0:
        sys.exit(result)

    rel_path = bins[binary][0]
    _copy_assets(app_dir, os.path.join(out_dir, 'build_out'))
    if _nasm_build(out_dir, binary, rel_path) != 0:
        sys.exit(1)
    print(f'build {app}/{binary} -> {rel_path}  [OK]')
    _charts(app)
    #for future use
    #_copy_original_project(app)


def cmd_clean(apps):
    if not apps:
        clean_all()
        for app in os.listdir(APPS):
            if os.path.isdir(os.path.join(APPS, app)):
                original = os.path.join(PROJECT, f'asm_{app}_orig')
                if os.path.isdir(original):
                    shutil.rmtree(original)
                    print(f'Removed {original}')
        return
    for app in apps:
        removed = False
        for out in (
            os.path.join(PROJECT, f'asm_{app}'),
            os.path.join(PROJECT, f'asm_{app}_orig'),
        ):
            if os.path.isdir(out):
                shutil.rmtree(out)
                print(f'Removed {out}')
                removed = True
        if not removed:
            print(f'Nothing to clean for {app}')


def cmd_verify(apps):
    if not apps:
        verify_all()
        return
    for app in apps:
        ok, fail = verify_project(app)
        print(f'{app}: {ok}/{ok + len(fail)} passed')
        for f in fail:
            print(f'  FAIL: {f}')
        if fail:
            sys.exit(1)


DEFAULT_CHECK_SECONDS = 5


def _parse_check_args(args):
    """Return project names and an optional trailing smoke-test timeout."""
    args = list(args)
    timeout_seconds = DEFAULT_CHECK_SECONDS
    if len(args) > 1:
        try:
            timeout_seconds = int(args[-1], 10)
        except ValueError:
            pass
        else:
            args.pop()
            if timeout_seconds <= 0:
                raise ValueError('seconds must be a positive integer')
    return args, timeout_seconds


def cmd_check(app, timeout_seconds=DEFAULT_CHECK_SECONDS):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    name, rel = _main_exe(out_dir, bins)
    if name is None:
        print(f'{app}: no binaries found')
        sys.exit(1)

    bin_path = os.path.join(out_dir, 'build_out', rel)
    if not os.path.exists(bin_path):
        print(f'{app}: {rel} not built')
        sys.exit(1)

    build_dir = os.path.join(out_dir, 'build_out')
    print(f'Smoke test: launching {rel} via dosbox ({timeout_seconds}s timeout)...')
    rc = subprocess.run(
        ['timeout', str(timeout_seconds), 'dosbox', '-c', f'mount c {build_dir}',
         '-c', 'c:', '-c', rel],
        capture_output=True, text=True,
    ).returncode

    if rc == 124:
        print(f'{app}: PASS (game loaded, killed after {timeout_seconds}s)')
    elif rc == 0:
        print(f'{app}: FAIL (game exited silently)')
        sys.exit(1)
    else:
        print(f'{app}: FAIL (dosbox error {rc})')
        sys.exit(1)


def cmd_run(app):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    name, rel = _main_exe(out_dir, bins)
    if name is None:
        print(f'{app}: no binaries found')
        sys.exit(1)

    bin_path = os.path.join(out_dir, 'build_out', rel)
    if not os.path.exists(bin_path):
        print(f'{app}: {rel} not built')
        sys.exit(1)

    subprocess.run(['dosbox', '-c', f'mount c {os.path.join(out_dir, "build_out")}',
                    '-c', 'c:', '-c', rel])


def cmd_rebuild(app, binary):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)
    rel_path = bins[binary][0]
    r = _nasm_build(out_dir, binary, rel_path)
    if r != 0:
        sys.exit(1)
    print(f'rebuild {app}/{binary} -> {rel_path}  [OK]')


def _elf_symbols_for_binary(out_dir, name, binary_path):
    with open(binary_path, 'rb') as source_file:
        header = source_file.read(0x18)
    entry_ip = int.from_bytes(header[0x14:0x16], 'little')
    if _nasm_elf_build(out_dir, name, entry_ip) != 0:
        raise RuntimeError(f'could not produce ELF symbol map for {out_dir}/{name}')
    elf_path = os.path.join(out_dir, 'build_out', f'{name.upper()}.elf')
    result = _run('nm', '-n', '-g', elf_path)
    if result.returncode != 0:
        raise RuntimeError(result.stderr.strip() or f'nm failed for {elf_path}')
    return parse_nm_symbols(result.stdout)


def _print_delta_report(report, report_path):
    print(f'Delta: {report["binary"]} vs freshly rebuilt original-source tree')
    print(
        f'  Image: {report["before_size"]} -> {report["after_size"]} bytes '
        f'({report["size_delta"]:+d})'
    )
    print(
        f'  Changed byte spans: {len(report["byte_edits"])}; '
        f'named labels moved: {report["moved_symbol_count"]}'
    )
    for edit in report['byte_edits'][:6]:
        before_start, before_end = edit['before_load_range']
        after_start, after_end = edit['after_load_range']
        print(
            f'    {edit["kind"]}: image '
            f'0x{before_start:04x}..0x{before_end:04x} -> '
            f'0x{after_start:04x}..0x{after_end:04x}'
        )
    if len(report['byte_edits']) > 6:
        print(f'    … {len(report["byte_edits"]) - 6} additional byte spans in JSON')

    important = {'entry_point', 'ds_dispatch_jump_0163', 'ds_dispatch_table_0163'}
    examples = [
        item for item in report['moved_symbols']
        if item['symbol'] in important
    ]
    examples.extend(
        item for item in report['moved_symbols']
        if item['symbol'] not in important
    )
    for item in examples[:6]:
        print(
            f'    {item["symbol"]}: 0x{item["before"]:04x} -> '
            f'0x{item["after"]:04x} ({item["delta"]:+d})'
        )

    for table in report['jump_tables']:
        table_status = (
            'OK' if table['entries_match_target_symbols']
            and table['jump_base_check'] == 'ok' else 'REVIEW'
        )
        print(
            f'  Jump table {table["id"]}: '
            f'0x{table["old_table_load_offset"]:04x} -> '
            f'0x{table["new_table_load_offset"]:04x}; '
            f'{table["updated_entries"]}/{table["entries"]} entries changed; '
            f'{table_status}'
        )
        if table['jump_base_check'] != 'ok':
            print(f'    jump base: {table["jump_base_check"]}')

    mz = report['mz']
    before_mz, after_mz = mz['before'], mz['after']
    print(
        f'  MZ entry IP: 0x{before_mz["initial_ip"]:04x} -> '
        f'0x{after_mz["initial_ip"]:04x}; file size fields: '
        f'{before_mz["last_page_bytes"]}/{before_mz["page_count"]} -> '
        f'{after_mz["last_page_bytes"]}/{after_mz["page_count"]}'
    )
    checks = mz['checks']
    checked_fields = [value for value in checks.values() if value is not None]
    relocation_status = (
        'OK' if checks['relocation_sites_ok'] is True
        else 'REVIEW' if checks['relocation_sites_ok'] is False
        else 'not catalogued'
    )
    print(
        '  MZ derived fields: '
        + ('OK' if all(checked_fields) else 'REVIEW')
        + f' (relocation site: {relocation_status})'
    )

    fixed = report['fixed_equ_candidates']
    print(f'  Fixed in-image EQU addresses not regenerated: {len(fixed)}')
    for item in fixed[:6]:
        print(
            f'    {item["symbol"]}: encoded 0x{item["encoded_value"]:04x}, '
            f'target moved to 0x{item["target_after_edit"]:04x}'
        )
    if len(fixed) > 6:
        print(f'    … {len(fixed) - 6} additional affected EQU addresses in JSON')
    print(f'  Delta detail: {report_path}')


def cmd_delta(app, binary):
    app_dir = os.path.join(APPS, app)
    current_dir = os.path.join(PROJECT, f'asm_{app}')
    original_dir = os.path.join(PROJECT, f'asm_{app}_orig')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)
    if not os.path.isdir(original_dir):
        print(f'{original_dir} not found; run "make build {app}" first')
        sys.exit(1)

    rel_path = bins[binary][0]
    manifest_path = os.path.join(current_dir, f'{binary}', 'jump_tables.json')
    try:
        if os.path.isfile(manifest_path):
            with open(manifest_path, encoding='utf-8') as f:
                manifest = json.load(f)
            if manifest.get('binary') != binary:
                raise ValueError(f'{manifest_path}: wrong binary manifest')
        else:
            manifest = {'binary': binary}

        before_path = os.path.join(original_dir, 'build_out', rel_path)
        after_path = os.path.join(current_dir, 'build_out', rel_path)
        if _nasm_build(original_dir, binary, rel_path) != 0:
            raise RuntimeError('original source tree failed to assemble')
        if _nasm_build(current_dir, binary, rel_path) != 0:
            raise RuntimeError('edited source failed to assemble')

        before_symbols = _elf_symbols_for_binary(original_dir, binary, before_path)
        after_symbols = _elf_symbols_for_binary(current_dir, binary, after_path)
        with open(before_path, 'rb') as f:
            before = f.read()
        with open(after_path, 'rb') as f:
            after = f.read()
        report = analyze_delta(
            before, after, before_symbols, after_symbols, manifest,
        )
    except Exception as error:
        print(f'Delta failed: {error}')
        sys.exit(1)

    addresses_path = os.path.join(current_dir, f'{binary}_addresses.json')
    report_path = os.path.join(current_dir, f'{binary}_delta.json')
    stale_reports = (
        os.path.join(current_dir, 'build_out', f'{binary.upper()}.address-inventory.json'),
        os.path.join(current_dir, 'build_out', f'{binary.upper()}.delta.json'),
    )
    for stale_path in stale_reports:
        try:
            os.unlink(stale_path)
        except FileNotFoundError:
            pass
    write_address_inventory(addresses_path, binary, after_symbols)
    write_delta(report_path, report)
    print(f'  Address inventory: {addresses_path}')
    _print_delta_report(report, report_path)


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

    org_line = next(
        (i for i, line in enumerate(lines) if line.strip().lower() == 'org 0'),
        None,
    )
    header_line = next(
        (i for i, line in enumerate(lines) if 'header (' in line.lower()),
        None,
    )
    if org_line is None or header_line is None:
        raise ValueError(f'{asm_path}: expected generated MZ header and org 0')

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
        if match and match.group(1) not in symbols:
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


def _nasm_elf_build(out_dir, name, entry_ip):
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
            f'-I{out_dir}/', '-o', tmp_elf, f'{name}.asm',
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

        # Add a synthetic _start only when the line table maps the entry to an
        # actual instruction. Edited layouts can make the old MZ IP ambiguous;
        # in that case keep the valid first-pass ELF and let launch proceed.
        if entry_ip:
            result = subprocess.run(
                ['addr2line', '-e', tmp_elf, '-f', f'0x{entry_ip:x}'],
                capture_output=True, text=True,
            )
            output_lines = result.stdout.strip().splitlines()
            source_match = (
                re.match(r'(.+):(\d+)\s*$', output_lines[-1])
                if output_lines else None
            )
            if result.returncode != 0 or source_match is None:
                print(
                    f'  ELF ENTRY MAP WARN: could not map MZ entry '
                    f'0x{entry_ip:x}; continuing without synthetic _start'
                )
                if result.stderr.strip():
                    print(f'    {result.stderr.strip()}')
            else:
                entry_source = os.path.realpath(source_match.group(1))
                entry_line = int(source_match.group(2))
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


def cmd_elf_rebuild(app, binary):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)
    rel_path, start_offset = bins[binary]
    if not rel_path.upper().endswith('.EXE') or start_offset != 0x200:
        print(f'elf-rebuild currently supports generated MZ EXEs only: {app}/{binary}')
        sys.exit(1)

    asm_path = os.path.join(out_dir, f'{binary}.asm')
    if not os.path.isfile(asm_path):
        print(f'{asm_path} not found; run "make build {app}" first')
        sys.exit(1)

    if _nasm_build(out_dir, binary, rel_path) != 0:
        sys.exit(1)
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


HELP = '''Usage: make [command] [project...]

Commands (space-separated):
  make all                  all projects serially
  make build PROJECT [BIN]  asm + nasm + assets for one project or binary
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT          run game in dosbox
  make verify [PROJECT...]  verify one or all projects
  make clean [PROJECT...]   clean one or all projects
  make rebuild PROJECT BIN  nasm-only rebuild of one binary
  make elf-rebuild PROJECT BIN rebuild DOS EXE plus ELF/DWARF symbols
  make delta PROJECT BIN          compare original and edited assembly layouts
  make decompile PROJECT BIN  disassemble + decompile binary to .c
  make set-baseline         pin current stats as baseline (git-committable)
  make charts               regenerate all PNGs + CSVs from existing stats

Env:
  EXTRA_FLAGS               space-separated flags forwarded to main.py:
                              --exact-bytes       strict byte-accurate mode
                              --detailed-timings  full-precision phase timings
                              --no-show-offsets   suppress instruction offsets
  EXACT_FLAG (deprecated)   same as EXTRA_FLAGS=--exact-bytes
'''


def cmd_set_baseline():
    count = 0
    for root, dirs, files in os.walk(STATS_DIR):
        count += sum(1 for f in files if f.endswith('.json'))
    print(f'Found {count} binaries in stats')
    shutil.copytree(STATS_DIR, BASELINE_DIR, dirs_exist_ok=True)
    _charts_all()


def _charts(app):
    try:
        from lib.sparkline import charts
        charts(app)
    except Exception as e:
        print(f'  charts: {e}')


def _charts_all():
    try:
        from lib.sparkline import charts_all
        charts_all()
    except Exception as e:
        print(f'  all charts: {e}')


def cmd_charts():
    projects = list_project_dirs()
    for p in projects:
        print(f'Charts: {p}')
        _charts(p)
    _charts_all()
    print('Done')


def main():
    flags = [a for a in sys.argv[1:] if a.startswith('--')]
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    all_projects = list(_apps())

    if '--help' in flags:
        print(HELP)
        return

    if '--verify' in flags:
        cmd_verify(args)
        return

    if '--clean' in flags:
        cmd_clean(args)
        return

    if '--check' in flags:
        if not args:
            print('Usage: make check PROJECT [SECONDS]')
            sys.exit(1)
        try:
            projects, timeout_seconds = _parse_check_args(args)
        except ValueError as e:
            print(f'Invalid check timeout: {e}')
            print('Usage: make check PROJECT [SECONDS]')
            sys.exit(1)
        if not projects:
            print('Usage: make check PROJECT [SECONDS]')
            sys.exit(1)
        for g in projects:
            if g not in all_projects:
                print(f'Unknown project: {g}')
                sys.exit(1)
            cmd_check(g, timeout_seconds)
        return

    if '--run' in flags:
        if not args:
            print('Usage: make run PROJECT')
            sys.exit(1)
        for g in args:
            if g not in all_projects:
                print(f'Unknown project: {g}')
                sys.exit(1)
            cmd_run(g)
        return

    if '--charts' in flags:
        cmd_charts()
        return

    if '--set-baseline' in flags:
        cmd_set_baseline()
        return

    if '--rebuild' in flags:
        if len(args) < 2:
            print('Usage: make rebuild PROJECT BINARY')
            sys.exit(1)
        project, binary = args[0], args[1]
        if project not in all_projects:
            print(f'Unknown project: {project}')
            sys.exit(1)
        cmd_rebuild(project, binary)
        return

    if '--delta' in flags:
        if len(args) != 2:
            print('Usage: make delta PROJECT BINARY')
            sys.exit(1)
        project, binary = args
        if project not in all_projects:
            print(f'Unknown project: {project}')
            print(f'Known: {", ".join(all_projects)}')
            sys.exit(1)
        cmd_delta(project, binary)
        return

    if '--elf-rebuild' in flags:
        if len(args) < 2:
            print('Usage: make elf-rebuild PROJECT BINARY')
            sys.exit(1)
        project, binary = args[0], args[1]
        if project not in all_projects:
            print(f'Unknown project: {project}')
            sys.exit(1)
        cmd_elf_rebuild(project, binary)
        return

    if '--decompile' in flags:
        if len(args) < 2:
            print('Usage: make decompile PROJECT BINARY')
            sys.exit(1)
        project, binary = args[0], args[1]
        if project not in all_projects:
            print(f'Unknown project: {project}')
            sys.exit(1)
        _asm_one(project, binary, ['--decompile'])
        return

    if '--build' in flags:
        if len(args) == 2:
            project, binary = args
            if project not in all_projects:
                print(f'Unknown project: {project}')
                print(f'Known: {", ".join(all_projects)}')
                sys.exit(1)
            cmd_build_binary(project, binary)
        elif len(args) <= 1:
            targets = args or all_projects
            _build_projects(targets, all_projects)
        else:
            print('Usage: make build PROJECT [BIN]')
            sys.exit(1)
        return

    # No known flag — error
    print(f'Unknown command: {" ".join(args)}')
    print(HELP)
    sys.exit(1)


def _build_projects(targets, all_projects):
    for project in targets:
        if project not in all_projects:
            print(f'Unknown project: {project}')
            print(f'Known: {", ".join(all_projects)}')
            sys.exit(1)
    cmd_clean(targets)
    for project in targets:
        asm_app(project)
        #for future use
        #_copy_original_project(project)
    if len(targets) > 1 or targets == all_projects:
        _charts_all()


if __name__ == '__main__':
    main()
