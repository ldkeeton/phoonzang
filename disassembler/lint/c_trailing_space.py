"""``.c`` rule: no trailing whitespace."""

import re

from .core import Finding, Rule, register


_TRAILING = re.compile(r'[ \t]+(?=\r?$)', re.M)


@register
class TrailingSpace(Rule):
    name = 'c-trailing-space'
    extensions = ('.c',)
    order = 70

    def check(self, text, path):
        for number, line in enumerate(text.splitlines(), 1):
            stripped = line.rstrip(' \t')
            if stripped != line:
                yield Finding(path, number, len(stripped) + 1, self.name,
                              'trailing whitespace', fixable=True)

    def fix(self, text, path):
        return _TRAILING.sub('', text)
