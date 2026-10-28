#!/usr/bin/env python3
"""Shift-diff oracle report: does an inserted block move every reference?

The oracle itself is :mod:`lib.verify.shift_oracle`.  Read-only: it works on a
temporary copy of the tree.

Usage::

    python3 shift_oracle_report.py            # every master, summary
    python3 shift_oracle_report.py ds --list  # one binary, every finding
"""

import argparse
import collections
import os
import sys
from pathlib import Path

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from lib.verify.shift_oracle import TREE, masters, run  # noqa: E402


def _fmt(f):
    item, slot, v0, v1, why = f
    return (f'  {why:7} {item.file}:{item.line}  {slot} 0x{v0:04x}'
            f'{"" if v0 == v1 else f" -> 0x{v1:04x}"}  | {item.text[:90]}')


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('binaries', nargs='*')
    ap.add_argument('--variant', choices=('code', 'data', 'host', 'both'),
                    default='both')
    ap.add_argument('-n', type=int, default=16, help='bytes to insert')
    ap.add_argument('--floor', type=lambda s: int(s, 0), default=0x100)
    ap.add_argument('--list', action='store_true', help='print every finding')
    ap.add_argument('--tree', type=Path, default=TREE)
    args = ap.parse_args(argv)
    variants = ('code', 'data') if args.variant == 'both' else (args.variant,)
    totals = collections.Counter()
    print(f'{"binary":9} {"var":4} {"kind":7} {"items":>6} {"moved":>6} '
          f'{"frozen":>6} {"moved?":>6} {"label":>6} {"string":>6} '
          f'{"branch":>6} {"sym":>5} {"odd":>5}')
    for b in args.binaries or masters(args.tree):
        for v in variants:
            try:
                r = run(b, v, args.n, args.floor, args.tree)
            except RuntimeError as e:
                print(f'{b:9} {v:4} ERROR {e}')
                totals['errors'] += 1
                continue
            if 'skip' in r:
                continue
            why = collections.Counter(f[4] for f in r['frozen'])
            nfrozen = len(r['frozen']) - why['symbolic']
            print(f'{b:9} {v:4} {r["kind"]:7} {r["items"]:6} {r["moved"]:6} '
                  f'{nfrozen:6} {why["moved"]:6} {why["label"]:6} '
                  f'{why["string"]:6} {why["branch"]:6} {why["symbolic"]:5} '
                  f'{len(r["odd"]):5}')
            totals['frozen'] += nfrozen
            totals['symbolic'] += why['symbolic']
            totals[f'frozen_{v}'] += nfrozen
            for k in ('moved', 'label', 'string', 'branch'):
                totals[k] += why[k]
            totals['odd'] += len(r['odd'])
            if args.list:
                for f in r['frozen']:
                    print(_fmt(f))
                for f in r['odd']:
                    print(_fmt(f))
    print(f'TOTAL frozen={totals["frozen"]} (code {totals["frozen_code"]}, '
          f'data {totals["frozen_data"]}; moved-elsewhere {totals["moved"]}, '
          f'label {totals["label"]}, string {totals["string"]}, '
          f'branch {totals["branch"]}) symbolic={totals["symbolic"]} '
          f'odd={totals["odd"]}'
          + (f' errors={totals["errors"]}' if totals['errors'] else ''))
    return 1 if totals['errors'] else 0


if __name__ == '__main__':
    sys.exit(main())
