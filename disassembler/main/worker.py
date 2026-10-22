"""One binary across a build's steps: analysed once, rendered per step.

The build runs some binaries twice (:mod:`main.build`): a labels-only render
for the others, then the render it emits with the family's DS starts or the
host's DS union.  Both read the same analysis, so it is done once; a step with
other analysis inputs (``--export-labels``, ``--foreign-labels``) analyses
again.

``python -m main <project> --worker <binary>`` serves ``make build``'s steps
for one binary: each stdin line is ``{"flags": [...]}`` (the worker flags of
:func:`main.build._worker_kwargs`), each answer one stdout line ``{"status":
n, "out": ..., "err": ..., "files": ...}`` (the files an emitting step
lays out); ``{"exit": true}`` ends it.  The in-process build
keeps a :class:`BinaryRun` per binary instead.
"""

import io
import json
import os
import sys
import threading
import time
import traceback
from contextlib import redirect_stderr, redirect_stdout

from lib import childproc
from lib import stagelog
from lib import progress
from lib.autogen import write_once
from lib.cachedirs import src_dir
from lib.compare.cgate import CGateError
from lib.compare.records import UnencodedInstructionError
from lib.link import LinkError
from lib.sidecar.binary import per_binary as sidecar_per_binary
from lib.sidecar.errors import SidecarError
from lib.sidecar.loader import load as load_sidecar

from .options import APPS_DIR, EXACT_BYTES, PROJECT_ROOT, _SHOW_OFFSETS
from .projects import _build_host_model, discover_binaries

#: The worker flags that change the analysis rather than one render of it.
_ANALYSIS_FLAGS = frozenset(('--export-labels', '--foreign-labels',
                             '--foreign-prefix'))


class Project:
    """What every binary of one project is generated against."""

    def __init__(self, project):
        self.name = project
        self.app_dir = os.path.join(APPS_DIR, project)
        self.out_dir = src_dir(project, PROJECT_ROOT)
        self.bins = discover_binaries(self.app_dir)
        self.sidecar = load_sidecar(project)
        self.host_model = _build_host_model(self.app_dir, self.bins,
                                            self.sidecar)


class BinaryRun:
    """One binary's analysis, kept for the build's later steps."""

    def __init__(self, project, name):
        self.project, self.name = project, name
        self.analysis = self.key = self.ledger = None

    def step(self, flags):
        """Run one build step (*flags* as for ``python -m main``).

        Returns the files an emitting step lays out (``{relative path:
        text}``, :func:`main.runner._emit`), else ``None``.
        """
        from .build import _worker_kwargs
        from .runner import analyze, step

        p, name = self.project, self.name
        key = tuple(f for f in flags or ()
                    if f.partition('=')[0] in _ANALYSIS_FLAGS)
        kwargs = _worker_kwargs(flags)
        render = {k: kwargs.pop(k) for k in ('host_data_offsets', 'ds_starts',
                                              'emit') if k in kwargs}
        fresh = self.analysis is None or key != self.key
        if fresh:
            self.close()
            ledger = stagelog.begin(f'{p.name}/{name}')
        else:
            ledger = stagelog.fork(self.ledger)
        try:
            if fresh:
                rel_path, start_offset = p.bins[name]
                self.analysis = analyze(
                    name, p.app_dir, rel_path, start_offset,
                    output_dir=p.out_dir, project=p.name,
                    sidecar_entry=(sidecar_per_binary(p.sidecar, name)
                                   if p.sidecar else None),
                    host_model=p.host_model, **kwargs)
                self.key = key
                # Each later step's ledger continues from the analysis.
                self.ledger = stagelog.fork(ledger)
                stagelog.end(self.ledger)
            a = self.analysis
            if a is None or a.prebuild_only:
                return None
            return step(a, EXACT_BYTES, _SHOW_OFFSETS,
                        render.get('host_data_offsets'),
                        render.get('ds_starts', frozenset()),
                        render.get('emit', True))
        finally:
            stagelog.end(ledger, stagelog.ledger_path(p.name, name))

    def close(self):
        """Release the kept analysis."""
        from .runner import finish
        if self.analysis is not None:
            finish(self.analysis)
        self.analysis = self.key = self.ledger = None


def _watch_parent(interval=2.0):
    """Exit (and stop our DOSBox) if the driver process disappears."""
    parent = os.getppid()
    while True:
        time.sleep(interval)
        if os.getppid() != parent:
            childproc.terminate_all(grace=0.5)
            os._exit(1)


def serve(project, name):
    """Answer one binary's build steps over stdin/stdout until told to exit."""
    childproc.install()
    reply = os.fdopen(os.dup(1), 'w', buffering=1)
    # Anything written straight to fd 1 lands on stderr, not in the answers.
    os.dup2(2, 1)
    threading.Thread(target=_watch_parent, name='parent-watch',
                     daemon=True).start()
    progress.log(f'{name} | worker ready ({project})')
    run = BinaryRun(Project(project), name)
    with write_once():
        _answer(run, reply)
    run.close()


def _answer(run, reply):
    """Answer each stdin command of :func:`serve` until told to exit."""
    for line in iter(sys.stdin.readline, ''):
        command = json.loads(line)
        if command.get('exit'):
            break
        flags = command['flags'] or []
        progress.log(f'{run.name} | step received: '
                     f'{" ".join(flags) or "(default)"}')
        out, err = io.StringIO(), io.StringIO()
        status, files = 0, None
        with redirect_stdout(out), redirect_stderr(err):
            try:
                files = run.step(command['flags'])
            except UnencodedInstructionError as exc:
                print(f'ERROR: {exc}', file=sys.stderr)
                status = 2
            except (SidecarError, LinkError) as exc:
                print(f'{type(exc).__name__}: {exc}', file=sys.stderr)
                status = 2
            except CGateError as exc:
                # The gate's own report says everything; no traceback.
                print(exc, file=sys.stderr)
                status = 2
            except Exception:
                traceback.print_exc()
                status = 1
        reply.write(json.dumps({'status': status, 'out': out.getvalue(),
                                'err': err.getvalue(), 'files': files}) + '\n')
