"""``make build`` / ``make rebuild`` — assembly generation and NASM builds.

The generation order itself lives in :mod:`main.build`, so ``make build`` and
``python -m main`` cannot drift apart.  What ``make`` adds is the process
model: every binary is generated as its own ``python -m main`` subprocess, and
both that step and the NASM step run on a thread pool.
"""

import os
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed

from main.projects import discover_binaries
from main.build import build_project, nasm_binary
from lib.report import clear_project_stats

from .clean import clean_output
from .common import APPS, JOBS, PROJECT, _asm_one, _extra_flags
from .prebuild import _ensure_prebuild


def _stats_enabled():
    return '--stats' in _extra_flags()


def _generate(app):
    """A ``run_batch``: one subprocess per binary, on a thread pool."""
    def run(items):
        failed = []
        with ThreadPoolExecutor(max_workers=JOBS) as ex:
            futures = {ex.submit(_asm_one, app, name, flags): name
                       for name, flags in items}
            for f in as_completed(futures):
                if f.result() != 0:
                    print(f'  FAILED: {futures[f]}')
                    failed.append(futures[f])
                    # A failed consumer poisons the project; stop the batch.
                    ex.shutdown(wait=False, cancel_futures=True)
                    break
        return failed
    return run


def _assemble(out_dir):
    """A ``nasm_batch``: assemble the given binaries on a thread pool."""
    def run(items):
        failed = []
        with ThreadPoolExecutor(max_workers=JOBS) as ex:
            futures = {ex.submit(nasm_binary, out_dir, name, rel): name
                       for name, rel in items}
            for f in as_completed(futures):
                if f.result() != 0:
                    failed.append(futures[f])
        return failed
    return run


def asm_app(app):
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    failed = build_project(app, _generate(app), _assemble(out_dir))
    if failed:
        print(f'{app}: {len(set(failed))} binary(ies) failed to build')
        sys.exit(1)
    print(f'{app}: build OK')


def _prepare(app, *, clean=True, prebuild=True):
    """What every build does first: drop stale output, make sure prebuild exists."""
    if clean:
        clean_output(app)
    if prebuild:
        _ensure_prebuild(app)
    if _stats_enabled():
        clear_project_stats(app)


def cmd_build_binary(app, binary):
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)

    _prepare(app)
    failed = build_project(app, _generate(app), _assemble(out_dir), only=binary)
    if failed:
        sys.exit(1)
    print(f'build {app}/{binary} -> {bins[binary][0]}  [OK]')


def _rebuild_project(app, binary=None):
    """Recompile every ``.c`` (gated against the original) then NASM-assemble."""
    from .elf import resplice_c
    app_dir = os.path.join(APPS, app)
    out_dir = os.path.join(PROJECT, f'asm_{app}')
    bins = discover_binaries(app_dir)
    if binary is not None and binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)
    for name in sorted(bins):
        resplice_c(app, name)
    targets = [binary] if binary else sorted(bins)
    for name in targets:
        if nasm_binary(out_dir, name, bins[name][0]) != 0:
            sys.exit(1)
        print(f'rebuild {app}/{name} -> {bins[name][0]}  [OK]')


def cmd_rebuild(app=None, binary=None, all_projects=()):
    """``make rebuild [PROJECT [BIN]]``: all projects, one, or one binary."""
    for project in ([app] if app else all_projects):
        _rebuild_project(project, binary)


def _build_projects(targets, all_projects, *, clean=True, prebuild=True):
    for project in targets:
        if project not in all_projects:
            print(f'Unknown project: {project}')
            print(f'Known: {", ".join(all_projects)}')
            sys.exit(1)
    for project in targets:
        if clean:
            clean_output(project)
    for project in targets:
        _prepare(project, clean=False, prebuild=prebuild)
        asm_app(project)
