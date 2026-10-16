"""Companion to Makefile — parallel asm gen, NASM build, asset copy, check/run.

Usage (from the repo root):
  make                     show help
  make all                 all projects serially
  make build PROJECT [BIN] asm + nasm + assets (prebuilds first if missing)
  make prebuild PROJECT [BIN] rebuild aztec libs + DB + mux
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT         run game in dosbox-x
  make verify [PROJECT...] verify one or all projects
  make clean [PROJECT...]  clean one or all projects (no args: delete .cache)
  make rebuild [PROJECT [BIN]] recompile .c (gated vs original bytes) + nasm
  make elf-rebuild [PROJECT [BIN]] rebuild DOS EXE plus ELF/DWARF symbols
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
import re
import subprocess
import sys

PROJECT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
APPS = os.path.join(PROJECT, 'apps')
JOBS = os.cpu_count() or 4

if ASM not in sys.path:
    sys.path.insert(0, ASM)
from main.projects import load_whitelist
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


#: Kept even from a successful worker: the binary's own summary, plus anything
#: that reads like a warning (``aztec link``/``LINK WARN``/tracebacks) and the
#: C data-reference contract violations (plan.md section 18).
_WARN_LINE = re.compile(r'WARN|warn|FAIL|fail|Error|error:|Exception|Traceback'
                        r'|taken as written|not a build symbol')


def _verbose():
    """``EXTRA_FLAGS=--verbose`` or ``VERBOSE=1`` prints every worker line."""
    return bool(os.environ.get('VERBOSE')) or '--verbose' in _extra_flags()


def _asm_one(app, binary, extra_args=None, sink=None):
    """Run ``python -m main <app> <binary>`` and report its output.

    Empty stdout is normal (e.g. a prebuild binary with no ``aztec_*`` labels),
    so blank lines are dropped rather than reprinted.  A worker that succeeds
    prints only its own one-line summary (plus anything that looks like a
    warning); a worker that fails prints everything.  ``EXTRA_FLAGS=--verbose``
    or ``VERBOSE=1`` prints it all either way.  When *sink* is a list the kept
    lines are appended to it instead of printed, letting callers group and order
    parallel output deterministically.
    """
    cmd = [sys.executable, '-m', 'main', app]
    cmd.extend(_extra_flags())
    if _verbose() and '--verbose' not in cmd:
        # The worker then prints its full stats line and phase timings.
        cmd.append('--verbose')
    cmd.append(binary)
    if extra_args:
        cmd.extend(extra_args)
    r = subprocess.run(cmd, capture_output=True, text=True, cwd=ASM)
    lines = [line for line in r.stdout.splitlines() if line.strip()]
    if r.returncode == 0 and not _verbose():
        prefix = f'{binary}: '
        lines = [line for line in lines
                 if line.startswith(prefix) or _WARN_LINE.search(line)]
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
    r = _run('nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-w-other',
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

