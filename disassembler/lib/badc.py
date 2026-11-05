"""Flag hand-written C that matches the original bytes only through workarounds.

``make build`` and ``make rebuild`` run :func:`cmd_badc` last and fail if any
file is flagged.  See badc.md for what each column means and how to fix each
pattern.
"""

import os
import re
import sys

from lib import cachedirs, progress

_COMMENT = re.compile(r'/\*.*?\*/', re.S)
_LABEL = re.compile(r'^\s*(\w+):(?!:)')
_GOTO = re.compile(r'\bgoto\s+(\w+)')
_FRAME = re.compile(r'struct\s+\w*(?:locals|frame)\w*')
_FRAME_USE = re.compile(r'\b(?:frame|local)\.\w')
_VOLATILE = re.compile(r'\bvolatile\b')
_ALIAS = re.compile(r'^#define\s+\w+\s+\w+[.\[]', re.M)
_UNION = re.compile(r'\bunion\b')
_FILLER = re.compile(
    r'\b(?:reserved|gap|filler|dummy|spare|unused_frame)\w*\s*[\[;]')
_GENNAME = re.compile(r'\b(?:loc|api_idx|dseg|bss|f)_[0-9a-fA-F]{4}\w*')

_HEADER = (f"{'score':>5} {'back':>4} {'fwd':>4} {'frm':>3} {'vol':>3} "
           f"{'def':>3} {'uni':>3} {'fill':>4} {'gen':>3}  file")


def _score_file(text):
    """Return (score, back, fwd, frame, vol, alias, union, filler, gen)."""
    # Blank out comments but keep line numbers.
    code = _COMMENT.sub(lambda m: '\n' * m.group().count('\n'), text)
    lines = code.split('\n')
    labels = {}
    for i, line in enumerate(lines):
        m = _LABEL.match(line)
        if m and m.group(1) != 'default':
            labels[m.group(1)] = i
    back = fwd = 0
    for i, line in enumerate(lines):
        for target in _GOTO.findall(line):
            if target in labels and labels[target] < i:
                back += 1
            else:
                fwd += 1
    frame = len(_FRAME.findall(code)) + (1 if _FRAME_USE.search(code) else 0)
    vol = len(_VOLATILE.findall(code))
    alias = len(_ALIAS.findall(code))
    union = len(_UNION.findall(code))
    filler = len(_FILLER.findall(code))
    gen = len(_GENNAME.findall(code))
    score = (3 * back + fwd + 10 * frame + 10 * vol + 3 * alias + 5 * union
             + 3 * filler + 2 * gen)
    return score, back, fwd, frame, vol, alias, union, filler, gen


def scan(root):
    """Flagged ``.c`` files under *root*, worst first.

    Each row is ``(score, relpath, back, fwd, frame, vol, alias, union,
    filler, gen)``.
    """
    rows = []
    for directory, dirnames, filenames in os.walk(root):
        dirnames[:] = sorted(name for name in dirnames
                             if name not in ('build_out', 'aztec'))
        for name in sorted(filenames):
            if not name.endswith('.c'):
                continue
            path = os.path.join(directory, name)
            with open(path, errors='replace') as source:
                counts = _score_file(source.read())
            if counts[0]:
                rows.append((counts[0], os.path.relpath(path, root))
                            + counts[1:])
    rows.sort(key=lambda r: (-r[0], r[1]))
    return rows


def cmd_badc(projects):
    """Scan each project's sources; print flagged files and exit 1 if any."""
    flagged = 0
    for project in projects:
        root = cachedirs.src_dir(project)
        if not os.path.isdir(root):
            continue
        rows = scan(root)
        if rows:
            print(f'badc {project}:', file=sys.stderr)
            print(_HEADER, file=sys.stderr)
            for r in rows:
                print(f'{r[0]:5} {r[2]:4} {r[3]:4} {r[4]:3} {r[5]:3} '
                      f'{r[6]:3} {r[7]:3} {r[8]:4} {r[9]:3}  {r[1]}',
                      file=sys.stderr)
        progress.log(f'badc {project}: {len(rows)} file(s) flagged')
        flagged += len(rows)
    if flagged:
        print(f'badc: {flagged} file(s) flagged', file=sys.stderr)
        sys.exit(1)
