#!/usr/bin/env python3
"""Generate Mermaid flow graphs of the disassembler's own architecture.

Produces three kinds of output:

  1. **Pipeline architecture** — one flowchart per level (0 project, 1 binary,
     2 verify) generated from the stage ledgers ``make build`` leaves in
     ``.cache/<project>/stages/``.  A repair is a red dashed edge back to the
     step it repairs.  ``--stages`` also writes ``<project>_PIPELINE.md``: the
     stage table, who-rewrites-whom, and artifacts with more than one writer.

  2. **Pipeline trace** (detailed) — from stats/detailed/*.jsonl, shows how
     the disassembler pipeline executed phase-by-phase with timing and
     event counts.

Usage (from asm/):
  python3 -m flow.generate                                  # both
  python3 -m flow.generate DSAVANT                          # trace for one project
  python3 -m flow.generate DSAVANT ds                       # trace for one binary
  python3 -m flow.generate --arch                           # architecture only
  python3 -m flow.generate --stages [PROJECT]               # PIPELINE.md + diagrams
  python3 -m flow.generate --html [PROJECT]                 # one-page health view
  python3 -m flow.generate --baseline [PROJECT]             # pin waste numbers
  python3 -m flow.generate --lock                           # rewrite .cache/_flow/pipeline.lock
  python3 -m flow.generate --check [PROJECT]                # lock + ledger check
  python3 -m flow.generate --trace                          # trace only
"""

import os
import sys

_ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _ASM_DIR not in sys.path:
    sys.path.insert(0, _ASM_DIR)

import flow.base as base
from flow.base import BUILD_OUT


def process_arch(project=None):
    """Generate the per-level pipeline diagrams from the stage ledgers."""
    out_dir = os.path.join(BUILD_OUT, 'arch')
    os.makedirs(out_dir, exist_ok=True)

    from flow.graph_architecture import generate_architecture_diagram
    generate_architecture_diagram(out_dir, project)

    print(f'  architecture diagrams in {out_dir}')


def process_stages(project=None):
    """Write PIPELINE.md (and the diagrams) for *project*, or every project."""
    from flow import graph_stages
    for name in ([project] if project else base.get_projects()):
        written = graph_stages.write(name)
        if written is None:
            continue
        path, found = written
        print(f'\n=== Pipeline ledger: {name} ===')
        for line in graph_stages.headline(found):
            print('  ' + line)
        print(f'  wrote {path}')
    process_arch(project)
    process_html(project)


def process_html(project=None):
    """Write the one-page health view for *project*, or every project."""
    from flow import graph_health
    for name in ([project] if project else base.get_projects()):
        path = graph_health.write_html(name)
        if path:
            print(f'  health page: {path}')


def process_baseline(project):
    """Pin the current waste numbers as the ratchet baseline."""
    from flow import graph_health, graph_stages
    rows = graph_stages.aggregate(graph_stages.load(project))
    graph_health.write_baseline(rows)
    print(f'  wrote {graph_health.BASELINE_PATH}: {graph_health.metrics(rows)}')


def process_lock():
    """Rewrite pipeline.lock from the source scan (keeps the undeclared list)."""
    from flow import lock
    stages, problems = lock.scan()
    for problem in problems:
        print(f'  PROBLEM {problem}')
    _, undeclared = lock.read()
    lock.write(stages, undeclared)
    print(f'  wrote {lock.LOCK_PATH} ({len(stages)} stages)')
    return not problems


def process_check(project=None):
    """Exit status 1 when the lock or the ledgers disagree with the source."""
    from flow import graph_health, graph_stages, lock
    stages, problems = lock.scan()
    locked, allowed = lock.read()
    bad = list(problems) + lock.diff(stages, locked)
    for name in ([project] if project else base.get_projects()):
        ledgers = graph_stages.load(name)
        if ledgers:
            found = graph_stages.findings(graph_stages.aggregate(ledgers))
            bad += [f'{name}: undeclared rewrite by {n}'
                    for n in found['undeclared'] if n not in allowed]
            pinned = graph_health.read_baseline()
            if pinned:
                bad += [f'{name}: {line}' for line in graph_health.compare_baseline(
                    graph_stages.aggregate(ledgers), pinned)]
    for line in bad:
        print('  ' + line)
    print('pipeline check: ' + ('FAILED' if bad else 'ok'))
    return not bad


def process_trace(project, binary_name):
    """Generate pipeline trace flow from JSONL."""
    jsonl_path = base.find_detailed_jsonl(project, binary_name)
    if not jsonl_path:
        print(f'  [trace] no JSONL trace for {project}/{binary_name} (run python -m main --trace)')
        return

    out_dir = os.path.join(BUILD_OUT, 'trace')
    os.makedirs(out_dir, exist_ok=True)

    from flow.graph_trace import generate_trace_flow, generate_trace_per_phase_cfgs
    label = f'{project}_{binary_name}'
    generate_trace_flow(jsonl_path, label, out_dir)
    generate_trace_per_phase_cfgs(jsonl_path, label, out_dir)


def main():
    base.build_output_dirs()

    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    if '--lock' in sys.argv:
        sys.exit(0 if process_lock() else 1)
    if '--check' in sys.argv:
        sys.exit(0 if process_check(args[0] if args else None) else 1)
    if '--baseline' in sys.argv:
        process_baseline(args[0] if args else 'DSAVANT')
        return
    if '--html' in sys.argv:
        process_html(args[0] if args else None)
        return
    if '--stages' in sys.argv:
        process_stages(args[0] if args else None)
        return
    do_arch = '--arch' in sys.argv
    do_trace = '--trace' in sys.argv
    do_all = not do_arch and not do_trace

    if do_arch or do_all:
        print('\n=== Pipeline architecture ===')
        process_arch(args[0] if args and args[0] in base.get_projects() else None)

    traced_bins = 0
    if do_trace or do_all:
        projects = base.get_projects()
        if not projects:
            print('No projects found in apps/')
            sys.exit(1)

        if len(args) >= 2:
            project = args[0]
            binary = args[1]
            if project not in projects:
                print(f'Unknown project: {project}')
                sys.exit(1)
            bins = base.discover_binaries(project)
            if binary not in bins:
                print(f'Unknown binary "{binary}" in {project}: {", ".join(sorted(bins))}')
                sys.exit(1)
            print(f'\n=== Pipeline trace: {project}/{binary} ===')
            process_trace(project, binary)
            if base.find_detailed_jsonl(project, binary):
                traced_bins += 1
            return

        target = args[0] if args else None

        if target:
            if target in projects:
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
            for project in projects:
                bins = base.discover_binaries(project)
                for name, (_entry, _so) in sorted(bins.items()):
                    j = base.find_detailed_jsonl(project, name)
                    if j:
                        print(f'\n=== Pipeline trace: {project}/{name} ===')
                        process_trace(project, name)
                        traced_bins += 1
        if not traced_bins:
            print('  (no JSONL traces found — run python -m main --trace first)')

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
