"""``.c`` rule: write integer constants in decimal, not hexadecimal.

The C lexer from Pygments supplies the tokens, so hex inside comments, strings
and character literals is never considered.  Pygments folds a preprocessor
line into a ``Comment.Preproc`` token; the directive body is lexed again so
``#define X 0xff`` is caught too.

Aztec C has 16-bit ``int``.  A bare ``0x8000``..``0xffff`` is an ``unsigned
int``, while the same value written in decimal would be a ``long``; those get
an ``(unsigned)`` cast so the rewrite keeps the original type.
"""

import bisect
import re

from pygments.token import Comment, Number

from .c_common import tokens
from .core import Finding, Rule, register


_HEX = re.compile(r'0[xX]([0-9a-fA-F]+)([uUlL]*)')


def _lex(text, base=0):
    """``(offset, token)`` for every Hex number token, including preprocessor
    directives (whose body Pygments leaves inside ``Comment.Preproc``)."""
    for index, token_type, value in tokens(text):
        if token_type in Number.Hex:
            match = _HEX.fullmatch(value)
            if match:
                yield base + index, value
        elif (token_type in Comment.Preproc
              and value.strip() not in ('', '#')
              and not value.lstrip().startswith('#')):
            # ``#define X 0xff`` arrives as '#', then 'define X 0xff'; lexing
            # the body with the same lexer recovers the number token.
            yield from _lex(value, base + index)


def _decimal(token):
    """The decimal spelling of a hex integer token, preserving its type."""
    match = _HEX.fullmatch(token)
    if match is None:
        return token
    value = int(match.group(1), 16)
    suffix = match.group(2).upper()
    if suffix:
        return f'{value}{suffix}'
    if value <= 0x7fff:
        return str(value)
    if value <= 0xffff:
        # Aztec C's ``U`` suffix turns a decimal constant into a long here;
        # an explicit unsigned cast keeps the original 16-bit type.
        return f'(unsigned){value}'
    if value <= 0x7fffffff:
        return str(value)
    return f'(unsigned long){value}'


def _line_starts(text):
    starts = [0]
    starts.extend(index + 1 for index, char in enumerate(text) if char == '\n')
    return starts


def _line_col(starts, offset):
    line = bisect.bisect_right(starts, offset)
    return line, offset - starts[line - 1] + 1


@register
class DecimalConstants(Rule):
    name = 'c-decimal'
    extensions = ('.c',)
    order = 10

    def check(self, text, path):
        starts = _line_starts(text)
        for offset, token in _lex(text):
            line, col = _line_col(starts, offset)
            yield Finding(path, line, col, self.name,
                          f"hex literal '{token}' (use '{_decimal(token)}')",
                          fixable=True)

    def fix(self, text, path):
        replacements = [(offset, token, _decimal(token))
                        for offset, token in _lex(text) if _decimal(token) != token]
        for offset, token, decimal in reversed(replacements):
            text = text[:offset] + decimal + text[offset + len(token):]
        return text
