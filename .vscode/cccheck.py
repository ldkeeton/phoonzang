#!/usr/bin/env python3
"""Build one routine source with the real Manx tool and print its diagnostics.

A ``.c`` is compiled with ``cc``, a ``.s`` (Manx assembly) assembled with
``as``.  Usage::

    python3 .vscode/cccheck.py src_DSAVANT/ds/aztec/aztec_ovloader.c
    python3 .vscode/cccheck.py src_DSAVANT/ds/library/flush_keyboard.s

Checks use Aztec v4.2b, the project's existing include directory, and the
sidecar's ``compiler_flags`` for the file's name and binary.  The file extension
selects ``cc`` or ``as``.
Each Manx message
(``FILE.C:LINE: ERROR|WARNING n: text``; ``as`` prints
``ERROR:FILE.ASM:LINE: text``) is re-printed as
``path:line:col: error|warning: text [Manx n]`` so a VS Code problem matcher
(or the asm-nav extension) can read it.  Exit status is 1 when the compiler reports errors.
"""

import os
import re
import sys

_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_ASM = os.path.join(_ROOT, 'disassembler')
sys.path.insert(0, _ASM)

from lib.aztec import sources  # noqa: E402
from lib.aztec import compile as azc  # noqa: E402
from lib.sidecar.compiler import asm_flags, compiler_flags  # noqa: E402
from lib.sidecar.errors import SidecarError  # noqa: E402

_MSG = re.compile(r'^\S+\.C:(\d+): (ERROR|WARNING) (\d+): ?(.*?):?\s*$', re.I)
_AS_MSG = re.compile(r'^(ERROR|WARNING):\S+\.ASM:(\d+): ?(.*?)\s*$', re.I)


def _location(path):
    """Return the project, binary and routine label from the source path."""
    parts = os.path.normpath(os.path.abspath(path)).split(os.sep)
    label = os.path.splitext(parts[-1])[0]
    try:
        index = next(i for i, p in enumerate(parts) if p.startswith('src_'))
        return parts[index][len('src_'):], parts[index + 1], label
    except (StopIteration, IndexError):
        return None, None, label


def check(path):
    """Return ``(diagnostic lines, error count)`` for the source at *path*."""
    project, binary, label = _location(path)
    with open(path, errors='replace') as f:
        source = f.read()
    kind = 'asm' if os.path.splitext(path)[1].lower() in ('.s', '.asm') else 'c'
    flags = (asm_flags(project) if kind == 'asm'
             else compiler_flags(project, label, binary))
    if flags is None:
        raise SidecarError(f'{project}: no compiler_flags for {label} in {binary}')
    headers_dir = sources.project_include_dir(project) if project else None
    try:
        cc_log = azc.compile_module(source, 'check', compiler=azc.VERSION,
                                    flags=flags,
                                    kind=kind, headers_dir=headers_dir).cc_log
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
        m = _AS_MSG.match(row)
        if m:
            level, line, text = m.groups()
            level = level.lower()
            errors += level == 'error'
            message = f'{path}:{line}:1: {level}: {text} [Manx as]'
            if message not in lines:   # as reports each error per pass
                lines.append(message)
            continue
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
