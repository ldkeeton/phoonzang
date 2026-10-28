"""Per-binary diagnostic logging for pipeline and verify stages.

Usage:
  - Enable via ``--diag`` in ``EXTRA_FLAGS`` (``EXTRA_FLAGS=--diag make build``).
  - A ``Diag`` context manager records key->value pairs; on close it flushes
    to ``src_PROJECT/diag/NAME.diag``.

All values are integers — easy to grep / diff between runs.
"""

import os
import threading

from lib.cachedirs import src_dir

_STATE = threading.local()


def enabled():
    return getattr(_STATE, 'enabled', False)


def begin(project, name):
    _STATE.enabled = True
    _STATE.project = project
    _STATE.name = name
    _STATE.kv = []
    _STATE.phase = None


def phase(p):
    _STATE.phase = p


def emit(key, value):
    if not enabled():
        return
    _STATE.kv.append((f'{_STATE.phase}.{key}' if _STATE.phase else key, value))


def _emit_multi(mapping):
    """Emit several keys at once, prefixing with the current phase."""
    pfx = f'{_STATE.phase}.' if _STATE.phase else ''
    for k, v in mapping.items():
        _STATE.kv.append((f'{pfx}{k}', v))


def flush():
    """Write accumulated k/v pairs and close the current binary's log."""
    if not enabled():
        return
    project = _STATE.project
    name = _STATE.name
    diag_dir = os.path.join(src_dir(project), 'diag')
    os.makedirs(diag_dir, exist_ok=True)
    path = os.path.join(diag_dir, f'{name}.diag')
    with open(path, 'w') as f:
        for k, v in _STATE.kv:
            f.write(f'{k}={v}\n')
    _STATE.enabled = False
    _STATE.kv = []
    _STATE.phase = None
