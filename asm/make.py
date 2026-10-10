#!/usr/bin/env python3
"""Companion to Makefile — parallel asm gen, NASM build, asset copy, check/run.

Usage (from asm/):
  make                     show help
  make all                 all projects serially
  make build PROJECT [BIN] asm + nasm + assets (prebuilds first if missing)
  make prebuild PROJECT [BIN] run the slow Aztec C mux and cache it
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT         run game in dosbox
  make verify [PROJECT...] verify one or all projects
  make clean [PROJECT...]  clean one or all projects (incl. asm_prebuild_*)
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
from lib.dwarf_line import fix_elf as _fix_elf_debug_line
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
            json_path = os.path.join(out_dir, 'inc', 'labels',
                                     f'{src_name}_labels.json')
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
    json_path = os.path.join(out_dir, 'inc', 'labels',
                             f'{prefix}_labels.json')
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

    cmd_clean([app], keep_prebuild=True)
    _ensure_prebuild(app)
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


def cmd_clean(apps, keep_prebuild=False):
    """Remove generated trees.

    ``make clean`` removes ``asm_prebuild_<app>`` as well.  ``make build``
    passes ``keep_prebuild=True`` so the expensive prebuild survives repeated
    builds (it is created first only when absent).
    """
    def _targets(app):
        outs = [
            os.path.join(PROJECT, f'asm_{app}'),
            os.path.join(PROJECT, f'asm_{app}_orig'),
            os.path.join(PROJECT, f'asm_cache_{app}'),
        ]
        if not keep_prebuild:
            outs.append(os.path.join(PROJECT, f'asm_prebuild_{app}'))
        return outs

    if not apps:
        clean_all()
        for app in os.listdir(APPS):
            if not os.path.isdir(os.path.join(APPS, app)):
                continue
            # asm_<app> is handled by clean_all(); keep the old no-arg scope.
            for out in _targets(app)[1:]:
                if os.path.isdir(out):
                    shutil.rmtree(out)
                    print(f'Removed {out}')
        return
    for app in apps:
        removed = False
        for out in _targets(app):
            if os.path.isdir(out):
                shutil.rmtree(out)
                print(f'Removed {out}')
                removed = True
        if not removed:
            print(f'Nothing to clean for {app}')


def cmd_prebuild(app, binary=None):
    """Resolve the Aztec C mux and persist it under asm_prebuild_<app>/.

    This intentionally stops main.py right after the mux manifest is written:
    no verify/emit and no NASM, and asm_<app>/ is left untouched.  Re-run
    after deleting asm_prebuild_<app>/ to force a full re-search.
    """
    app_dir = os.path.join(APPS, app)
    bins = discover_binaries(app_dir)
    if binary is not None and binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)

    out_dir = os.path.join(PROJECT, f'asm_prebuild_{app}')
    os.makedirs(out_dir, exist_ok=True)
    os.environ['WIZ7_AZTEC_PREBUILD'] = '1'
    os.environ['WIZ7_AZTEC_PREBUILD_ONLY'] = '1'
    # Binaries disassemble in parallel (CPU-bound); the emulator is serialized
    # behind one inter-process lock (see lib/aztec/compile._dosbox_lock).
    os.environ['WIZ7_DOSBOX_LOCK'] = os.path.join(out_dir, '.dosbox.lock')
    targets = [binary] if binary else sorted(bins)
    try:
        with ThreadPoolExecutor(max_workers=JOBS) as ex:
            futures = {ex.submit(_asm_one, app, name): name
                       for name in targets}
            for future in as_completed(futures):
                rc = future.result()
                if rc != 0:
                    sys.exit(rc)
    finally:
        os.environ.pop('WIZ7_AZTEC_PREBUILD', None)
        os.environ.pop('WIZ7_AZTEC_PREBUILD_ONLY', None)
        os.environ.pop('WIZ7_DOSBOX_LOCK', None)

    target = f'{app}/{binary}' if binary else app
    print(f'prebuild {target} -> {out_dir}  [OK]')


def _ensure_prebuild(app):
    """Run the prebuild only when ``asm_prebuild_<app>/`` does not exist yet."""
    if os.path.isdir(os.path.join(PROJECT, f'asm_prebuild_{app}')):
        return
    print(f'{app}: asm_prebuild_{app}/ missing; running prebuild first')
    cmd_prebuild(app)


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
    load_offset = int.from_bytes(header[0x08:0x0a], 'little') * 16
    if _nasm_elf_build(out_dir, name, entry_ip, load_offset) != 0:
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


def resplice_c(app, binary):
    """Recompile the C routine fragments of an already-built binary.

    This is the debug hot loop, not a verification pass: every routine that has
    a ``.c`` seed is recompiled with its recorded Aztec provenance and its
    ``<binary>/<label>.asm`` fragment is rewritten to match the C as it stands
    now.  C and ASM edits are expected before a resplice, so an edited routine
    is *meant* to differ from the recovered original; ``make verify`` only
    matters once a full ``make build`` completes.

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
    from lib.verify.compare import (
        _c_bytes_to_records, _merge_label_records, _render_records,
    )

    out_dir = os.path.join(PROJECT, f'asm_{app}')
    dest = os.path.join(out_dir, binary)
    spans_path = os.path.join(out_dir, 'inc', 'spans',
                              f'{binary}_aztec_spans.json')
    labels_path = os.path.join(out_dir, 'inc', 'labels',
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
    resplice_labels_path = os.path.join(
        out_dir, 'inc', 'labels', f'{binary}_resplice_labels.json')
    if os.path.isfile(resplice_labels_path):
        with open(resplice_labels_path) as f:
            label_map.update({int(k): v for k, v in json.load(f).items()})

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
        # tail shares a leaf block with the next split -- e.g. malloc's epilogue
        # jump) keeps that tail in the neighbouring fragment, exactly as
        # ``make build`` laid it out, so only the part inside this fragment is
        # rewritten.  Otherwise the routine's recorded code length is NOP-padded
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

        local_labels = _synthesize_locals(bytes(final), start, code_len, label)
        records = _c_bytes_to_records(
            bytes(final), start, label_map, local_labels, None, None)
        label_records = [{'type': 'label', 'text': f'{label}:',
                          'offset': start}]
        label_records.extend(
            {'type': 'label', 'text': f'{name}:', 'offset': addr}
            for addr, name in sorted(label_map.items())
            if start < addr < end and isinstance(name, str))
        label_records.extend(
            {'type': 'label', 'text': f'{name}:', 'offset': addr}
            for addr, name in sorted(local_labels.items()))
        records = _merge_label_records(records, label_records)
        fragment = '\n'.join(_render_records(records, data, True)) + '\n'
        with open(os.path.join(dest, f'{label}.asm'), 'w') as f:
            f.write(fragment)
        count += 1
    if count:
        print(f'  resplice {app}/{binary}: {count} C routine(s) from .c')




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

 
    resplice_c(app, binary)
    if _nasm_build(out_dir, binary, rel_path) != 0:
        sys.exit(1)
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


HELP = '''Usage: make [command] [project...]

Commands (space-separated):
  make all                  all projects serially
  make build PROJECT [BIN]  asm + nasm + assets (seeds .c; runs prebuild first if missing)
  make prebuild PROJECT [BIN]  run the slow Aztec C mux and cache extracted seeds
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT          run game in dosbox
  make verify [PROJECT...]  verify one or all projects
  make clean [PROJECT...]   clean one or all projects (incl. asm_prebuild_*)
  make rebuild PROJECT BIN  nasm-only rebuild of one binary
  make elf-rebuild PROJECT BIN recompile edited .c (no verify) + rebuild EXE + ELF/DWARF
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

    if '--prebuild' in flags:
        if len(args) == 2:
            project, binary = args
            if project not in all_projects:
                print(f'Unknown project: {project}')
                print(f'Known: {", ".join(all_projects)}')
                sys.exit(1)
            cmd_prebuild(project, binary)
        elif len(args) == 1:
            project = args[0]
            if project not in all_projects:
                print(f'Unknown project: {project}')
                print(f'Known: {", ".join(all_projects)}')
                sys.exit(1)
            cmd_prebuild(project)
        else:
            print('Usage: make prebuild PROJECT [BIN]')
            sys.exit(1)
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
    cmd_clean(targets, keep_prebuild=True)
    for project in targets:
        _ensure_prebuild(project)
        asm_app(project)
        #for future use
        #_copy_original_project(project)
    if len(targets) > 1 or targets == all_projects:
        _charts_all()


if __name__ == '__main__':
    main()
