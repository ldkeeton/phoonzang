"""One build at a time: an OS advisory lock on ``.cache/build.lock``.

The kernel drops the lock when the process ends (exit, crash, ``kill -9``), so
nothing can be left stuck and no expiry or heartbeat is needed.  The file is
never deleted (see :mod:`make.clean`), which keeps every contender on the same
inode.
"""

import fcntl
import os
import time

from .cachedirs import CACHE_ROOT

RETRY_SECONDS = 5
LOCK_NAME = 'build.lock'
LOCK_PATH = os.path.join(CACHE_ROOT, LOCK_NAME)
_held = None


def acquire():
    """Take the build lock for this process, silently waiting while another build has it."""
    global _held
    if _held is not None:
        return
    os.makedirs(os.path.dirname(LOCK_PATH), exist_ok=True)
    f = open(LOCK_PATH, 'a')
    while True:
        try:
            fcntl.flock(f, fcntl.LOCK_EX | fcntl.LOCK_NB)
            break
        except BlockingIOError:
            time.sleep(RETRY_SECONDS)
    _held = f
