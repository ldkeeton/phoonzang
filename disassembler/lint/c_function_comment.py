"""``.c`` rule: every function definition has a comment above it.

The comment sits above the name, ahead of the K&R parameter declarations::

    /* copies the saved screen into its cache slot */
    restore_saved_screen(n, flag)
    int n, flag;
    {

Check-only: the comment is prose the rule cannot write.  A preceding block
declaration is only treated as part of the header when every name it declares
appears in the parameter list, so a global above the function does not hide a
missing comment.
"""

import re

from .c_common import function_header, mask_noncode, noncode_lines
from .core import Finding, Rule, register


_TYPES = {
    'auto', 'char', 'const', 'double', 'enum', 'extern', 'float', 'int',
    'long', 'register', 'short', 'signed', 'static', 'struct', 'union',
    'unsigned', 'void', 'volatile',
}
_DECL = re.compile(
    r'^(?:register|auto|static|extern|const|volatile|unsigned|signed|short'
    r'|long|int|char|void|float|double|struct|union|enum)\b')
_NAME = re.compile(r'[A-Za-z_]\w*')

#: A return type written on a line of its own: ``char *`` or ``long``.
_RETURN_TYPE = re.compile(
    r'^(?=\S)(?:(?:static|extern|const|volatile|unsigned|signed|short|long|int'
    r'|char|void|float|double|struct\s+\w+|union\s+\w+|enum\s+\w+)\s*)*'
    r'\*?$')


def _is_parameter(line, params):
    """True when *line* declares only names from the header's *params*."""
    stripped = line.strip()
    if line[:1] in (' ', '\t') or not stripped.endswith(';'):
        return False
    if not _DECL.match(stripped):
        return False
    names = [word for word in _NAME.findall(stripped)
             if word not in _TYPES]
    return bool(names) and all(name in params for name in names)


@register
class FunctionComment(Rule):
    name = 'c-function-comment'
    extensions = ('.c',)
    order = 21

    def check(self, text, path):
        lines = text.splitlines()
        masked = mask_noncode(text).splitlines()
        comments = noncode_lines(text)
        definitions = []
        for index, line in enumerate(masked):
            header = function_header(line)
            if header is None or header[2] != '':
                continue
            below = index + 1
            while below < len(masked) and _is_parameter(masked[below],
                                                        header[1]):
                below += 1
            if below < len(masked) and masked[below].strip() == '{':
                definitions.append((index, header[0], header[1]))
        if not definitions:
            return ()

        # The file's own comment documents the first function: the rule that
        # puts a purpose comment on line one has already checked it.
        first = definitions[0][0]
        commented_file = any(line.strip().startswith(('/*', '//'))
                             for line in lines[:first + 1])

        for index, name, params in definitions:
            if index == first and commented_file:
                continue
            above = index - 1
            while above >= 0 and (_is_parameter(masked[above], params)
                                  or _RETURN_TYPE.match(masked[above])):
                above -= 1
            if above >= 0 and (above + 1) in comments:
                continue
            yield Finding(path, index + 1, 1, self.name,
                          f"add a comment above '{name}' saying what it does")
