"""Command-line dispatch for the ``make`` companion tool."""

import os
import sys

from lib import buildlock, childproc

from .build import _build_projects, cmd_build_binary, cmd_rebuild
from .charts import cmd_charts, cmd_set_baseline
from .clean import cmd_clean
from .common import _apps, _asm_one
from .elf import cmd_elf_rebuild
from .init import cmd_init
from .inspect import cmd_data, cmd_info, cmd_probe
from .naming import cmd_name, cmd_refs, specs_from_makeflags
from .prebuild import cmd_prebuild
from .readme import cmd_readme
from .run import _parse_check_args, cmd_check, cmd_run
from .stats_diff import cmd_stats_diff
from .testing import cmd_test, run_tests
from .verify import cmd_verify

HELP = '''Usage: make [command] [project...]

Commands (space-separated):
  make init                 sparse-clone only the dos_compilers folders listed in sidecars,
                            then unpack the Aztec runtime sources into dos_compilers/aztec_src/
  make libcheck             rebuild Aztec v4.2b C.LIB from dos_compilers/aztec_src/ and compare to the shipped one
  make all                  prebuild (clean .cache + Aztec mux), build, verify all, elf-rebuild, make test, make test slow
  make all notest           the same, without the tests at the end
  make build PROJECT [BIN]  asm + nasm + assets (seeds .c; runs prebuild first if missing)
  make prebuild [PROJECT...]  clean .cache, rebuild aztec libs + signature DB, run the Aztec C mux
  make check PROJECT [SECONDS] smoke-test game (default 5s, requires build first)
  make run PROJECT          run game in dosbox-x
  make verify [PROJECT...]  verify one or all projects
  make clean [PROJECT...]   clean one or all projects (no args: delete .cache,
                            except the build lock and pinned baselines)
  make name PROJECT BIN SYMBOL=NAME[:NOTE] ...
                            name routines/globals as the build spells them (cseg_0d3a,
                            bss_1234, io_loc_KRUO, a routines tag, or a current name):
                            writes every naming surface (function_names, routines,
                            dispatch_table slots), renames hand sources and their
                            references, then build + rebuild; DRY_RUN=1 / --dry-run
                            lists the changes without writing.  A dotted shared
                            alias (stem.bss1) names each donor's bss_XXXX
  make info PROJECT BIN ROUTINE  fragment span, co-tenant routines, callers, source
                            and the tool/flags the build uses; shared/ is searched
                            when the routine is not in BIN's own folder
  make refs PROJECT BIN ROUTINE  list the symbols ROUTINE references that still
                            need names: value, space, width, canonical name,
                            definition, and raw data operands (already-named
                            callees are omitted).  For a shared routine it also
                            lists each dotted alias and the donors' own names
  make data PROJECT SEG OFFSET [BIN]  bytes at DS/SS/ES/CS:OFFSET, its canonical name
                            and whether the image file backs it
  make probe PROJECT BIN ROUTINE [FILE=path] [LINKED=1]
                            compile one candidate source with the routine's exact
                            tool/flags; print code, fixups and length.  LINKED=1
                            resolves relocations and gates the linked bytes against
                            the original fragment
  make rebuild [PROJECT [BIN [ROUTINE]]]  recompile .c (must match the original bytes;
                            --allow-diff to relax) + nasm; default: everything.
                            With two arguments the selector is the routine, gated
                            against every binary that contains it
  make elf-rebuild [PROJECT [BIN]]  full rebuild from current sources (C resplice +
                            link + all binaries); ELF/DWARF for BIN (default host)
  make set-baseline         pin current stats as the local baseline
  make stats-diff           current-vs-baseline KPI delta (+ delta.json)
  make charts               regenerate all PNGs + CSVs from existing stats
  make readme               regenerate README.md + readme/heatmap.svg
  make test [TEST...]       run the unit test suite in disassembler/tests (optionally
                            only the named dotted tests); skips @slow tests
  make test slow            run only the @slow tests (>= 100 ms)

Env:
  VERBOSE=1                 live progress from the build driver and every worker, tagged
                            with the binary and a timestamp; worker stderr is echoed as
                            it is written
  ASM_DOSBOX_SHOW=1         show the DOSBox window while compiling (headless otherwise)
  ASM_DOSBOX_TIMEOUT=SECS   bound one DOSBox session (default 300; 0 disables)
  ASM_PROFILE=DIR           write each build worker's cProfile to DIR/<binary>.prof
  JSON=1                    machine-readable output from ``info``/``refs``/``data``/``probe``
  LEN=N                     bytes ``make data`` prints (default 16)
  LINKED=1                  ``make probe``: resolve relocations and compare the
                            linked bytes with the original fragment
  EXTRA_FLAGS               space-separated flags forwarded to python -m main:
                              --stats             write stats (.cache/stats)
                              --exact-bytes       strict byte-accurate mode
                              --allow-diff        rebuild: don't require .c to match the original
                              --detailed-timings  full-precision phase timings
                              --no-show-offsets   suppress instruction offsets
                              --verbose           live progress (as VERBOSE=1 above)
  EXACT_FLAG (deprecated)   same as EXTRA_FLAGS=--exact-bytes

Stats workflow (LLM/human regression loop):
  EXTRA_FLAGS=--stats make build PROJECT   # snapshot -> .cache/stats
  make set-baseline                        # pin -> .cache/_baseline
  ...edit heuristics...
  EXTRA_FLAGS=--stats make build PROJECT
  make stats-diff                          # read the delta
'''


def main():
    # Every make command holds the build lock: concurrent runs queue here,
    # whichever command they are for (lib.buildlock).
    childproc.install()
    buildlock.acquire()
    # With the lock held no other build can own a DOSBox, so anything left in
    # one of our temp work dirs is from an interrupted run.
    killed, removed = childproc.reap_stale()
    if killed or removed:
        print(f'cleaned up {killed} stale DOSBox process(es), '
              f'{removed} work dir(s)', file=sys.stderr)

    flags = [a for a in sys.argv[1:] if a.startswith('--')]
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    all_projects = list(_apps())

    if '--help' in flags:
        print(HELP)
        return

    if '--all' in flags:
        for project in all_projects:
            cmd_prebuild(project)
        _build_projects(all_projects, all_projects, prebuild=False)
        cmd_verify([])
        cmd_elf_rebuild(None, None, all_projects)
        if 'notest' in args:
            return
        fast_ok = run_tests([])
        slow_ok = run_tests(['slow'])
        sys.exit(0 if fast_ok and slow_ok else 1)

    if '--init' in flags:
        cmd_init()
        return

    if '--libcheck' in flags:
        from lib.aztec.libcheck import cmd_libcheck
        sys.exit(0 if cmd_libcheck() else 1)

    if '--verify' in flags:
        cmd_verify(args)
        return

    if '--clean' in flags:
        cmd_clean(args)
        return

    if '--prebuild' in flags:
        for project in args:
            if project not in all_projects:
                print(f'Unknown project: {project}')
                print(f'Known: {", ".join(all_projects)}')
                sys.exit(1)
        for project in (args or all_projects):
            cmd_prebuild(project)
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

    if '--name' in flags:
        # From make, SYMBOL=NAME arguments are variable overrides: they reach
        # us through MAKEFLAGS, not argv.
        specs = [a for a in args if '=' in a] + specs_from_makeflags()
        pos = [a for a in args if '=' not in a]
        if len(pos) != 2 or not specs:
            print('Usage: make name PROJECT BIN SYMBOL=NAME[:NOTE] ...')
            sys.exit(1)
        if pos[0] not in all_projects:
            print(f'Unknown project: {pos[0]}')
            sys.exit(1)
        dry_run = ('--dry-run' in flags
                   or os.environ.get('DRY_RUN', '').lower()
                   in ('1', 'true', 'yes'))
        cmd_name(pos[0], pos[1], specs, all_projects, dry_run=dry_run)
        return

    # ``FOO=bar make ...`` reaches us through MAKEFLAGS, not argv.
    make_vars = dict(spec.partition('=')[::2] for spec in specs_from_makeflags())
    json_out = ('--json' in flags
                or os.environ.get('JSON', '').lower() in ('1', 'true', 'yes')
                or make_vars.get('JSON', '').lower() in ('1', 'true', 'yes'))

    if '--info' in flags:
        if len(args) != 3 or args[0] not in all_projects:
            print('Usage: make info PROJECT BIN ROUTINE')
            sys.exit(1)
        cmd_info(*args, json_out=json_out)
        return

    if '--refs' in flags:
        if len(args) != 3 or args[0] not in all_projects:
            print('Usage: make refs PROJECT BIN ROUTINE [--json]')
            sys.exit(1)
        cmd_refs(*args, json_out=json_out)
        return

    if '--data' in flags:
        if len(args) not in (3, 4) or args[0] not in all_projects:
            print('Usage: make data PROJECT SEG OFFSET [BIN] [LEN=n]')
            sys.exit(1)
        try:
            length = int(os.environ.get('LEN', make_vars.get('LEN', '16')), 0)
        except ValueError:
            length = 16
        positional = []
        for arg in args:
            if arg.startswith('LEN='):
                length = int(arg[4:], 0)
            else:
                positional.append(arg)
        if len(positional) not in (3, 4):
            print('Usage: make data PROJECT SEG OFFSET [BIN] [LEN=n]')
            sys.exit(1)
        cmd_data(*positional, length=length, json_out=json_out)
        return

    if '--probe' in flags:
        positional = [a for a in args if not a.startswith('FILE=')]
        sources = [a[5:] for a in args if a.startswith('FILE=')]
        if not sources and make_vars.get('FILE'):
            sources = [make_vars['FILE']]
        if len(positional) != 3 or positional[0] not in all_projects:
            print('Usage: make probe PROJECT BIN ROUTINE [FILE=path] '
                  '[LINKED=1] [--json]')
            sys.exit(1)
        linked = ('--linked' in flags
                  or os.environ.get('LINKED', '').lower()
                  in ('1', 'true', 'yes')
                  or make_vars.get('LINKED', '').lower()
                  in ('1', 'true', 'yes'))
        cmd_probe(*positional, source=sources[0] if sources else None,
                  json_out=json_out, linked=linked)
        return

    if '--rebuild' in flags:
        project = args[0] if args else None
        binary = args[1] if len(args) > 1 else None
        routine = args[2] if len(args) > 2 else None
        if project is not None and project not in all_projects:
            print(f'Unknown project: {project}')
            sys.exit(1)
        if routine and not binary:
            print('Usage: make rebuild [PROJECT [BIN [ROUTINE]]]')
            sys.exit(1)
        cmd_rebuild(project, binary, all_projects, only=routine)
        return

    if '--elf-rebuild' in flags:
        project = args[0] if args else None
        binary = args[1] if len(args) > 1 else None
        if project is not None and project not in all_projects:
            print(f'Unknown project: {project}')
            sys.exit(1)
        cmd_elf_rebuild(project, binary, all_projects)
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
