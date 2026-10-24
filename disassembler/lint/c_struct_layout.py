"""``.c`` rule: a struct or union body puts one member on each line.

A declaration written on one line has room for one field and no room for the
offset comments the rest of the tree uses::

    struct grid_row {
            struct grid_cell cell[10];
    };

Only a complete ``struct``/``union`` declaration on a single line is rewritten;
a trailing comment stays on the closing brace, where it still describes the
whole layout.  Members keep any comment of their own.
"""

import re

from .c_common import split_trailing_comment
from .core import Finding, Rule, register


_ONE_LINE = re.compile(
    r'^(?P<open>(?:(?:extern|static|typedef)\s+)*'
    r'(?:struct|union)\b[^{;]*?)\{'
    r'(?P<body>[^{}]*)\}'
    r'(?P<close>[^;{}]*);\s*$')
_LEADING_COMMENT = re.compile(r'^(/\*.*?\*/)\s*(.*)\Z', re.S)


def _members(body):
    """The body's members, each ending in ``;``, with its own comment."""
    members = []
    for part in body.split(';'):
        part = part.strip()
        if not part:
            continue
        match = _LEADING_COMMENT.match(part)
        if match and members:
            members[-1] += '\t' + match.group(1)
            part = match.group(2).strip()
            if not part:
                continue
        members.append(part + ';')
    return members


def _expand(line):
    """The lines *line* should occupy, or ``None`` when it is not a fit."""
    code, comment = split_trailing_comment(line)
    code = code.rstrip()
    match = _ONE_LINE.match(code)
    if match is None:
        return None
    members = _members(match.group('body'))
    if not members:
        return None

    closing = '}' + match.group('close') + ';'
    if comment:
        closing += '\t' + comment
    return ([code[:code.index('{')].rstrip() + ' {']
            + ['\t' + member for member in members]
            + [closing])


@register
class StructLayout(Rule):
    name = 'c-struct-layout'
    extensions = ('.c',)
    order = 25

    def check(self, text, path):
        for number, line in enumerate(text.splitlines(), 1):
            if _expand(line) is not None:
                yield Finding(path, number, 1, self.name,
                              'put one struct member on each line',
                              fixable=True)

    def fix(self, text, path):
        lines = []
        for line in text.splitlines(keepends=True):
            content = line.rstrip('\r\n')
            ending = line[len(content):]
            expanded = _expand(content)
            if expanded is None:
                lines.append(line)
            else:
                lines.extend(item + ending for item in expanded)
        return ''.join(lines)
