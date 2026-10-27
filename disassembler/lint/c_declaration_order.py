"""``.c`` rule: declarations come before statements in each block.

That is a K&R C requirement, so Aztec C is entitled to reject anything else.
The check tracks brace depth, ignores struct/union/enum member lists and
brace initializers, and recognises a function header so its parameter
declarations are not mistaken for statements.
"""

import re

from .c_common import function_header, mask_noncode
from .core import Finding, Rule, register


_DECL = re.compile(
    r'^(?:register|auto|static|extern|const|volatile|unsigned|signed|short'
    r'|long|int|char|void|float|double|struct|union|enum|typedef)\b')
_STMT = re.compile(r'^(?:if|else|for|while|do|switch|return|goto|break'
                   r'|continue)\b')
_LABEL = re.compile(r'^(?:case\b|default\b|[A-Za-z_]\w*\s*:)')
_INITIALIZER = re.compile(r'=\s*\{')
_MEMBER_DECL = re.compile(
    r'^(?:(?:extern|static|typedef|const|volatile)\s+)*(?:struct|union|enum)\b')


def _check(text, path):
    findings = []
    # One entry per open block: whether a statement has been seen, and whether
    # the block is a struct/union/enum member list (where order is irrelevant).
    stack = [{'seen': False, 'members': False}]
    header = False
    initializer = 0
    #: A declaration wrapped at a comma continues on the next line; the rest
    #: of it is not a statement.
    continuing = False
    typedefs = set()
    asm = False

    def declaration(code):
        return _DECL.match(code) or code.split(None, 1)[0] in typedefs

    lines = zip(text.splitlines(), mask_noncode(text).splitlines())
    for number, (raw, line) in enumerate(lines, 1):
        code = line.strip()
        if raw.strip() == '#asm':
            asm = True
            if len(stack) > 1:
                stack[-1]['seen'] = True
            continue
        if raw.strip() == '#endasm':
            asm = False
            continue
        if asm or not code or code.startswith('#'):
            continue
        if code.startswith('typedef ') and code.endswith(';'):
            alias = re.search(r'([A-Za-z_]\w*)\s*;$', code)
            if alias:
                typedefs.add(alias[1])
        if continuing:
            if code.endswith(';'):
                continuing = False
            continue
        if initializer:
            initializer += code.count('{') - code.count('}')
            continue

        closed_members = False
        closed_typedef = False
        while code.startswith('}'):
            if len(stack) > 1:
                closed_members = closed_members or stack[-1]['members']
                closed_typedef = closed_typedef or stack[-1].get('typedef', False)
                stack.pop()
            code = code[1:].lstrip()
        if not code or code[0] in ';,.':
            continue

        if closed_members and code.endswith(';'):
            # Remember aliases on multiline typedef struct/union definitions.
            if closed_typedef:
                typedefs.update(re.findall(r'[A-Za-z_]\w*', code))
            continue

        if '{' in code and code.count('{') == code.count('}'):
            # A one-line block, member list or brace initializer.
            if declaration(code):
                if stack[-1]['seen'] and not stack[-1]['members']:
                    findings.append((number, line, code))
            else:
                stack[-1]['seen'] = True
            continue

        if code.count('{') > code.count('}'):
            if _INITIALIZER.search(code):
                initializer = code.count('{') - code.count('}')
                continue
            parsed = function_header(code)
            if parsed is not None and parsed[2].startswith('{'):
                stack.append({'seen': False, 'members': False})
                header = False
                continue
            if _MEMBER_DECL.match(code) and _DECL.match(code):
                stack.append({'seen': False, 'members': True,
                              'typedef': code.startswith('typedef ')})
                continue
            if _STMT.match(code):
                stack[-1]['seen'] = True
            stack.append({'seen': False, 'members': False})
            header = False
            continue

        if header:
            continue
        parsed = function_header(code)
        if len(stack) == 1 and parsed is not None and parsed[2] in ('', ';'):
            if parsed[2] == '':
                header = True
            continue

        if _STMT.match(code) or _LABEL.match(code):
            stack[-1]['seen'] = True
        elif declaration(code):
            if stack[-1]['seen'] and not stack[-1]['members']:
                findings.append((number, line, code))
            if code.endswith(','):
                continuing = True
        else:
            stack[-1]['seen'] = True

    return [Finding(path, number, line.index(code) + 1, 'c-declaration-order',
                    'declaration after a statement; put declarations first')
            for number, line, code in findings]


@register
class DeclarationOrder(Rule):
    name = 'c-declaration-order'
    extensions = ('.c',)
    order = 95

    def check(self, text, path):
        return _check(text, path)
