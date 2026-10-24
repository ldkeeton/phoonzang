"""``.c`` rule: a function's opening brace sits on its own line.

The body brace is the only brace in this tree that always starts a line:
struct definitions and control statements keep ``{`` on the header line.
"""

from .c_common import function_header, mask_noncode, noncode_lines
from .core import Finding, Rule, register


def _header(line):
    """The parsed function header when *line* carries a same-line brace."""
    header = function_header(mask_noncode(line))
    if header is not None and header[2].startswith('{'):
        return header
    return None


@register
class FunctionBrace(Rule):
    name = 'c-function-brace'
    extensions = ('.c',)
    order = 80

    def check(self, text, path):
        skip = noncode_lines(text)
        for number, line in enumerate(text.splitlines(), 1):
            if number in skip or _header(line) is None:
                continue
            yield Finding(path, number, line.index('{') + 1, self.name,
                          "put the function's '{' on its own line",
                          fixable=True)

    def fix(self, text, path):
        skip = noncode_lines(text)
        lines = []
        for number, line in enumerate(text.splitlines(keepends=True), 1):
            content = line.rstrip('\r\n')
            ending = line[len(content):]
            if number in skip or _header(content) is None:
                lines.append(line)
                continue
            brace = mask_noncode(content).index('{')
            lines.append(content[:brace].rstrip() + ending + '{'
                         + content[brace + 1:] + ending)
        return ''.join(lines)
