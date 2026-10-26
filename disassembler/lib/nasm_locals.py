"""Spell internal owner-qualified local symbols using NASM's local scope."""

import re

_TOKEN = re.compile(r"'(?:[^']|'')*'|\"(?:[^\"]|\"\")*\"|;[^\n]*|[@A-Za-z_.$?][\w.@$?]*")
_LABEL = re.compile(r'^\s*([@A-Za-z_.$?][\w.@$?]*):')
_OFFSET = re.compile(r'^(    )(.*?) +(; (?:0x[0-9a-f]+|(?:dssize|ocorg) ; 0x[0-9a-f]+))$')


def render(text):
    """Shorten locals in their NASM scope; qualify references outside it.

    Keep strings and comments verbatim. Includes can change the current scope,
    so references after one stay qualified until a new global definition.
    """
    if '@..' not in text:
        return text
    scope = None
    out = []
    for line in text.splitlines(keepends=True):
        definition = _LABEL.match(line)
        rendered_definition = None

        def spell(match):
            nonlocal rendered_definition
            token = match.group()
            if token.startswith('@..'):
                qualified = token[3:]
                owner, _, local = qualified.rpartition('.')
                token = f'.{local}' if owner == scope else qualified
            if definition and match.start() == definition.start(1):
                rendered_definition = token
            return token

        lowered = _TOKEN.sub(spell, line)
        if rendered_definition and not rendered_definition.startswith('.'):
            scope = rendered_definition
        if line.lstrip().startswith('%include'):
            scope = None
        if lowered != line:
            # Recompute the existing field padding after shortening operands.
            offset = _OFFSET.match(lowered.rstrip('\r\n'))
            if offset:
                indent, instruction, comment = offset.groups()
                width = 42 if instruction.startswith('dw ') else 32
                ending = lowered[len(lowered.rstrip('\r\n')):]
                lowered = f'{indent}{instruction:<{width}} {comment}{ending}'
        out.append(lowered)
    return ''.join(out)


def output_text(text, path):
    """Apply local spelling only to generated NASM output."""
    return render(text) if str(path).endswith(('.asm', '.inc')) else text
