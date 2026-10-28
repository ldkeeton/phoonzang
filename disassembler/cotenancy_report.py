#!/usr/bin/env python3
"""Co-tenancy report: objects glued onto a routine's fragment.

The scan is :mod:`lib.compare.cotenancy`; this prints its summary and every
fragment that carries an object reached from outside it.  Read-only.

Usage::

    python3 cotenancy_report.py [SRC_TREE]    # default ../src_DSAVANT
"""

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from lib.cachedirs import src_dir  # noqa: E402
from lib.compare.cotenancy import scan, summarize  # noqa: E402


def main(argv):
    tree = argv[1] if len(argv) > 1 else src_dir('DSAVANT')
    found = scan(tree)
    print(summarize(found))
    for entry in found['entries']:
        outs = [e['name'] for e in entry['extra'] if e['reach'] == 'outside']
        if outs:
            print(f'  {entry["file"]}: {", ".join(outs)}')
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
