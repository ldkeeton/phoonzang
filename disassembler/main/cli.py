"""Command-line entry point: the ``make`` driver's per-binary worker.

``python -m main <project> --worker <binary>`` is the only way in
(:mod:`main.worker`); ``make build`` and ``make prebuild`` start one per
binary.  There is no standalone render: a binary rendered outside the build
lacks the other binaries' labels and the ``shared/`` placement.
"""

import sys


def main():
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    if '--worker' not in sys.argv or len(args) != 2:
        print('Usage: python -m main <project> --worker <binary> '
              '(started by `make build` / `make prebuild`)', file=sys.stderr)
        sys.exit(1)
    from .worker import serve
    serve(args[0], args[1])
