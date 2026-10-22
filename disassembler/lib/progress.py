"""Opt-in live progress lines (``VERBOSE=1`` / ``--verbose``).

A build worker runs with Python-level stdout/stderr redirected into buffers so
its result can be shipped back to the driver as one JSON line.  A progress line
therefore cannot go through ``print``: it would be captured with the result and
only shown when the step finished -- which is useless when the step is the one
that hangs.

:func:`log` writes straight to file descriptor 2 instead.  The driver reads that
pipe as it is produced and echoes each line, so the last line printed is the
last thing the worker actually started.  When the driver itself logs, fd 2 is
its ordinary stderr.
"""

import os
import sys
import threading
import time

#: The driver is started with ``VERBOSE=1``; a worker also gets ``--verbose``
#: forwarded by :func:`make.common._main_cmd`, so either switch enables it.
ENABLED = (bool(os.environ.get('VERBOSE'))
           or '--verbose' in sys.argv
           or '--detailed-timings' in sys.argv)

#: When the build began: the driver's import sets it, and every worker it
#: starts inherits it, so all their lines count from the same moment.
_T0_VAR = 'ASM_PROGRESS_T0'
try:
    _start = float(os.environ[_T0_VAR])
except (KeyError, ValueError):
    _start = time.time()
    os.environ[_T0_VAR] = repr(_start)
_lock = threading.Lock()


def elapsed():
    """Seconds since the build began."""
    return time.time() - _start


def log(message):
    """Print one progress line now, if progress output is enabled."""
    if not ENABLED:
        return
    line = f'[{elapsed():6.1f}s] {message}\n'.encode('utf-8', 'replace')
    try:
        with _lock:
            os.write(2, line)
    except OSError:
        # The driver went away; nothing useful left to do about it here.
        pass
