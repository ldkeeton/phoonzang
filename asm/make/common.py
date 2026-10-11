"""Companion to Makefile — parallel asm gen, NASM build, asset copy, check/run.

Usage (from asm/):
  make                     show help
  make all                 all projects serially
  make build PROJECT [BIN] asm + nasm + assets (prebuilds first if missing)
  make prebuild PROJECT [BIN] run the slow Aztec C mux and cache it
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT         run game in dosbox
  make verify [PROJECT...] verify one or all projects
  make clean [PROJECT...]  clean one or all projects (incl. .cache/asm_prebuild_*)
  make rebuild PROJECT BIN nasm-only rebuild of one binary
  make elf-rebuild PROJECT BIN rebuild DOS EXE plus ELF/DWARF symbols
  make delta PROJECT BIN          compare original and edited assembly layouts

Env:
  EXTRA_FLAGS              space-separated flags forwarded to python -m main:
                              --exact-bytes     strict byte-accurate mode
                              --detailed-timings full-precision phase timings
                              --no-show-offsets suppress instruction offsets
  EXACT_FLAG (deprecated)  same as EXTRA_FLAGS=--exact-bytes
"""

import json
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
from lib.cross_ref import write_label_json


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


def _asm_one(app, binary, extra_args=None):
    cmd = [sys.executable, '-m', 'main', app]
    cmd.extend(_extra_flags())
    cmd.append(binary)
    if extra_args:
        cmd.extend(extra_args)
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=ASM)
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
