"""Own every external process a build starts.

DOSBox-X installs its own SIGINT/SIGTERM handlers, so a terminal Ctrl-C does
not reliably stop it, and an interrupted Python build can leave it (and the
``.cache/tmp/asmaz-*`` work directory it runs in) behind.  Every child started
through :func:`run` is therefore:

* the leader of its own process group (``start_new_session=True``), so the
  whole tree -- DOSBox and anything it forks -- can be signalled at once;
* registered while it is alive (:func:`register`), so :func:`install`'s signal
  handler can terminate everything before the interpreter exits;
* bounded by an optional timeout (``ASM_DOSBOX_TIMEOUT`` at the DOSBox call
  sites), so a wedged emulator is killed instead of hanging the build.

:func:`reap_stale` runs once a build owns the build lock and removes DOSBox
processes and work directories left by an earlier interrupted run.
"""

import atexit
import os
import re
import shutil
import signal
import subprocess
import sys
import threading
import time

from .cachedirs import use_cache_tmp

#: Process groups (``pid`` of a child started with ``start_new_session``) that
#: will be signalled on interruption.
_registry = {}
_lock = threading.Lock()
_cancelled = threading.Event()
_installed = False
_terminating = False

#: Temp work-directory prefixes used by the Aztec drivers.
WORK_PREFIXES = ('asmaz-', 'asmazb-', 'azlibchk-', 'asmazlib-')
_TMP_ROOT = use_cache_tmp()

#: Seconds between SIGTERM and SIGKILL when shutting a child down.
GRACE = 2.0


def cancelled():
    """True once an interrupt has begun; no new child should be started."""
    return _cancelled.is_set()


def register(proc):
    """Track *proc* (started with ``start_new_session=True``) until it exits."""
    if proc is None or proc.pid is None:
        return proc
    with _lock:
        _registry[proc.pid] = proc
    return proc


def unregister(proc):
    if proc is None:
        return
    with _lock:
        _registry.pop(proc.pid, None)


def _alive(proc):
    try:
        return proc.poll() is None
    except (OSError, ValueError):
        return False


def _signal_group(pid, sig):
    """Signal the process group led by *pid*; ignore an already-gone group."""
    try:
        os.killpg(pid, sig)
    except (ProcessLookupError, PermissionError):
        pass


def terminate(proc, grace=GRACE):
    """Stop one registered child and its group; return True if it had to be
    killed."""
    if not _alive(proc):
        return False
    _signal_group(proc.pid, signal.SIGTERM)
    try:
        proc.wait(timeout=grace)
        return True
    except subprocess.TimeoutExpired:
        pass
    _signal_group(proc.pid, signal.SIGKILL)
    try:
        proc.wait(timeout=1)
    except subprocess.TimeoutExpired:
        pass
    return True


def terminate_all(grace=GRACE):
    """Stop every registered child group; return how many were still alive."""
    _cancelled.set()
    with _lock:
        procs = list(_registry.values())
    procs = [p for p in procs if _alive(p)]
    if not procs:
        return 0
    for proc in procs:
        _signal_group(proc.pid, signal.SIGTERM)
    deadline = time.monotonic() + grace
    for proc in procs:
        try:
            proc.wait(timeout=max(0.0, deadline - time.monotonic()))
        except subprocess.TimeoutExpired:
            pass
    for proc in procs:
        if _alive(proc):
            _signal_group(proc.pid, signal.SIGKILL)
    for proc in procs:
        try:
            proc.wait(timeout=1)
        except subprocess.TimeoutExpired:
            pass
        unregister(proc)
    return len(procs)


def _handle(signum, frame):
    """Terminate the child tree, then let the normal unwind happen."""
    global _terminating
    if _terminating:
        # Second Ctrl-C: stop waiting for children.
        terminate_all(grace=0)
        os._exit(128 + signum)
    _terminating = True
    count = terminate_all()
    try:
        print(f'\ninterrupted: stopped {count} child process group(s)',
              file=sys.stderr, flush=True)
    except OSError:
        pass
    if signum == signal.SIGINT:
        raise KeyboardInterrupt
    raise SystemExit(128 + signum)


def install():
    """Install the interrupt handlers (idempotent).

    Call this early in a top-level program -- the ``make`` driver and
    ``python -m main`` -- so Ctrl-C, SIGTERM, SIGHUP and SIGQUIT all clean up
    the children even when the main thread is waiting in a thread pool.
    """
    global _installed
    if _installed:
        return
    _installed = True
    for signum in (signal.SIGINT, signal.SIGTERM, signal.SIGHUP,
                   signal.SIGQUIT):
        try:
            signal.signal(signum, _handle)
        except (ValueError, OSError):
            # Not the main thread, or the signal is unavailable.
            pass
    atexit.register(lambda: terminate_all(grace=0.5))


def run(*popenargs, input=None, capture_output=False, timeout=None,
        check=False, **kwargs):
    """``subprocess.run`` that tracks the child and can be interrupted.

    The child always starts in a new session/process group.  A timeout kills
    the whole group and re-raises :class:`subprocess.TimeoutExpired` with the
    output collected so far.
    """
    if _cancelled.is_set():
        raise KeyboardInterrupt
    if input is not None:
        if kwargs.get('stdin') is not None:
            raise ValueError('stdin and input arguments may not both be used.')
        kwargs['stdin'] = subprocess.PIPE
    if capture_output:
        if kwargs.get('stdout') is not None or kwargs.get('stderr') is not None:
            raise ValueError('stdout and stderr arguments may not be used '
                             'with capture_output.')
        kwargs['stdout'] = subprocess.PIPE
        kwargs['stderr'] = subprocess.PIPE
    kwargs.setdefault('start_new_session', True)

    proc = subprocess.Popen(*popenargs, **kwargs)
    register(proc)
    try:
        try:
            stdout, stderr = proc.communicate(input, timeout=timeout)
        except subprocess.TimeoutExpired as exc:
            terminate(proc, grace=0)
            stdout, stderr = proc.communicate()
            exc.output, exc.stderr = stdout, stderr
            raise
        except BaseException:
            terminate(proc, grace=0.5)
            raise
    finally:
        unregister(proc)

    result = subprocess.CompletedProcess(proc.args, proc.returncode,
                                         stdout, stderr)
    if check:
        result.check_returncode()
    return result


def _proc_cmdline(pid):
    try:
        with open(f'/proc/{pid}/cmdline', 'rb') as f:
            raw = f.read()
    except OSError:
        return ''
    return raw.replace(b'\0', b' ').decode('utf-8', 'replace')


def _proc_uid(pid):
    try:
        return os.stat(f'/proc/{pid}').st_uid
    except OSError:
        return None


def _proc_ppid(pid):
    try:
        with open(f'/proc/{pid}/stat') as f:
            fields = f.read().rsplit(')', 1)[1].split()
        return int(fields[1])
    except (OSError, ValueError, IndexError):
        return None


def _stale_workdir(cmdline):
    """The work directory named by a DOSBox ``-conf`` argument, if ours."""
    match = re.search(r'-conf\s+(\S+)', cmdline)
    if not match:
        return None
    conf = match.group(1)
    parent = os.path.dirname(conf)
    if os.path.dirname(parent) != _TMP_ROOT:
        return None
    return parent if os.path.basename(parent).startswith(WORK_PREFIXES) else None


def reap_stale():
    """Kill DOSBoxes and remove work dirs left by an interrupted run.

    Only same-uid processes whose ``-conf`` points into one of our temp work
    directories are considered, and callers run this while holding the build
    lock, so no live build can be using them.  Returns ``(killed, removed)``.
    """
    killed = removed = 0
    if not os.path.isdir('/proc'):
        return killed, removed
    uid = os.getuid()
    for entry in os.listdir('/proc'):
        if not entry.isdigit():
            continue
        pid = int(entry)
        if pid == os.getpid() or _proc_uid(pid) != uid:
            continue
        cmdline = _proc_cmdline(pid)
        if 'dosbox' not in cmdline.lower():
            continue
        work = _stale_workdir(cmdline)
        if work is None:
            continue
        ppid = _proc_ppid(pid)
        if ppid not in (None, 1) and _proc_uid(ppid) == uid:
            # Still parented by something alive (possibly this build); leave it.
            continue
        try:
            os.kill(pid, signal.SIGTERM)
        except OSError:
            continue
        killed += 1

    # Give them a moment to release their work dirs, then force and clean up.
    deadline = time.monotonic() + 1.0
    while killed and time.monotonic() < deadline:
        time.sleep(0.05)
        break

    if os.environ.get('ASM_KEEP_BATCH'):
        return killed, removed
    for name in os.listdir(_TMP_ROOT):
        if not name.startswith(WORK_PREFIXES):
            continue
        path = os.path.join(_TMP_ROOT, name)
        if not os.path.isdir(path):
            continue
        try:
            shutil.rmtree(path, ignore_errors=True)
        except OSError:
            continue
        if not os.path.exists(path):
            removed += 1
    return killed, removed
