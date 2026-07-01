#!/usr/bin/env python3
"""Companion to Makefile — parallel asm gen, NASM build, asset copy, check/run.

Usage (from asm/):
  make                     show help
  make all                 all games serially
  make build GAME          asm + nasm + assets for one game
  make check GAME          smoke-test game (5s timeout, requires build first)
  make run GAME            run game in dosbox
  make verify [GAME...]    verify one or all games
  make clean [GAME...]     clean one or all games
  make rebuild GAME BIN    nasm-only rebuild of one binary

Env:
  EXTRA_FLAGS              space-separated flags forwarded to main.py:
                             --exact-bytes     strict byte-accurate mode
                             --detailed-timings full-precision phase timings
  EXACT_FLAG (deprecated)  same as EXTRA_FLAGS=--exact-bytes
"""

import os
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
from main import discover_binaries, load_whitelist, verify_all, clean_all, verify_game
from lib.report import STATS_DIR, BASELINE_DIR, clear_stats, clear_game_stats, list_game_dirs


# ── helpers ─────────────────────────────────────────────────────────────────

def _games():
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


def _asm_one(game, binary):
    cmd = [sys.executable, os.path.join(ASM, 'main.py'), game, binary]
    cmd[3:3] = _extra_flags()
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
    """Return (binary_name, rel_path) of the main executable for a game."""
    for name in sorted(bins):
        rel_path = bins[name][0]
        if rel_path.upper().endswith('.EXE'):
            return name, rel_path
    # fallback
    for name in sorted(bins):
        return name, bins[name][0]
    return None, None


# ── public commands ─────────────────────────────────────────────────────────

def asm_game(game):
    clear_game_stats(game)
    game_dir = os.path.join(APPS, game)
    out_dir = os.path.join(PROJECT, f'asm_{game}')
    os.makedirs(out_dir, exist_ok=True)

    bins = discover_binaries(game_dir)
    if not bins:
        print(f'{game}: no binaries found')
        return

    print(f'\n=== {game} ({len(bins)} binaries) ===')

    with ThreadPoolExecutor(max_workers=JOBS) as ex:
        futures = {ex.submit(_asm_one, game, name): name
                   for name in sorted(bins)}
        for f in as_completed(futures):
            if f.result() != 0:
                print(f'  FAILED: {futures[f]}')

    build_out = os.path.join(out_dir, 'build_out')
    os.makedirs(build_out, exist_ok=True)
    for entry in os.listdir(game_dir):
        src = os.path.join(game_dir, entry)
        dst = os.path.join(build_out, entry)
        if os.path.isfile(src):
            shutil.copy2(src, dst)
        elif os.path.isdir(src):
            shutil.copytree(src, dst, dirs_exist_ok=True)

    with ThreadPoolExecutor(max_workers=JOBS) as ex:
        futures = {ex.submit(_nasm_build, out_dir, name, rel_path): name
                   for name, (rel_path, _) in sorted(bins.items())}
        for f in as_completed(futures):
            if f.result() != 0:
                print(f'  BUILD FAIL: {futures[f]}')

    _charts(game)


def cmd_clean(games):
    if not games:
        clean_all()
        return
    for game in games:
        out = os.path.join(PROJECT, f'asm_{game}')
        if os.path.isdir(out):
            shutil.rmtree(out)
            print(f'Removed {out}')
        else:
            print(f'Nothing to clean for {game}')


def cmd_verify(games):
    if not games:
        verify_all()
        return
    for game in games:
        ok, fail = verify_game(game)
        print(f'{game}: {ok}/{ok + len(fail)} passed')
        for f in fail:
            print(f'  FAIL: {f}')
        if fail:
            sys.exit(1)


def cmd_check(game):
    game_dir = os.path.join(APPS, game)
    out_dir = os.path.join(PROJECT, f'asm_{game}')
    bins = discover_binaries(game_dir)
    name, rel = _main_exe(out_dir, bins)
    if name is None:
        print(f'{game}: no binaries found')
        sys.exit(1)

    bin_path = os.path.join(out_dir, 'build_out', rel)
    if not os.path.exists(bin_path):
        print(f'{game}: {rel} not built')
        sys.exit(1)

    build_dir = os.path.join(out_dir, 'build_out')
    print(f'Smoke test: launching {rel} via dosbox (5s timeout)...')
    rc = subprocess.run(
        ['timeout', '5', 'dosbox', '-c', f'mount c {build_dir}',
         '-c', 'c:', '-c', rel],
        capture_output=True, text=True,
    ).returncode

    if rc == 124:
        print(f'{game}: PASS (game loaded, killed after 5s)')
    elif rc == 0:
        print(f'{game}: FAIL (game exited silently)')
        sys.exit(1)
    else:
        print(f'{game}: FAIL (dosbox error {rc})')
        sys.exit(1)


def cmd_run(game):
    game_dir = os.path.join(APPS, game)
    out_dir = os.path.join(PROJECT, f'asm_{game}')
    bins = discover_binaries(game_dir)
    name, rel = _main_exe(out_dir, bins)
    if name is None:
        print(f'{game}: no binaries found')
        sys.exit(1)

    bin_path = os.path.join(out_dir, 'build_out', rel)
    if not os.path.exists(bin_path):
        print(f'{game}: {rel} not built')
        sys.exit(1)

    subprocess.run(['dosbox', '-c', f'mount c {os.path.join(out_dir, "build_out")}',
                    '-c', 'c:', '-c', rel])


def cmd_rebuild(game, binary):
    game_dir = os.path.join(APPS, game)
    out_dir = os.path.join(PROJECT, f'asm_{game}')
    bins = discover_binaries(game_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {game}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)
    rel_path = bins[binary][0]
    r = _nasm_build(out_dir, binary, rel_path)
    if r != 0:
        sys.exit(1)
    print(f'rebuild {game}/{binary} -> {rel_path}  [OK]')


HELP = '''Usage: make [command] [game...]

Commands (space-separated):
  make all                  all games serially
  make build GAME           asm + nasm + assets for one game
  make check GAME           smoke-test game (5s timeout, requires build first)
  make run GAME             run game in dosbox
  make verify [GAME...]     verify one or all games
  make clean [GAME...]      clean one or all games
  make rebuild GAME BIN     nasm-only rebuild of one binary
  make set-baseline         pin current stats as baseline (git-committable)
  make charts               regenerate all PNGs + CSVs from existing stats

Env:
  EXTRA_FLAGS               space-separated flags forwarded to main.py:
                              --exact-bytes       strict byte-accurate mode
                              --detailed-timings  full-precision phase timings
  EXACT_FLAG (deprecated)   same as EXTRA_FLAGS=--exact-bytes
'''


def cmd_set_baseline():
    count = 0
    for root, dirs, files in os.walk(STATS_DIR):
        count += sum(1 for f in files if f.endswith('.json'))
    print(f'Found {count} binaries in stats')
    shutil.copytree(STATS_DIR, BASELINE_DIR, dirs_exist_ok=True)
    _charts_all()


def _charts(game):
    try:
        from lib.sparkline import charts
        charts(game)
    except Exception as e:
        print(f'  charts: {e}')


def _charts_all():
    try:
        from lib.sparkline import charts_all
        charts_all()
    except Exception as e:
        print(f'  all charts: {e}')


def cmd_charts():
    games = list_game_dirs()
    for g in games:
        print(f'Charts: {g}')
        _charts(g)
    _charts_all()
    print('Done')


def main():
    flags = [a for a in sys.argv[1:] if a.startswith('--')]
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    all_games = list(_games())

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
            print('Usage: make check GAME')
            sys.exit(1)
        for g in args:
            if g not in all_games:
                print(f'Unknown game: {g}')
                sys.exit(1)
            cmd_check(g)
        return

    if '--run' in flags:
        if not args:
            print('Usage: make run GAME')
            sys.exit(1)
        for g in args:
            if g not in all_games:
                print(f'Unknown game: {g}')
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
            print('Usage: make rebuild GAME BINARY')
            sys.exit(1)
        game, binary = args[0], args[1]
        if game not in all_games:
            print(f'Unknown game: {game}')
            sys.exit(1)
        cmd_rebuild(game, binary)
        return

    if '--build' in flags:
        targets = args or all_games
        _build_games(targets, all_games)
        return

    # No known flag — error
    print(f'Unknown command: {" ".join(args)}')
    print(HELP)
    sys.exit(1)


def _build_games(targets, all_games):
    for game in targets:
        if game not in all_games:
            print(f'Unknown game: {game}')
            print(f'Known: {", ".join(all_games)}')
            sys.exit(1)
        asm_game(game)
    if len(targets) > 1 or targets == all_games:
        _charts_all()


if __name__ == '__main__':
    main()
