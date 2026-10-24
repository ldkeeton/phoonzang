"""``.c`` rule: a control keyword is followed by a space before ``(``."""

import re

from .c_common import mask_noncode, noncode_lines
from .core import Finding, Rule, register


_KEYWORD = re.compile(r'\b(if|for|while|switch|return)\(')


@register
class KeywordSpace(Rule):
    name = 'c-keyword-space'
    extensions = ('.c',)
    order = 86

    def check(self, text, path):
        skip = noncode_lines(text)
        for number, line in enumerate(text.splitlines(), 1):
            if number in skip:
                continue
            for match in _KEYWORD.finditer(mask_noncode(line)):
                yield Finding(path, number, match.start() + 1, self.name,
                              f"put a space before '(' after "
                              f"'{match.group(1)}'", fixable=True)

    def fix(self, text, path):
        skip = noncode_lines(text)
        lines = []
        for number, line in enumerate(text.splitlines(keepends=True), 1):
            content = line.rstrip('\r\n')
            ending = line[len(content):]
            if number not in skip:
                code = mask_noncode(content)
                for match in reversed(list(_KEYWORD.finditer(code))):
                    content = (content[:match.start()] + match.group(1) + ' ('
                               + content[match.end():])
            lines.append(content + ending)
        return ''.join(lines)
