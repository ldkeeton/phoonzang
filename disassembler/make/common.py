"""Shared helpers for the ``make`` companion tool (commands: see ``HELP`` in cli.py)."""

import json
import os
import re
import subprocess
import sys
import threading
import time

PROJECT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
APPS = os.path.join(PROJECT, 'apps')
JOBS = os.cpu_count() or 4

if ASM not in sys.path:
    sys.path.insert(0, ASM)
from main.projects import load_whitelist

from lib import progress, childproc


# ── helpers ─────────────────────────────────────────────────────────────────

def _apps():
    whitelist = load_whitelist()
    for d in sorted(os.listdir(APPS)):
        p = os.path.join(APPS, d)
        if os.path.isdir(p) and (whitelist is None or d in whitelist):
            yield d


def _run(*args):
    return subprocess.run(args, capture_output=True, text=True)


def _extra_flags():
    """Return list of extra CLI flags to forward to python -m main based on env."""
    flags = []
    val = os.environ.get('EXTRA_FLAGS', '')
    if val:
        flags.extend(val.split())
    # backward compat: EXACT_FLAG
    old = os.environ.get('EXACT_FLAG', '')
    if old == '--exact-bytes' and '--exact-bytes' not in flags:
        flags.append('--exact-bytes')
    return flags


#: Kept even from a successful worker: the binary's own summary, plus anything
#: that reads like a warning (``aztec link``/``LINK WARN``/tracebacks) and the
#: C data-reference contract violations (plan.md section 18).
_WARN_LINE = re.compile(r'WARN|warn|FAIL|fail|Error|error:|Exception|Traceback'
                        r'|taken as written|not a build symbol')


def _verbose():
    """``EXTRA_FLAGS=--verbose`` or ``VERBOSE=1`` prints every worker line."""
    return bool(os.environ.get('VERBOSE')) or '--verbose' in _extra_flags()


def _main_cmd(app, binary, *flags):
    """``python -m main <app> [flags] <binary>`` with the forwarded flags."""
    cmd = [sys.executable, '-m', 'main', app, *flags]
    cmd.extend(_extra_flags())
    if _verbose() and '--verbose' not in cmd:
        # The worker then prints its full stats line and phase timings.
        cmd.append('--verbose')
    cmd.append(binary)
    return cmd


def _report(binary, returncode, stdout, stderr, sink=None, errors=None,
            streamed=False):
    """Print (or append to *sink*) what is kept of one worker run's output.

    A failed run's stderr is appended to *errors*, when given, for the caller
    to print last; otherwise it is printed now.  *streamed* means the caller
    already echoed stderr live (``VERBOSE``), so it is not repeated here.
    """
    lines = [line for line in stdout.splitlines() if line.strip()]
    if returncode == 0 and not _verbose():
        prefix = f'{binary}: '
        lines = [line for line in lines
                 if line.startswith(prefix) or _WARN_LINE.search(line)]
    if sink is not None:
        sink.extend(lines)
    else:
        for line in lines:
            print(line)
    if returncode != 0 and stderr.strip():
        if errors is not None:
            errors.append((binary, stderr.strip()))
            return
        if streamed:
            return
        for line in stderr.strip().split('\n'):
            print(f'  {line}', file=sys.stderr)


def _asm_one(app, binary, extra_args=None, sink=None):
    """Run ``python -m main <app> <binary>`` and report its output.

    Empty stdout is normal (e.g. a prebuild binary with no ``aztec_*`` labels),
    so blank lines are dropped rather than reprinted.  A worker that succeeds
    prints only its own one-line summary (plus anything that looks like a
    warning); a worker that fails prints everything.  ``EXTRA_FLAGS=--verbose``
    or ``VERBOSE=1`` prints it all either way.  When *sink* is a list the kept
    lines are appended to it instead of printed, letting callers group and order
    parallel output deterministically.
    """
    cmd = _main_cmd(app, binary)
    if extra_args:
        cmd.extend(extra_args)
    # With VERBOSE the worker's stderr (its progress lines) goes straight to
    # ours as it is written, as a build worker's is echoed.
    live = _verbose()
    r = childproc.run(cmd, stdout=subprocess.PIPE,
                      stderr=None if live else subprocess.PIPE, text=True,
                      cwd=ASM)
    _report(binary, r.returncode, r.stdout, r.stderr or '', sink,
            streamed=live)
    return r.returncode


_echo_lock = threading.Lock()


def _echo(binary, line):
    """Echo one worker line, tagged with its binary, as it arrives."""
    text = line.rstrip('\n')
    if not text:
        return
    if ' | ' not in text:
        # The worker's own progress lines are already tagged; a traceback or
        # an uncaught C-level message is not.
        text = f'{binary} | {text}'
    with _echo_lock:
        print(text, file=sys.stderr, flush=True)


class _Worker:
    """One binary's ``python -m main <app> --worker <binary>`` process."""

    def __init__(self, app, binary):
        self.binary = binary
        self._err = []
        self._err_lock = threading.Lock()
        self.proc = subprocess.Popen(
            _main_cmd(app, binary, '--worker'), cwd=ASM, text=True,
            encoding='utf-8', errors='surrogateescape',
            stdin=subprocess.PIPE, stdout=subprocess.PIPE,
            stderr=subprocess.PIPE, start_new_session=True)
        childproc.register(self.proc)
        # A pipe, not a file: the driver can echo a line the moment the worker
        # prints it.  It must be drained, or a chatty worker blocks on a full
        # pipe, so the reader runs for the whole process lifetime.
        self._reader = threading.Thread(
            target=self._drain, name=f'{binary}-stderr', daemon=True)
        self._reader.start()
        if _verbose():
            progress.log(f'{binary} | worker started (pid {self.proc.pid})')

    def _drain(self):
        for line in self.proc.stderr:
            with self._err_lock:
                self._err.append(line)
            if _verbose():
                _echo(self.binary, line)

    def _stderr_text(self):
        with self._err_lock:
            return ''.join(self._err)

    def step(self, flags):
        """``(status, out, err, files)`` of one build step."""
        if _verbose():
            progress.log(f'{self.binary} | step start: '
                         f'{" ".join(flags or ()) or "(default)"}')
        began = time.monotonic()
        try:
            self.proc.stdin.write(json.dumps({'flags': flags or []}) + '\n')
            self.proc.stdin.flush()
            line = self.proc.stdout.readline()
        except BrokenPipeError:
            line = ''
        if not line:
            self.proc.wait()
            self._reader.join(timeout=2)
            return self.proc.returncode or 1, '', self._stderr_text(), None
        answer = json.loads(line)
        if _verbose():
            progress.log(f'{self.binary} | step done in '
                         f'{time.monotonic() - began:.1f}s '
                         f'(status {answer["status"]})')
        return (answer['status'], answer['out'], answer['err'],
                answer.get('files'))

    def close(self):
        try:
            self.proc.stdin.write(json.dumps({'exit': True}) + '\n')
            self.proc.stdin.close()
        except (BrokenPipeError, ValueError):
            pass
        self.proc.wait()
        childproc.unregister(self.proc)
        self._reader.join(timeout=2)
        try:
            self.proc.stderr.close()
        except OSError:
            pass

    def terminate(self):
        """Stop the worker and every DOSBox in its process group."""
        childproc.terminate(self.proc, grace=1.0)
        childproc.unregister(self.proc)
        self._reader.join(timeout=1)
        try:
            self.proc.stderr.close()
        except OSError:
            pass


class Workers:
    """The build's worker processes, one per binary, kept across its steps.

    A binary's later steps (:mod:`main.build`) reuse the analysis its first
    one made, so no binary is analysed twice in a build.
    """

    def __init__(self, app):
        self.app = app
        self._live = {}
        self._lock = threading.Lock()
        #: ``(binary, stderr)`` of each failed step, printed by
        #: :meth:`print_errors` after the build's own summary.
        self.errors = []

    def run(self, binary, flags=None, sink=None):
        """One build step of *binary*, reported like :func:`_asm_one`.

        Returns ``(status, files)``: the files an emitting step lays out, else
        ``None``.
        """
        with self._lock:
            worker = self._live.get(binary)
            if worker is None:
                if _verbose():
                    progress.log(f'{binary} | spawning worker')
                worker = self._live[binary] = _Worker(self.app, binary)
        status, out, err, files = worker.step(flags)
        # With VERBOSE the worker's stderr was echoed live, so do not repeat it
        # at the end; without it, keep it for print_errors.
        live = _verbose()
        _report(binary, status, out, err, sink,
                None if live else self.errors, streamed=live)
        return status, files

    def print_errors(self):
        """Print the failed steps' errors, so they are the last thing shown."""
        sys.stdout.flush()   # stderr is unbuffered; keep the order on a pipe
        for binary, err in self.errors:
            print(f'\n{binary}:', file=sys.stderr)
            for line in err.split('\n'):
                print(f'  {line}', file=sys.stderr)
        self.errors.clear()

    def close(self):
        for worker in self._live.values():
            worker.close()
        self._live.clear()

    def terminate(self):
        """Stop every live worker (and its DOSBox children) immediately."""
        for worker in self._live.values():
            worker.terminate()
        self._live.clear()

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        if exc[0] is not None:
            # A KeyboardInterrupt or an error: do not wait for a stuck worker.
            self.terminate()
            self.print_errors()   # the caller never reaches its own summary
        else:
            self.close()


def _main_exe(out_dir, bins):
    """Return (binary_name, rel_path) of the main executable for a project."""
    for name in sorted(bins):
        rel_path = bins[name][0]
        if rel_path.upper().endswith('.EXE'):
            return name, rel_path
    # fallback
    for name in sorted(bins):
        return name, bins[name][0]
    return None, None

