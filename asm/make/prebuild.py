"""``make prebuild`` — run the slow Aztec C mux and cache extracted seeds."""

import os
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed

from lib.aztec.cache import prebuild_dir
from main import discover_binaries

from .common import APPS, JOBS, _asm_one


def cmd_prebuild(app, binary=None):
    """Resolve the Aztec C mux and persist it under .cache/asm_prebuild_<app>/.

    This intentionally stops the pipeline right after the mux manifest is written:
    no verify/emit and no NASM, and asm_<app>/ is left untouched.  Re-run
    after deleting .cache/asm_prebuild_<app>/ to force a full re-search.
    """
    app_dir = os.path.join(APPS, app)
    bins = discover_binaries(app_dir)
    if binary is not None and binary not in bins:
        print(f'Unknown binary "{binary}" in {app}')
        print(f'Known: {", ".join(sorted(bins))}')
        sys.exit(1)

    out_dir = prebuild_dir(app)
    os.makedirs(out_dir, exist_ok=True)
    os.environ['ASM_AZTEC_PREBUILD'] = '1'
    os.environ['ASM_AZTEC_PREBUILD_ONLY'] = '1'
    # Binaries disassemble in parallel (CPU-bound); the emulator is serialized
    # behind one inter-process lock (see lib/aztec/compile._dosbox_lock).
    os.environ['ASM_DOSBOX_LOCK'] = os.path.join(out_dir, '.dosbox.lock')
    targets = [binary] if binary else sorted(bins)
    try:
        with ThreadPoolExecutor(max_workers=JOBS) as ex:
            futures = {ex.submit(_asm_one, app, name): name
                       for name in targets}
            for future in as_completed(futures):
                rc = future.result()
                if rc != 0:
                    sys.exit(rc)
    finally:
        os.environ.pop('ASM_AZTEC_PREBUILD', None)
        os.environ.pop('ASM_AZTEC_PREBUILD_ONLY', None)
        os.environ.pop('ASM_DOSBOX_LOCK', None)

    target = f'{app}/{binary}' if binary else app
    print(f'prebuild {target} -> {out_dir}  [OK]')


def _ensure_prebuild(app):
    """Run the prebuild only when ``.cache/asm_prebuild_<app>/`` is absent."""
    if os.path.isdir(prebuild_dir(app)):
        return
    print(f'{app}: .cache/asm_prebuild_{app}/ missing; running prebuild first')
    cmd_prebuild(app)
