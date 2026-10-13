"""Companion to Makefile — parallel asm gen, NASM build, asset copy, check/run.

Usage (from asm/):
  make                     show help
  make all                 all projects serially
  make build PROJECT [BIN] asm + nasm + assets (prebuilds first if missing)
  make prebuild PROJECT [BIN] wipe .cache/PROJECT, rebuild aztec libs + DB + mux
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT         run game in dosbox-x
  make verify [PROJECT...] verify one or all projects
  make clean [PROJECT...]  clean one or all projects (incl. .cache/<project>/prebuild)
  make rebuild PROJECT BIN nasm-only rebuild of one binary
  make elf-rebuild PROJECT BIN rebuild DOS EXE plus ELF/DWARF symbols
  make set-baseline        pin current stats (.cache/stats) as local baseline
  make stats-diff          current-vs-baseline KPI delta
  make charts              render PNG charts from existing stats

Env:
  EXTRA_FLAGS              space-separated flags forwarded to python -m main:
                              --stats             write stats to .cache/stats
                              --exact-bytes       strict byte-accurate mode
                              --detailed-timings full-precision phase timings
                              --no-show-offsets suppress instruction offsets
  EXACT_FLAG (deprecated)  same as EXTRA_FLAGS=--exact-bytes
"""

import os
import shutil
import subprocess
import sys

PROJECT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
APPS = os.path.join(PROJECT, 'apps')
JOBS = os.cpu_count() or 4

if ASM not in sys.path:
    sys.path.insert(0, ASM)
from main import load_whitelist
from lib.cachedirs import labels_dir, project_of_asm_dir
from lib.link import include_args


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
    """Return list of extra CLI flags to forward to python -m main based on env."""
    flags = []
    val = os.environ.get('EXTRA_FLAGS', '')
    if val:
        flags.extend(val.split())
    # backward compat: EXACT_FLAG
    old = os.environ.get('EXACT_FLAG', '')
    if old == '--exact-bytes' and '--exact-bytes' not in flags:
        flags.append('--exact-bytes')
    return flags


def _asm_one(app, binary, extra_args=None, sink=None):
    """Run ``python -m main <app> <binary>`` and report its output.

    Empty stdout is normal (e.g. a prebuild binary with no ``aztec_*`` labels),
    so blank lines are dropped rather than reprinted.  When *sink* is a list the
    non-empty lines are appended to it instead of printed, letting callers group
    and order parallel output deterministically.
    """
    cmd = [sys.executable, '-m', 'main', app]
    cmd.extend(_extra_flags())
    cmd.append(binary)
    if extra_args:
        cmd.extend(extra_args)
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=ASM)
    lines = [line for line in r.stdout.splitlines() if line.strip()]
    if sink is not None:
        sink.extend(lines)
    else:
        for line in lines:
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
             *include_args(out_dir), '-o', bin_path, asm_path)
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


def _write_host_call_table(app, app_dir, out_dir, bins, cross_refs):
    """Write the one shared overlay-handle table (plan D7.1 step 1).

    The per-consumer ``<name>_foreign_labels.inc`` files were subset copies of
    the same names with the same values: an overlay's handle for a host routine
    is one affine map of the host offset (``SegmentModel.host_code_target``),
    because every overlay shares ``o_corg`` / ``cs_origin``.  So the source's
    exported label map is the single source of truth and one table serves every
    overlay.

    Returns True when the table was written; False leaves the per-consumer
    files in charge (standalone generation, or geometry we cannot place).
    """
    from lib.cross_ref import (
        HOST_CALLS_NAME, host_call_table, read_label_json, write_equ_table,
    )
    from lib.segments import SegmentError, from_binary

    source_names = sorted({src for refs in cross_refs.values()
                           for _, src in refs})
    table = {}
    for src_name in source_names:
        if src_name not in bins:
            continue
        json_path = os.path.join(labels_dir(app), f'{src_name}_labels.json')
        src_path = os.path.join(app_dir, bins[src_name][0])
        if not (os.path.exists(json_path) and os.path.exists(src_path)):
            continue
        consumer = next(
            (n for n in sorted(cross_refs)
             if n in bins and any(s == src_name for _, s in cross_refs[n])),
            None)
        if consumer is None:
            continue
        try:
            with open(src_path, 'rb') as f:
                host = from_binary(f.read(), start_offset=bins[src_name][1])
            with open(os.path.join(app_dir, bins[consumer][0]), 'rb') as f:
                model = from_binary(f.read(), start_offset=bins[consumer][1],
                                    host=host)
        except (OSError, SegmentError):
            return False
        part = host_call_table(src_name, read_label_json(json_path), model)
        if part is None:
            return False
        for name, value in part.items():
            if name in table and table[name] != value:
                print(f'  LINK WARN: conflicting handle for {name}')
                return False
            table[name] = value
    if not table:
        return False
    write_equ_table(table, os.path.join(labels_dir(app), HOST_CALLS_NAME))
    return True


def _prepare_cross_ref_sources(app, app_dir, out_dir, bins, cross_refs,
                               process_sources=None):
    source_names = {src for refs in cross_refs.values() for _, src in refs}
    if process_sources is None:
        process_sources = source_names

    if cross_refs:
        print(f'  Cross-binary references detected: {len(cross_refs)} consumers')
        for name in sorted(source_names):
            print(f'  Source binary: {name}')

    failed = []
    for src_name in sorted(source_names & set(bins.keys()) & process_sources):
        print(f'  Processing source: {src_name}')
        if _asm_one(app, src_name, ['--export-labels']) != 0:
            print(f'  FAILED: {src_name}')
            failed.append(src_name)

    # One shared overlay-handle table keyed by the source's exported labels
    # (plan D7.1 step 1).  It supersedes the per-consumer subset copies, which
    # are removed so only one convention is live.
    if _write_host_call_table(app, app_dir, out_dir, bins, cross_refs):
        target = labels_dir(app)
        for entry in os.listdir(target):
            if entry.endswith('_foreign_labels.inc'):
                os.remove(os.path.join(target, entry))

    return failed


def _foreign_args(out_dir, name, cross_refs):
    if name not in cross_refs:
        return None
    prefix = next(iter(set(src for _, src in cross_refs[name])), '')
    project = project_of_asm_dir(out_dir)
    if project is None:
        return None
    json_path = os.path.join(labels_dir(project), f'{prefix}_labels.json')
    if not os.path.exists(json_path):
        return None
    return [
        f'--foreign-labels={json_path}',
        f'--foreign-prefix={prefix}',
    ]
