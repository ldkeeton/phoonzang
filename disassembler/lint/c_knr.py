"""``.c`` rule: K&R function headers, with no types in the parentheses.

Aztec C is pre-ANSI.  A definition names its parameters in the header and
declares them below it::

    foo(a)
    int a;
    {
        ...
    }

Typed parameter lists (``foo(int a)``) and ``foo(void)`` are ANSI forms.
"""

import re

from .c_common import function_header, mask_noncode
from .core import Finding, Rule, register


_TYPES = {
    'char', 'const', 'double', 'enum', 'extern', 'float', 'int', 'long',
    'register', 'short', 'signed', 'static', 'struct', 'union', 'unsigned',
    'void', 'volatile',
}


@register
class Knr(Rule):
    name = 'c-knr'
    extensions = ('.c',)
    order = 90

    def check(self, text, path):
        for number, line in enumerate(mask_noncode(text).splitlines(), 1):
            header = function_header(line)
            if header is None:
                continue
            tail = header[2]
            if tail not in ('', ';') and not tail.startswith('{'):
                continue
            params = header[1]
            # A call such as ``assert(sizeof(int) == 1)`` also reaches here.
            if re.search(r'[=!<>?]|&&|\|\||[+\-/%]|\bsizeof\b|\(', params):
                continue
            typed = [word for word in re.findall(r'[A-Za-z_]\w*', params)
                     if word in _TYPES]
            if not typed:
                continue
            yield Finding(path, number, line.find('(') + 1, self.name,
                          'K&R C has no typed parameter lists; declare '
                          f'the parameters below the header (found {typed[0]!r})')
