#!/usr/bin/env python3
"""List the OMF modules and public code functions in a library or object.

The parser is :mod:`lib.aztec.omflib`.  Read-only.

Usage::

    python3 omf_dump.py FILE.LIB
"""

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from lib.aztec.omflib import find_modules, public_functions  # noqa: E402


def main(argv):
    if len(argv) != 2:
        print('Usage: python3 omf_dump.py FILE.LIB', file=sys.stderr)
        return 1
    with open(argv[1], 'rb') as f:
        data = f.read()
    mods = find_modules(data)
    print('modules', len(mods))
    funcs = list(public_functions(data))
    print('public code funcs', len(funcs))
    for f in funcs[:20]:
        print(f"{f['name']:24} {f['module']:20} len={f['length']:4} "
              f"{f['bytes'][:10].hex()}")
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
