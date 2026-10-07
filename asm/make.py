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


def cmd_clean(apps):
    if not apps:
        clean_all()
        return
    for app in apps:
        out = os.path.join(PROJECT, f'asm_{app}')
        if os.path.isdir(out):
            shutil.rmtree(out)
            print(f'Removed {out}')
        else:
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


def _nasm_elf_build(out_dir, name, entry_ip):
    asm_path = os.path.join(out_dir, f'{name}.asm')
    build_out = os.path.join(out_dir, 'build_out')
    elf_dir = os.path.join(build_out, '.elf-rebuild')
    os.makedirs(elf_dir, exist_ok=True)
    source_path = os.path.join(elf_dir, f'{name}.asm')
    elf_path = os.path.join(build_out, f'{name.upper()}.elf')
    tmp_elf = elf_path + '.tmp'
    build_succeeded = False
    extra_source_paths = []
    extra_source_dirs = []

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

        # Give the MZ entry point an addressable function symbol. The ELF line
        # table maps the DOS header's initial IP to its generated ASM source
        # row; placing _start on that row preserves the correct load address.
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
                print(f'  ELF BUILD FAIL: could not map MZ entry 0x{entry_ip:x}')
                if result.stderr.strip():
                    print(f'    {result.stderr.strip()}')
                return 1

            entry_source = os.path.realpath(source_match.group(1))
            entry_line = int(source_match.group(2))
            if entry_source in {
                os.path.realpath(asm_path), os.path.realpath(source_path),
            }:
                source_text = _elf_source_text(asm_path, entry_line)
            else:
                out_root = os.path.realpath(out_dir)
                if os.path.commonpath((out_root, entry_source)) != out_root:
                    print(f'  ELF BUILD FAIL: entry source is outside {out_dir}')
                    return 1
                with open(entry_source) as f:
                    entry_lines = f.read().splitlines()
                if not 1 <= entry_line <= len(entry_lines):
                    print(f'  ELF BUILD FAIL: invalid MZ entry source line {entry_line}')
                    return 1
                entry_lines[entry_line - 1] = (
                    '_start: ' + entry_lines[entry_line - 1].lstrip()
                )
                relative_source = os.path.relpath(entry_source, out_root)
                entry_copy = os.path.join(elf_dir, relative_source)
                entry_copy_dir = os.path.dirname(entry_copy)
                if not os.path.isdir(entry_copy_dir):
                    os.makedirs(entry_copy_dir)
                    extra_source_dirs.append(entry_copy_dir)
                with open(entry_copy, 'w') as f:
                    f.write('\n'.join(entry_lines) + '\n')
                extra_source_paths.append(entry_copy)
                source_text = _elf_source_text(asm_path, add_entry_symbol=True)

            result = assemble(source_text)
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
        cleanup_paths = (
            (tmp_elf,) if build_succeeded
            else (source_path, tmp_elf, *extra_source_paths)
        )
        for path in cleanup_paths:
            try:
                os.unlink(path)
            except FileNotFoundError:
                pass
        for path in reversed(extra_source_dirs):
            try:
                os.rmdir(path)
            except OSError:
                pass
        try:
            os.rmdir(elf_dir)
        except OSError:
            pass


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
    if len(targets) > 1 or targets == all_projects:
        _charts_all()


if __name__ == '__main__':
    main()
