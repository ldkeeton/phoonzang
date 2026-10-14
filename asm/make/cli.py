"""Command-line dispatch for the ``make`` companion tool."""

import sys

from .build import _build_projects, cmd_build_binary, cmd_rebuild
from .charts import cmd_charts, cmd_set_baseline
from .clean import cmd_clean
from .common import _apps, _asm_one
from .elf import cmd_elf_rebuild
from .init import cmd_init
from .prebuild import cmd_prebuild
from .readme import cmd_readme
from .run import _parse_check_args, cmd_check, cmd_run
from .stats_diff import cmd_stats_diff
from .testing import cmd_test
from .verify import cmd_verify

HELP = '''Usage: make [command] [project...]

Commands (space-separated):
  make init                 sparse-clone only the dos_compilers folders listed in sidecars
  make all                  clean, build, then verify all projects
  make build PROJECT [BIN]  asm + nasm + assets (seeds .c; runs prebuild first if missing)
  make prebuild PROJECT [BIN]  rebuild aztec libs + signature DB, run the Aztec C mux
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT          run game in dosbox-x
  make verify [PROJECT...]  verify one or all projects
  make clean [PROJECT...]   clean one or all projects (no args: delete .cache)
  make rebuild [PROJECT [BIN]]  recompile .c (must match the original bytes;
                            --allow-diff to relax) + nasm; default: everything
  make elf-rebuild PROJECT [BIN]  full rebuild from current sources (C resplice +
                            link + all binaries); ELF/DWARF for BIN (default host)
  make decompile PROJECT BIN  disassemble + decompile binary to .c
  make set-baseline         pin current stats as the local baseline
  make stats-diff           current-vs-baseline KPI delta (+ delta.json)
  make charts               regenerate all PNGs + CSVs from existing stats
  make readme               regenerate README.md + readme/heatmap.svg
  make test [TEST...]       run the unit test suite in lib/tests (optionally
                            only the named dotted tests)

Env:
  EXTRA_FLAGS               space-separated flags forwarded to python -m main:
                              --stats             write stats (.cache/stats)
                              --exact-bytes       strict byte-accurate mode
                              --allow-diff        rebuild: don't require .c to match the original
                              --detailed-timings  full-precision phase timings
                              --no-show-offsets   suppress instruction offsets
  EXACT_FLAG (deprecated)   same as EXTRA_FLAGS=--exact-bytes

Stats workflow (LLM/human regression loop):
  EXTRA_FLAGS=--stats make build PROJECT   # snapshot -> .cache/stats
  make set-baseline                        # pin -> .cache/stats_baseline
  ...edit heuristics...
  EXTRA_FLAGS=--stats make build PROJECT
  make stats-diff                          # read the delta
'''


def main():
    flags = [a for a in sys.argv[1:] if a.startswith('--')]
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    all_projects = list(_apps())

    if '--help' in flags:
        print(HELP)
        return

    if '--all' in flags:
        cmd_clean([])
        _build_projects(all_projects, all_projects)
        cmd_verify([])
        return

    if '--init' in flags:
        cmd_init()
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

    if '--stats-diff' in flags:
        cmd_stats_diff()
        return

    if '--readme' in flags:
        cmd_readme()
        return

    if '--test' in flags:
        cmd_test(args)
        return

    if '--set-baseline' in flags:
        cmd_set_baseline()
        return

    if '--rebuild' in flags:
        project = args[0] if args else None
        binary = args[1] if len(args) > 1 else None
        if project is not None and project not in all_projects:
            print(f'Unknown project: {project}')
            sys.exit(1)
        cmd_rebuild(project, binary, all_projects)
        return

    if '--elf-rebuild' in flags:
        if not args:
            print('Usage: make elf-rebuild PROJECT [BINARY]')
            sys.exit(1)
        project = args[0]
        binary = args[1] if len(args) > 1 else None
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
