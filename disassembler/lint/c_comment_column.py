"""``.c`` rule: line up the trailing comments of neighbouring lines.

A run is a group of consecutive lines with the same indentation that each end
in a ``/* ... */`` comment.  The run's comment column is the one the author
already used for its widest member, so an aligned run is left untouched and
only a ragged one is rewritten.  Padding is tabs between tab stops and spaces
inside the last one, so the editor view stays aligned at tab width 8.
"""

from .c_common import split_trailing_comment
from .core import Finding, Rule, register


TAB = 8


def _indent(line):
    return line[:len(line) - len(line.lstrip(' \t'))]


def _column(text):
    """The visual column just past *text*."""
    return len(text.expandtabs(TAB))


def _pad(column, target):
    """Tabs and spaces that move *column* to *target*."""
    padding = ''
    while column < target:
        stop = (column // TAB + 1) * TAB
        if stop <= target:
            padding += '\t'
            column = stop
        else:
            padding += ' ' * (target - column)
            column = target
    return padding


def _runs(lines):
    """Each run as ``[(line index, code, comment), ...]``."""
    index = 0
    while index < len(lines):
        code, comment = split_trailing_comment(lines[index])
        if not comment:
            index += 1
            continue
        indent = _indent(lines[index])
        run = [(index, code, comment)]
        look = index + 1
        while look < len(lines):
            code, comment = split_trailing_comment(lines[look])
            if not comment or _indent(lines[look]) != indent:
                break
            run.append((look, code, comment))
            look += 1
        if len(run) > 1:
            yield run
        index = look


def _aligned(code, comment, target):
    """*code* and *comment* with the padding between them redrawn."""
    stripped = code.rstrip(' \t')
    return stripped + _pad(_column(stripped), target) + comment


@register
class CommentColumn(Rule):
    name = 'c-comment-column'
    extensions = ('.c',)
    order = 47

    def check(self, text, path):
        lines = text.splitlines()
        for run in _runs(lines):
            target = max(_column(code) for _, code, _ in run)
            for index, code, comment in run:
                if _aligned(code, comment, target) != lines[index]:
                    yield Finding(path, index + 1,
                                  len(code.rstrip()) + 1, self.name,
                                  'line up this trailing comment with its '
                                  'neighbours', fixable=True)

    def fix(self, text, path):
        lines = text.splitlines(keepends=True)
        contents = [line.rstrip('\r\n') for line in lines]
        endings = [line[len(content):] for line, content
                   in zip(lines, contents)]
        replacements = {}
        for run in _runs(contents):
            target = max(_column(code) for _, code, _ in run)
            for index, code, comment in run:
                replacements[index] = _aligned(code, comment, target)
        return ''.join(replacements.get(index, content) + endings[index]
                       for index, content in enumerate(contents))
