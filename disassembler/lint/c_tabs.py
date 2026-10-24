"""``.c`` rule: indent code with tabs, not spaces.

Comment-only lines, including the continuation lines of a block comment, are
left alone: the prose inside a comment often lines up with spaces.  A line
that starts with a tab may use spaces after it to line up a continuation.
"""

import re

from .c_common import noncode_lines
from .core import Finding, Rule, register


_LEADING = re.compile(r'^[ \t]*')


def _tabs(leading):
    """*leading* rewritten as tabs, rounding a partial tab stop up."""
    width = len(leading.expandtabs(4))
    return '\t' * max(1, (width + 3) // 4)


@register
class Tabs(Rule):
    name = 'c-tabs'
    extensions = ('.c',)
    order = 50

    def check(self, text, path):
        skip = noncode_lines(text)
        for number, line in enumerate(text.splitlines(), 1):
            if number in skip or not line.strip():
                continue
            leading = _LEADING.match(line).group(0)
            if leading.startswith(' '):
                yield Finding(path, number, 1, self.name,
                              'indent with tabs, not spaces', fixable=True)

    def fix(self, text, path):
        skip = noncode_lines(text)
        lines = []
        for number, line in enumerate(text.splitlines(keepends=True), 1):
            if number in skip or not line.strip():
                lines.append(line)
                continue
            leading = _LEADING.match(line).group(0)
            if leading.startswith(' '):
                line = _tabs(leading) + line[len(leading):]
            lines.append(line)
        return ''.join(lines)
