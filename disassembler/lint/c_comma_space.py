"""``.c`` rule: one space after a comma in code."""

from .c_common import mask_noncode, noncode_lines
from .core import Finding, Rule, register


@register
class CommaSpace(Rule):
    name = 'c-comma-space'
    extensions = ('.c',)
    order = 85

    def check(self, text, path):
        skip = noncode_lines(text)
        for number, line in enumerate(text.splitlines(), 1):
            if number in skip:
                continue
            code = mask_noncode(line)
            for index, char in enumerate(code[:-1]):
                if char == ',' and code[index + 1] not in ' \t':
                    yield Finding(path, number, index + 1, self.name,
                                  "put a space after ','", fixable=True)

    def fix(self, text, path):
        skip = noncode_lines(text)
        lines = []
        for number, line in enumerate(text.splitlines(keepends=True), 1):
            content = line.rstrip('\r\n')
            ending = line[len(content):]
            if number not in skip:
                code = mask_noncode(content)
                for index in reversed(range(len(code) - 1)):
                    if code[index] == ',' and code[index + 1] not in ' \t':
                        content = (content[:index + 1] + ' '
                                   + content[index + 1:])
            lines.append(content + ending)
        return ''.join(lines)
