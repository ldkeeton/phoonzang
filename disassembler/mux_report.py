#!/usr/bin/env python3
"""Report which Aztec runtime routines can be rebuilt from source.

Usage::

    python3 mux_report.py DSAVANT ds [SYMBOL ...]

For every ``aztec_*`` label in the generated label map it builds the Aztec
v4.2b source that defines it and prints whether it matches.  With symbols
given, only those are checked.
"""

import json
import os
import sys
import time

_ASM = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, _ASM)

from lib.aztec.mux import MuxEngine, normalize  # noqa: E402
from lib.aztec.compile import LIBRARY_PREFIX  # noqa: E402
from lib.aztec.libnames import library_public  # noqa: E402
from lib.sidecar.compiler import compiler_flags  # noqa: E402


def _load_labels(project, binary):
    root = os.path.join(os.path.dirname(_ASM), f'src_{project}')
    path = os.path.join(root, f'{binary}_labels.json')
    with open(path) as f:
        raw = json.load(f)
    labels = []
    for addr, name in raw.items():
        labels.append((int(addr), name))
    labels.sort()
    return labels


def main(argv):
    if len(argv) < 3:
        print(__doc__)
        return 1
    project, binary = argv[1], argv[2]
    wanted = {normalize(s) for s in argv[3:]}
    bin_path = os.path.join(os.path.dirname(_ASM), 'apps', project,
                            f'{binary.upper()}.EXE')
    with open(bin_path, 'rb') as f:
        data = f.read()
    labels = [(a, library_public(project, n))
              for a, n in _load_labels(project, binary)]
    labels = [(a, n) for a, n in labels if n]
    if wanted:
        labels = [(a, n) for a, n in labels if normalize(n) in wanted]

    engine = MuxEngine(c_flags=compiler_flags(project, LIBRARY_PREFIX,
                                              binary))
    exact = 0
    t0 = time.time()
    for addr, name in labels:
        matches = engine.resolve(name, data, addr)
        good = [m for m in matches if m.exact]
        if good:
            exact += 1
            m = good[0]
            print(f'EXACT  0x{addr:04x} {name:16} '
                  f'{m.version}/{m.filename} via {m.compiler} '
                  f'({m.length} bytes, {len(m.func.fixups)} relocs)')
        elif matches:
            m = matches[0]
            note = m.error if m.error else f'{len(m.diffs)} byte(s) differ'
            print(f'MISS   0x{addr:04x} {name:16} '
                  f'{m.version}/{m.filename} via {m.compiler} len={m.length}: '
                  f'{note}')
        else:
            print(f'NOSRC  0x{addr:04x} {name:16} no source candidate')
    print(f'\n{exact}/{len(labels)} exact  '
          f'({engine.compile_count} module compiles, '
          f'{time.time() - t0:.1f}s)')
    return 0


if __name__ == '__main__':
    raise SystemExit(main(sys.argv))
