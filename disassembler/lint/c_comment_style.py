"""``.c`` rule: use ``/* ... */`` comments, because Aztec C is pre-ANSI.

Pygments classifies ``//`` as ``Comment.Single``; a ``//`` inside a string is
a string token and is never considered.  The fixer leaves a comment
containing ``*/`` alone, because closing the new block comment would need an
escape the old C has no syntax for.
"""

from pygments.token import Comment

from .c_common import line_col, line_starts, tokens
from .core import Finding, Rule, register


def _single_line_comments(text):
    """``(offset, comment text)`` for every ``//`` comment."""
    for offset, token, value in tokens(text):
        if token in Comment.Single and value.startswith('//'):
            yield offset, value


def _replacement(value):
    """The block-comment spelling of a ``//`` comment, or ``None``."""
    ending = ''
    body = value[2:]
    if body.endswith('\r\n'):
        ending, body = '\r\n', body[:-2]
    elif body.endswith('\n'):
        ending, body = '\n', body[:-1]
    body = body.strip()
    if '*/' in body:
        return None
    comment = f'/* {body} */' if body else '/* */'
    return comment + ending


@register
class CommentStyle(Rule):
    name = 'c-comment-style'
    extensions = ('.c',)
    order = 60

    def check(self, text, path):
        starts = line_starts(text)
        for offset, value in _single_line_comments(text):
            line, col = line_col(starts, offset)
            fixable = _replacement(value) is not None
            yield Finding(path, line, col, self.name,
                          "C89 has no '//' comments; use '/* ... */'",
                          fixable=fixable)

    def fix(self, text, path):
        replacements = []
        for offset, value in _single_line_comments(text):
            replacement = _replacement(value)
            if replacement is not None:
                replacements.append((offset, value, replacement))
        for offset, value, replacement in reversed(replacements):
            text = text[:offset] + replacement + text[offset + len(value):]
        return text
