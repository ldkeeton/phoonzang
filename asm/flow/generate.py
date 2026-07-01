#!/usr/bin/env python3
"""Generate Mermaid flow graphs of the disassembler's own architecture.

Produces two kinds of graphs:

  1. **Pipeline architecture** (static) — shows the developer onboarding
     view: entry point, phase pipeline with input/output slots, iterative
     loop, post-refinement, label resolution, and disassembly emission.

  2. **Pipeline trace** (detailed) — from stats/detailed/*.jsonl, shows how
     the disassembler pipeline executed phase-by-phase with timing and
     event counts.

Usage (from asm/):
  python3 -m flow.generate                                  # both
  python3 -m flow.generate DSAVANT                          # trace for one game
  python3 -m flow.generate DSAVANT ds                       # trace for one binary
  python3 -m flow.generate --arch                           # architecture only
  python3 -m flow.generate --trace                          # trace only
"""

import os
import sys

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _ASM_DIR not in sys.path:
    sys.path.insert(0, _ASM_DIR)

import flow.base as base
from flow.base import BUILD_OUT


def process_arch():
    """Generate pipeline architecture onboarding diagram."""
    out_dir = os.path.join(BUILD_OUT, 'arch')
    os.makedirs(out_dir, exist_ok=True)

    from flow.graph_architecture import generate_architecture_diagram
    generate_architecture_diagram(out_dir)

    print(f'  architecture diagram in {out_dir}')


def process_trace(game, binary_name):
    """Generate pipeline trace flow from JSONL."""
    jsonl_path = base.find_detailed_jsonl(game, binary_name)
    if not jsonl_path:
        print(f'  [trace] no JSONL trace for {game}/{binary_name} (run main.py --trace)')
        return

    out_dir = os.path.join(BUILD_OUT, 'trace')
    os.makedirs(out_dir, exist_ok=True)

    from flow.graph_trace import generate_trace_flow, generate_trace_per_phase_cfgs
    label = f'{game}_{binary_name}'
    generate_trace_flow(jsonl_path, label, out_dir)
    generate_trace_per_phase_cfgs(jsonl_path, label, out_dir)


def main():
    base.build_output_dirs()

    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    do_arch = '--arch' in sys.argv
    do_trace = '--trace' in sys.argv
    do_all = not do_arch and not do_trace

    if do_arch or do_all:
        print('\n=== Pipeline architecture ===')
        process_arch()

    traced_bins = 0
    if do_trace or do_all:
        games = base.get_games()
        if not games:
            print('No games found in apps/')
            sys.exit(1)

        if len(args) >= 2:
            game = args[0]
            binary = args[1]
            if game not in games:
                print(f'Unknown game: {game}')
                sys.exit(1)
            bins = base.discover_binaries(game)
            if binary not in bins:
                print(f'Unknown binary "{binary}" in {game}: {", ".join(sorted(bins))}')
                sys.exit(1)
            print(f'\n=== Pipeline trace: {game}/{binary} ===')
            process_trace(game, binary)
            if base.find_detailed_jsonl(game, binary):
                traced_bins += 1
            return

        target = args[0] if args else None

        if target:
            if target in games:
                bins = base.discover_binaries(target)
                for name, (_entry, _so) in sorted(bins.items()):
                    j = base.find_detailed_jsonl(target, name)
                    if j:
                        print(f'\n=== Pipeline trace: {target}/{name} ===')
                        process_trace(target, name)
                        traced_bins += 1
            else:
                print(f'Unknown target: {target}')
                sys.exit(1)
        else:
            for game in games:
                bins = base.discover_binaries(game)
                for name, (_entry, _so) in sorted(bins.items()):
                    j = base.find_detailed_jsonl(game, name)
                    if j:
                        print(f'\n=== Pipeline trace: {game}/{name} ===')
                        process_trace(game, name)
                        traced_bins += 1
        if not traced_bins:
            print('  (no JSONL traces found — run main.py --trace first)')

    # Summary
    for sub in ('arch', 'trace'):
        d = os.path.join(BUILD_OUT, sub)
        if os.path.isdir(d):
            mmds = [f for f in os.listdir(d) if f.endswith('.mmd')]
            sub_count = 0
            if sub == 'trace':
                subs_d = os.path.join(d, 'phases')
                if os.path.isdir(subs_d):
                    sub_count = len(os.listdir(subs_d))
            detail = f' + {sub_count} detail files' if sub_count else ''
            print(f'  {sub}: {len(mmds)} file(s){detail}')


if __name__ == '__main__':
    main()
