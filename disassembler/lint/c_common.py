"""Shared helpers for the ``.c`` lint rules.

Pygments' C lexer decides what is code, comment or string; the helpers here
turn that token stream into the line and offset views the rules share.  They
are deliberately small: a rule that needs a new view should add it here so the
next rule can use it too.
"""

import bisect
import re

from pygments.lexers import CLexer
from pygments.token import Comment, String


LEXER = CLexer(stripnl=False, ensurenl=False)


def _noncode(token):
    """True for comment and string tokens, including their subtypes."""
    return token in Comment or token in String


def line_starts(text):
    """The offset at which each line starts."""
    starts = [0]
    starts.extend(index + 1 for index, char in enumerate(text) if char == '\n')
    return starts


def line_col(starts, offset):
    """The 1-based ``(line, column)`` of *offset*."""
    line = bisect.bisect_right(starts, offset)
    return line, offset - starts[line - 1] + 1


def noncode_lines(text):
    """1-based line numbers whose leading text is comment or string."""
    starts = line_starts(text)
    first_nonblank = {}
    for index, line in enumerate(text.splitlines()):
        stripped = line.lstrip(' \t')
        if stripped:
            first_nonblank[starts[index] + len(line) - len(stripped)] = index + 1

    lines = set()
    for offset, token, value in LEXER.get_tokens_unprocessed(text):
        if not _noncode(token):
            continue
        if offset in first_nonblank:
            lines.add(first_nonblank[offset])
        # A multi-line token also owns the start of every line it spans.
        line = bisect.bisect_right(starts, offset)
        end = offset + len(value)
        while line < len(starts) and starts[line] < end:
            lines.add(line + 1)
            line += 1
    return lines


_CONTROL = {
    'break', 'case', 'continue', 'default', 'do', 'else', 'for', 'goto',
    'if', 'return', 'sizeof', 'switch', 'while',
}
_PREFIX = re.compile(r'[A-Za-z_][A-Za-z0-9_ \t\*]*\Z')


def function_header(line):
    """Parse a top-level C function header from a masked *line*.

    Returns ``(name, params, tail)`` for ``int foo(a, b)``, ``foo(a) {`` and
    ``long bar();``; *tail* is the text after the matching ``)`` (empty,
    ``';'`` or ``'{'``).  Returns ``None`` for anything else, including
    control statements and assignments.
    """
    if line[:1] in (' ', '\t'):
        return None
    paren = line.find('(')
    if paren <= 0:
        return None
    before = line[:paren].rstrip()
    match = re.search(r'([A-Za-z_]\w*)\Z', before)
    if match is None or match.group(1) in _CONTROL:
        return None
    # What precedes the name must be a return type (empty for implicit int).
    prefix = before[:match.start()]
    if prefix and not _PREFIX.fullmatch(prefix):
        return None

    depth = 0
    for index in range(paren, len(line)):
        if line[index] == '(':
            depth += 1
        elif line[index] == ')':
            depth -= 1
            if depth == 0:
                return (match.group(1), line[paren + 1:index],
                        line[index + 1:].strip())
    return None


def split_trailing_comment(line):
    """``(code, comment)`` when *line* ends in a comment on the same line.

    The comment is the last token on the line; a line that is nothing but
    comment returns ``(line, '')`` so callers never mistake a comment-only
    line for code with a comment beside it.
    """
    body = line.rstrip('\r\n')
    for start, token, value in LEXER.get_tokens_unprocessed(body):
        if not _noncode(token) or token in String:
            continue
        if not value.lstrip().startswith('/*'):
            continue
        if body[start + len(value):].strip():
            continue
        if body[:start].strip():
            return body[:start], value
    return line, ''


def comment_lines(text):
    """1-based lines whose leading text is part of a comment.

    Unlike :func:`noncode_lines`, a string literal does not count: this is for
    rules that wrap prose, where a code line that happens to start with a
    string must stay code.
    """
    starts = line_starts(text)
    first_nonblank = {}
    for index, line in enumerate(text.splitlines()):
        stripped = line.lstrip(' \t')
        if stripped:
            first_nonblank[starts[index] + len(line) - len(stripped)] = index + 1

    lines = set()
    for offset, token, value in LEXER.get_tokens_unprocessed(text):
        if token not in Comment:
            continue
        if offset in first_nonblank:
            lines.add(first_nonblank[offset])
        line = bisect.bisect_right(starts, offset)
        end = offset + len(value)
        while line < len(starts) and starts[line] < end:
            lines.add(line + 1)
            line += 1
    return lines


def mask_noncode(text):
    """*text* with comments and strings blanked, newlines and offsets kept.

    The C-only rules that look at braces or declarations run over this view so
    a comment or a ``"{"`` cannot change the answer.
    """
    pieces = []
    previous = 0
    for offset, token, value in LEXER.get_tokens_unprocessed(text):
        if not _noncode(token):
            continue
        pieces.append(text[previous:offset])
        pieces.append(''.join('\n' if char == '\n' else ' ' for char in value))
        previous = offset + len(value)
    pieces.append(text[previous:])
    return ''.join(pieces)
