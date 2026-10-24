#!/usr/bin/env python3
"""Build one routine source with the real Manx tool and print its diagnostics.

A ``.c`` is compiled with ``cc``, a ``.s`` (Manx assembly) assembled with
``as``.  Usage::

    python3 .vscode/cccheck.py src_DSAVANT/ds/aztec/aztec_ovloader.c
    python3 .vscode/cccheck.py src_DSAVANT/ds/library/flush_keyboard.s

The compiler and header tree are those the build uses for that routine (from
the prebuild mux manifest, else Aztec v4.2b); the switches are the sidecar's
``compiler_flags`` for its name and binary, as in the build.  Each Manx message
(``FILE.C:LINE: ERROR|WARNING n: text``; ``as`` prints
``ERROR:FILE.ASM:LINE: text``) is re-printed as
``path:line:col: error|warning: text [Manx n]`` so a VS Code problem matcher
(or the asm-nav extension) can read it.  Exit status is 1 when the compiler reports errors.
"""

import json
import os
import re
import sys

_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_ASM = os.path.join(_ROOT, 'disassembler')
sys.path.insert(0, _ASM)

from lib.aztec import cache, sources  # noqa: E402
from lib.aztec import compile as azc  # noqa: E402
from lib.aztec.modules import entry_for  # noqa: E402
from lib.cachedirs import src_dir  # noqa: E402

_MSG = re.compile(r'^\S+\.C:(\d+): (ERROR|WARNING) (\d+): ?(.*?):?\s*$', re.I)
_AS_MSG = re.compile(r'^(ERROR|WARNING):\S+\.ASM:(\d+): ?(.*?)\s*$', re.I)


def _entry(path):
    """``(project, binary, label, entry)`` for *path*
    (``src_<PROJECT>/<bin>/<name>.c`` or ``.s``): the mux manifest's provenance for a
    vendor module (``aztec_croot.c`` is ``croot.c``), else the default;
    *project* and *binary* are None outside a ``src_`` (``shared`` takes the
    project's flags)."""
    parts = os.path.normpath(os.path.abspath(path)).split(os.sep)
    label, suffix = os.path.splitext(parts[-1])
    try:
        index = next(i for i, p in enumerate(parts) if p.startswith('src_'))
        project, binary = parts[index][len('src_'):], parts[index + 1]
    except (StopIteration, IndexError):
        return None, None, label, cache.default_entry(label, None, suffix)
    manifest = os.path.join(_ROOT, '.cache', project, 'prebuild',
                            f'{binary}_aztec_mux.json')
    try:
        with open(manifest) as f:
            entry = entry_for(project, label,
                              json.load(f).get('functions', {}))
    except (OSError, ValueError):
        entry = None
    if entry is None:
        entry = cache.default_entry(label, project, suffix)
    return project, binary, label, entry


def check(path):
    """Return ``(diagnostic lines, error count)`` for the source at *path*."""
    project, binary, label, entry = _entry(path)
    compiler, includes = entry['compiler'], entry['includes']
    with open(path, errors='replace') as f:
        source = f.read()
    kind, flags = cache._tool(project, binary, label, entry)
    headers_dir = None
    if project:
        sources.install_headers(project, src_dir(project))
        headers_dir = sources.project_include_dir(project)
    try:
        cc_log = azc.compile_module(source, 'check', compiler=compiler,
                                    includes=includes, flags=flags,
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
