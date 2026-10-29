"""Project-wide ``.c`` rules: each record layout is declared once.

The byte gate cannot see these: a struct spelled twice, or one object
described by two tags, compiles to the same code until the copies drift.

* ``c-struct-duplicate`` — a struct/union tag with a body in two or more files,
  at least one a ``.c``.  A shared record belongs in a header under
  ``include/structs`` (an 8.3 name, as DOS sees it), included where it is used.
* ``c-struct-header-duplicate`` — a tag defined in two ``include/structs``
  headers, or an anonymous body in one (nothing can include it by name).
* ``c-struct-one-object`` — one global declared ``extern struct a`` in one file
  and ``extern struct b`` in another: two layouts for the same bytes.  A raw
  view (``extern char x[]``) next to the struct is allowed.

Vendor modules (an ``aztec/`` folder or an ``aztec_`` name) are Manx's own
library source and keep theirs.  These rules see every file at once, so
:func:`check_project` is called by ``make lint`` after the per-file rules.
"""

import os
import pathlib
import re

from .core import Finding


_COMMENT = re.compile(r'/\*.*?\*/', re.S)
_STRING = re.compile(r'"(?:\\.|[^"\\\n])*"|\'(?:\\.|[^\'\\\n])*\'')
#: ``struct tag {`` / ``union {``: a body, not a use of the tag.
_BODY = re.compile(r'\b(struct|union)\b\s*(\w*)\s*\{')
#: ``extern struct tag *a, b[];`` (no ``(``: function declarations are not
#: objects).
_EXTERN = re.compile(r'\bextern\s+struct\s+(\w+)\b([^;{}()]*);')
_DECLARATOR = re.compile(r'(\w+)\s*(?:\[[^\]]*\]\s*)*$')
_SKIP_DIRS = ('__pycache__', 'build_out')


def code_only(text):
    """*text* with comments and literals blanked, newlines kept."""
    def blank(match):
        return re.sub(r'[^\n]', ' ', match.group(0))
    return _STRING.sub(blank, _COMMENT.sub(blank, text))


def struct_bodies(text):
    """``(line, 'struct tag')`` for each struct or union body in *text*."""
    code = code_only(text)
    return [(code.count('\n', 0, match.start()) + 1,
             f'{match.group(1)} {match.group(2) or "<anonymous>"}')
            for match in _BODY.finditer(code)]


def extern_struct_objects(text):
    """``(line, object, tag)`` for each ``extern struct tag`` object."""
    code = code_only(text)
    found = []
    for match in _EXTERN.finditer(code):
        line = code.count('\n', 0, match.start()) + 1
        for declarator in match.group(2).split(','):
            name = _DECLARATOR.search(declarator.strip())
            if name:
                found.append((line, name.group(1), match.group(1)))
    return found


def _vendor(rel):
    return 'aztec' in rel.parts[:-1] or rel.name.startswith('aztec_')


def _c_files(root):
    for directory, dirnames, filenames in os.walk(root):
        dirnames[:] = sorted(name for name in dirnames
                             if name not in _SKIP_DIRS)
        for name in sorted(filenames):
            if not name.endswith('.c'):
                continue
            path = pathlib.Path(directory, name)
            if not _vendor(path.relative_to(root)):
                yield path


def _read(path):
    return path.read_text(encoding='utf-8', errors='replace')


def check_project(src_root):
    """Every finding of the three rules for the tree at *src_root*."""
    root = pathlib.Path(src_root)
    headers = sorted((root / 'include' / 'structs').glob('*.h'))
    sources = list(_c_files(root))
    texts = {path: _read(path) for path in headers + sources}
    findings = []

    in_headers = {}
    owners = {}
    for path in headers:
        for line, tag in struct_bodies(texts[path]):
            in_headers.setdefault(tag, []).append((path, line))
            owners.setdefault(tag, []).append((path, line))
    for path in sources:
        for line, tag in struct_bodies(texts[path]):
            owners.setdefault(tag, []).append((path, line))

    for tag, places in sorted(in_headers.items()):
        if tag.endswith('<anonymous>'):
            for path, line in places:
                findings.append(Finding(
                    str(path), line, 1, 'c-struct-header-duplicate',
                    'anonymous body in a shared header; give it a tag'))
        elif len(places) > 1:
            for path, line in places[1:]:
                findings.append(Finding(
                    str(path), line, 1, 'c-struct-header-duplicate',
                    f'{tag} is already defined in '
                    f'{_where(root, *places[0])}'))

    for tag, places in sorted(owners.items()):
        if (len(places) < 2 or tag.endswith('<anonymous>')
                or all(path.suffix == '.h' for path, _ in places)):
            continue
        others = ', '.join(_where(root, *place) for place in places)
        for path, line in places:
            if path.suffix == '.c':
                findings.append(Finding(
                    str(path), line, 1, 'c-struct-duplicate',
                    f'{tag} is declared in {len(places)} files ({others}); '
                    'keep one copy in a header under include/structs and '
                    '#include it'))

    tags = {}
    for path in sources:
        for line, name, tag in extern_struct_objects(texts[path]):
            tags.setdefault(name, {}).setdefault(tag, []).append((path, line))
    for name, by_tag in sorted(tags.items()):
        if len(by_tag) < 2:
            continue
        summary = '; '.join(
            f'struct {tag} in {_where(root, *places[0])}'
            + (f' (+{len(places) - 1} more)' if len(places) > 1 else '')
            for tag, places in sorted(by_tag.items()))
        for tag, places in sorted(by_tag.items()):
            for path, line in places:
                findings.append(Finding(
                    str(path), line, 1, 'c-struct-one-object',
                    f'{name} is declared with {len(by_tag)} struct types '
                    f'({summary}); describe one object with one struct'))
    return findings


def _where(root, path, line):
    return f'{path.relative_to(root)}:{line}'
