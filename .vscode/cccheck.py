#!/usr/bin/env python3
"""Compile one generated/hand C file with the real Manx ``cc`` and print its diagnostics.

Usage::

    python3 .vscode/cccheck.py asm_DSAVANT/ds/aztec_ovloader.c

The compiler, header tree and switches are those the build uses for that
routine (from the prebuild mux manifest); a file the manifest does not know
falls back to v5.2a with the v3.40 headers.  Each Manx message
(``FILE.C:LINE: ERROR|WARNING n: text``) is re-printed as
``path:line:col: error|warning: text [Manx n]`` so a VS Code problem matcher
(or the asm-nav extension) can read it.  Exit status is 1 when the compiler reports errors.
"""

import json
import os
import re
import sys

_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_ASM = os.path.join(_ROOT, 'asm')
sys.path.insert(0, _ASM)

from lib.aztec import compile as azc  # noqa: E402
from lib.aztec.mux import tool_flags  # noqa: E402

_MSG = re.compile(r'^\S+\.C:(\d+): (ERROR|WARNING) (\d+): ?(.*?):?\s*$', re.I)


def _manifest_entry(path):
    """The mux manifest entry for *path* (``asm_<PROJECT>/<bin>/<label>.c``)."""
    parts = os.path.normpath(os.path.abspath(path)).split(os.sep)
    try:
        index = next(i for i, p in enumerate(parts) if p.startswith('asm_'))
        project, binary = parts[index][len('asm_'):], parts[index + 1]
    except (StopIteration, IndexError):
        return {}
    manifest = os.path.join(_ROOT, '.cache', project, 'prebuild',
                            f'{binary}_aztec_mux.json')
    label = os.path.splitext(parts[-1])[0]
    try:
        with open(manifest) as f:
            return json.load(f).get('functions', {}).get(label, {})
    except (OSError, ValueError):
        return {}


def check(path):
    """Return ``(diagnostic lines, error count)`` for the C file at *path*."""
    entry = _manifest_entry(path)
    compiler = entry.get('compiler', 'v52a')
    includes = entry.get('includes', 'v340a')
    flags = tuple(entry['flags']) if entry.get('flags') is not None \
        else tool_flags('x.c', compiler)
    with open(path, errors='replace') as f:
        source = f.read()
    try:
        cc_log = azc.compile_module(source, 'check', compiler=compiler,
                                    includes=includes, flags=flags).cc_log
    except azc.AztecCompileError as exc:
        cc_log = exc.cc_log
        if not cc_log:
            return [f'{path}:1:1: error: {exc}'], 1
    return _diagnostics(path, cc_log)


def _diagnostics(path, cc_log):
    """Format each message; the column comes from the caret line before it.

    Manx prints the source line, a caret line, then the ``FILE.C:LINE:``
    header.  A second message on the same line omits the source line, so the
    caret is read against the last one printed.
    """
    rows = cc_log.splitlines()
    lines, errors = [], 0
    for i, row in enumerate(rows):
        m = _MSG.match(row)
        if not m:
            continue
        line, level, number, text = m.groups()
        level = level.lower()
        errors += level == 'error'
        col = 1
        if i and '^' in rows[i - 1] and not _MSG.match(rows[i - 1]):
            col = rows[i - 1].index('^') + 1
        lines.append(f'{path}:{line}:{col}: {level}: {text} [Manx {number}]')
    return lines, errors


def main(argv):
    if len(argv) != 2:
        sys.exit(__doc__)
    lines, errors = check(argv[1])
    print('\n'.join(lines) if lines else f'{argv[1]}: ok')
    return 1 if errors else 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
