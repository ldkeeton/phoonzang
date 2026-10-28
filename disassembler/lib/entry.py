"""Every program here is started by the root ``Makefile``, never directly.

The ``Makefile`` exports ``ASM_VIA_MAKE=1`` to its recipes, and every child a
recipe starts inherits it.  A program run by hand (``python -m main ...``)
writes into the generated tree without the build's ordering, sharing or lock,
so it stops instead; a missing entry point is a new ``make`` target.
"""

import os
import sys


def require_make():
    """Exit unless this process was started (directly or not) by ``make``."""
    if os.environ.get('ASM_VIA_MAKE') == '1':
        return
    path = sys.argv[0] if sys.argv and sys.argv[0] else 'python'
    prog = os.path.basename(path)
    if prog == '__main__.py':
        prog = f'python -m {os.path.basename(os.path.dirname(path))}'
    print(f'{prog}: run this through make (`make help`); if you need a new '
          f'entry point, ask for a make target', file=sys.stderr)
    sys.exit(2)
