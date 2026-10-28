"""Paths, environment toggles, and command-line flags for the toolchain.

Importing this module parses ``sys.argv`` once; the resulting module globals are
treated as read-only snapshots by the rest of the package.
"""

import os
import sys

ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT_ROOT = os.path.dirname(ASM_DIR)
APPS_DIR = os.path.join(PROJECT_ROOT, 'apps')
AZTEC_MUX_DISABLED = bool(os.environ.get('ASM_NO_C'))
AZTEC_MUX_REFRESH = bool(os.environ.get('ASM_AZTEC_REFRESH'))
AZTEC_PREBUILD = bool(os.environ.get('ASM_AZTEC_PREBUILD'))
# Prebuild-only: disassemble just far enough to locate the aztec_* labels, run
# the mux, and stop.  No verify/emit, no src_<project>/ output.
AZTEC_PREBUILD_ONLY = bool(os.environ.get('ASM_AZTEC_PREBUILD_ONLY'))

EXACT_BYTES = '--exact-bytes' in sys.argv
# Restore the lenient C splice: no byte-for-byte gate, short compiles NOP-padded.
ALLOW_DIFF = '--allow-diff' in sys.argv
_MAX_FUNC_SIZE = None
for a in sys.argv:
    if a.startswith('--max-func-size='):
        try:
            _MAX_FUNC_SIZE = int(a.split('=', 1)[1])
        except ValueError:
            pass

_ITERATIVE = '--no-iterate' not in sys.argv
_TRACE = '--trace' in sys.argv
_TRACE_ADDRESSES = set()
for arg in sys.argv:
    if arg.startswith('--trace-address='):
        value = arg.split('=', 1)[1]
        try:
            _TRACE_ADDRESSES.add(int(value, 0))
        except ValueError:
            try:
                _TRACE_ADDRESSES.add(int(value, 16))
            except ValueError:
                print(f'Ignoring invalid trace address: {value}', file=sys.stderr)
_DIAG = '--diag' in sys.argv
# Instruction offsets are shown by default; this flag suppresses the comments.
_SHOW_OFFSETS = '--no-show-offsets' not in sys.argv
# Stats (reports, layers, summaries) are only written when explicitly requested.
STATS = '--stats' in sys.argv
# Per-phase timing breakdowns and the full per-binary stats line are opt-in: a
# normal build prints one short line per binary, which is what ``make build``
# shows (and what makes failure-triage readable).  ``--verbose`` (forwarded by
# ``make``) or ``EXTRA_FLAGS=--detailed-timings`` restores the old verbosity.
DETAILED_TIMINGS = ('--detailed-timings' in sys.argv) or ('--verbose' in sys.argv)
