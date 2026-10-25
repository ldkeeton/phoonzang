"""``.c`` rule: pass message ids as ``MSG_*`` constants.

Which routines take a message id, and at which argument, is knowledge about
the game's routines: it lives in the sidecar's ``message_calls`` table.  This
rule reads that table (a binary may override an entry) and reports a bare
integer literal in that argument.  A dynamic expression (``number``,
``MSG_CLASS_BASE + label``) is allowed -- only a literal base is suspicious.

The rule is a style check.  It never feeds the ASM renderer.
"""

import re
from functools import lru_cache

from pygments.lexers import CLexer
from pygments.token import Comment, String

from .core import Finding, Rule, register


_LEXER = CLexer(stripnl=False, ensurenl=False)
_CALL = re.compile(r'\b([A-Za-z_]\w*)\s*\(')
_LITERAL = re.compile(r'^\s*(?:\([^)]*\)\s*)?'
                      r'(0[xX][0-9a-fA-F]+|\d+)\b')


@lru_cache(maxsize=None)
def _calls():
    """The sidecar's message-taking routines, keyed by name."""
    try:
        from lib.msgids import sidecar_calls
        from lib.sidecar.loader import load
    except ImportError:                     # a lint-only checkout
        return {}
    sidecar = load('DSAVANT') or {}
    return {call.routine: call for call in sidecar_calls(sidecar)}


def _mask(text):
    """Replace comments and string literals with spaces, preserving offsets."""
    chars = list(text)
    for index, token, value in _LEXER.get_tokens_unprocessed(text):
        if token in Comment or token in String:
            for offset in range(index, min(index + len(value), len(chars))):
                if chars[offset] != '\n':
                    chars[offset] = ' '
    return ''.join(chars)


def _arguments(text, open_at):
    """The top-level comma-separated arguments of the call at *open_at*.

    Returns ``([(text, offset), ...], close_at)`` or ``(None, None)`` when the
    parenthesis does not close (a malformed or truncated snippet).
    """
    depth = 0
    start = open_at + 1
    args = []
    for index in range(open_at, len(text)):
        char = text[index]
        if char == '(':
            depth += 1
        elif char == ')':
            depth -= 1
            if depth == 0:
                args.append((text[start:index], start))
                return args, index
        elif char == ',' and depth == 1:
            args.append((text[start:index], start))
            start = index + 1
    return None, None


def _definition(masked, match, close_at):
    """True when *match* is a function definition/declaration, not a call.

    Aztec C's K&R definitions put the routine name at column 0.  A call can
    also start a line, so only treat it as a definition when the closing
    parenthesis ends the line or opens the body: a call continues with ``;``,
    an operator or a member access.
    """
    line_start = masked.rfind('\n', 0, match.start()) + 1
    if masked[line_start:match.start()].strip():
        return False
    rest = masked[close_at + 1:]
    following = rest.lstrip(' \t')
    return not following or following[0] in '\n{'


@register
class MessageIdRule(Rule):
    name = 'c-message-id'
    extensions = ('.c',)

    def check(self, text, path):
        calls = _calls()
        if not calls:
            return ()
        masked = _mask(text)
        findings = []
        for match in _CALL.finditer(masked):
            routine = match.group(1)
            call = calls.get(routine)
            if call is None:
                continue
            args, close_at = _arguments(masked, match.end() - 1)
            if args is None or _definition(masked, match, close_at):
                continue
            if len(args) < call.arg:
                continue
            argument, offset = args[call.arg - 1]
            if not _LITERAL.match(argument):
                continue
            line = masked.count('\n', 0, offset) + 1
            column = offset - masked.rfind('\n', 0, offset)
            findings.append(Finding(
                path, line, column, self.name,
                f'{routine} argument {call.arg} is a message id; '
                f'use a MSG_* constant',
            ))
        return findings
