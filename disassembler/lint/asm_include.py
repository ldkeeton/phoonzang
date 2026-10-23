"""``.s`` rule: a hand-written module always imports ``hlmacros.h``.

``as`` finds an include beside the module; the build copies ``hlmacros.h``
there when a source asks for it (``lib.aztec.compile.project_headers``).  The
include emits no code, so adding it is byte-neutral.
"""

import re

from .core import Finding, Rule, register


_INCLUDE = re.compile(r'^\s*include\s+hlmacros\.h\b', re.I | re.M)
_LMACROS = re.compile(r'^([ \t]*)include[ \t]+lmacros\.h\b.*$', re.I | re.M)
_COMMENT = re.compile(r'^\s*(;.*)?$')


@register
class HlmacrosInclude(Rule):
    name = 'asm-hlmacros'
    extensions = ('.s',)
    order = 30

    def check(self, text, path):
        if _INCLUDE.search(text):
            return ()
        return (Finding(path, 1, 1, self.name, 'missing include hlmacros.h',
                        fixable=True),)

    def fix(self, text, path):
        if _INCLUDE.search(text):
            return text
        lines = text.splitlines(keepends=True)
        # Place it directly after lmacros.h, the file it builds on.
        for index, line in enumerate(lines):
            if _LMACROS.match(line):
                ending = '\n' if line.endswith('\n') else ''
                lines.insert(index + 1, '\tinclude\thlmacros.h' + ending)
                return ''.join(lines)
        # No lmacros.h: put it after the leading comment block.
        index = 0
        while index < len(lines) and _COMMENT.match(lines[index]):
            index += 1
        lines.insert(index, '\tinclude\thlmacros.h\n')
        return ''.join(lines)
