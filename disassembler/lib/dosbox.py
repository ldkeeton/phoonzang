"""Locate the DOSBox-X executable used to run DOS binaries.

Only DOSBox-X is supported: the stock/debug DOSBox floods stdout and wedges on
compiler errors.  Set ``ASM_DOSBOX`` to point at a specific build; otherwise the
first candidate on ``PATH`` is used.

DOSBox runs headless.  ``ASM_DOSBOX_SHOW=1`` shows the emulator window instead,
so a compile that hangs can be watched.  ``ASM_DOSBOX_TIMEOUT`` bounds one
DOSBox session in seconds (``0`` disables it).
"""

import os
import shutil
import time

from . import childproc, progress

_DOSBOX_CANDIDATES = ('dosbox-x',)


def resolve_dosbox():
    override = os.environ.get('ASM_DOSBOX')
    if override:
        return shutil.which(override) or override
    for candidate in _DOSBOX_CANDIDATES:
        found = shutil.which(candidate)
        if found:
            return found
    return 'dosbox-x'


DOSBOX = resolve_dosbox()


def show_gui():
    """True when ``ASM_DOSBOX_SHOW`` is on and a display is available."""
    if os.environ.get('ASM_DOSBOX_SHOW', '') in ('', '0'):
        return False
    return bool(os.environ.get('DISPLAY') or os.environ.get('WAYLAND_DISPLAY'))


def environment(work):
    """The child environment for a DOSBox session using *work* as HOME."""
    env = dict(os.environ)
    env['HOME'] = work
    # Audio is never needed; video is what makes the window visible.
    env['SDL_AUDIODRIVER'] = 'dummy'
    if not show_gui():
        env['SDL_VIDEODRIVER'] = 'dummy'
    else:
        env.pop('SDL_VIDEODRIVER', None)
    return env


def timeout():
    """Seconds one DOSBox session may run, or ``None`` when disabled."""
    raw = os.environ.get('ASM_DOSBOX_TIMEOUT', '900')
    try:
        value = float(raw)
    except ValueError:
        value = 900.0
    return None if value <= 0 else value


def run(argv, *, what, env, timeout=None):
    """Run one DOSBox session (``childproc.run``, output captured), logging
    ``<what>`` as it starts and ``<what> done in Ns`` when it ends."""
    progress.log(what)
    began = time.perf_counter()
    try:
        return childproc.run(argv, capture_output=True, text=True, env=env,
                             timeout=timeout)
    finally:
        progress.log(f'{what} done in {time.perf_counter() - began:.1f}s')
