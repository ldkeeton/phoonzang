"""``make prebuild`` — run the slow Aztec C mux and compile its module seeds."""

import os
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed

from lib.aztec import build_db
from lib import progress
from lib.cachedirs import aztec_funcs_path, prebuild_dir
from main.projects import discover_binaries

from .clean import clean_cache
from .common import APPS, JOBS, _asm_one


def cmd_prebuild(app):
    """``make prebuild``: clean *app*'s ``.cache``, then rebuild what the Aztec
    C mux needs.

    ``.cache`` carries no version stamps; the clean here is what invalidates
    it.  Prebuild is a whole-project step.  ``src_<app>/`` is the build's to
    bring up to date (:func:`main.build._sync`), so it is left alone.
    """
    clean_cache(app)
    _run_prebuild(app)


def _run_prebuild(app):
    """Regenerate everything the Aztec C mux needs under ``.cache/<app>/``.

    In order:

    1. ``aztec_lib_obj/``    runtime-library OMF from the vendor ``.LIB`` files
    2. ``aztec_funcs.json``  signature DB built from those objects
    3. ``prebuild/``         the mux manifests, C seeds and compiled-module cache

    This intentionally stops the pipeline right after the mux manifest is
    written: no verify/emit and no NASM, and src_<app>/ is left untouched.
    """
    app_dir = os.path.join(APPS, app)
    bins = discover_binaries(app_dir)

    out_dir = prebuild_dir(app)
    os.makedirs(out_dir, exist_ok=True)
    # The signature DB feeds the disassembly (main/seeding.py), so it must
    # exist before any binary is processed.  Both steps are no-ops once built.
    if not os.path.exists(aztec_funcs_path(app)):
        progress.log(f'prebuild {app} | building signature database')
        build_db.build_for_project(app)
    os.environ['ASM_AZTEC_PREBUILD'] = '1'
    os.environ['ASM_AZTEC_PREBUILD_ONLY'] = '1'
    # Binaries disassemble in parallel (CPU-bound); the emulator is serialized
    # behind one inter-process lock (see lib/aztec/compile._dosbox_lock).
    os.environ['ASM_DOSBOX_LOCK'] = os.path.join(out_dir, '.dosbox.lock')
    targets = sorted(bins)
    progress.log(f'prebuild {app} | resolving {len(targets)} binaries')
    outputs = {name: [] for name in targets}
    failures = []
    try:
        with ThreadPoolExecutor(max_workers=JOBS) as ex:
            futures = {ex.submit(_asm_one, app, name, None, outputs[name]): name
                       for name in targets}
            for future in as_completed(futures):
                rc = future.result()
                progress.log(f'prebuild {app} | {futures[future]} done '
                             f'(status {rc})')
                if rc != 0:
                    failures.append(futures[future])
    finally:
        os.environ.pop('ASM_AZTEC_PREBUILD', None)
        os.environ.pop('ASM_AZTEC_PREBUILD_ONLY', None)
        os.environ.pop('ASM_DOSBOX_LOCK', None)

    # Binaries run in parallel, so their completion order is arbitrary.  Group
    # the captured output by binary name (empty output for binaries with no
    # aztec_* labels is skipped) so the run reads top-to-bottom.
    print(f'prebuild {app}: resolving Aztec C routines '
          f'({len(targets)} binaries)...')
    for name in targets:
        if not outputs[name]:
            continue
        print(f'\n{name}')
        for line in outputs[name]:
            print(line)

    if failures:
        print(f'prebuild {app}: {len(set(failures))} binary(ies) failed')
        sys.exit(1)

    print(f'\nprebuild {app} -> {out_dir}  [OK]')


def _ensure_prebuild(app):
    """Run the prebuild only when its ``.cache/<app>/`` data is incomplete."""
    if (os.path.isdir(prebuild_dir(app))
            and (os.path.exists(aztec_funcs_path(app))
                 or not build_db.project_binaries(app))):
        return
    print(f'{app}: prebuild cache missing; running the Aztec C mux first...')
    _run_prebuild(app)
