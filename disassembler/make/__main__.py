"""``python -m make`` entry point."""

import os
import sys

# The ``make`` package no longer has an __init__.py, so the bootstrap that put
# disassembler/ on sys.path has to live in the entry point (before .cli pulls in
# ``main.*`` / ``lib.*``).
_ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _ASM not in sys.path:
    sys.path.insert(0, _ASM)

from .cli import main  # noqa: E402

if __name__ == '__main__':
    main()
