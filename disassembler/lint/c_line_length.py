"""``.c`` rule: keep every line inside 79 columns.

Long lines wrap where a person would break them.  A ``for`` header breaks at
its semicolons, a condition before ``&&``/``||``, a ternary at ``?``/``:``,
and a call after the commas at its shallowest parenthesis depth; a comparison,
a binary ``+``/``-`` or an assignment is the fallback when none of those
exist.  An assignment splits at the operator only when the right side then
fits on one line, because ``lhs =\n\trhs`` reads better than splitting the
expression itself.

A continuation line sits one tab deeper than the line it continues, which is
how the hand-written sources already wrap.  A trailing comment that no longer
fits moves onto its own line; a long comment on its own is wrapped as prose.

A line whose pieces cannot be split (one very long token) is still reported,
but not marked fixable, so ``make lint fix`` cannot churn on it.
"""

import re

from .c_common import comment_lines, mask_noncode, split_trailing_comment
from .core import Finding, Rule, register


#: The column limit, in characters.
LIMIT = 79

_LOGICAL = re.compile(r'&&|\|\|')
_COMPARE = re.compile(r'<=|>=|==|!=|(?<!<)<(?![<=])|(?<![-<>])>(?![>=])')
_BINARY = re.compile(r'(?<=\s)[+\-](?=\s)')
_ASSIGN = re.compile(r'(?<![=!<>+\-*/%&|^])=(?!=)|[+\-*/%&|^]=')
_TERNS = re.compile(r'\?|:')
_FOR = re.compile(r'^\s*for\s*\(')


def _indent(line):
    """The leading whitespace of *line*."""
    return line[:len(line) - len(line.lstrip(' \t'))]


def _depth_at(masked, offset):
    """The parenthesis depth at *offset*."""
    return masked.count('(', 0, offset) - masked.count(')', 0, offset)


def _shallowest(masked, matches):
    """The matches that sit at the lowest parenthesis depth."""
    depths = [(_depth_at(masked, match.start()), match) for match in matches]
    if not depths:
        return []
    lowest = min(depth for depth, _ in depths)
    return [match for depth, match in depths if depth == lowest]


def _break_starts(code):
    """Offsets at which a new line may start inside *code*.

    An offset is the first character of the next line, so a comma break points
    just past the comma and an operator break points at the operator.
    """
    masked = mask_noncode(code)

    if _FOR.match(masked):
        depth = 0
        starts = []
        for index, char in enumerate(masked):
            if char == '(':
                depth += 1
            elif char == ')':
                depth -= 1
            elif char == ';' and depth == 1:
                starts.append(index + 1)
        if starts:
            return starts

    def useful(positions):
        """Drop a break that would leave nothing on the first line."""
        return [position for position in positions
                if masked[:position].strip()]

    starts = useful([match.start() for match in _shallowest(
        masked, _LOGICAL.finditer(masked))])
    if starts:
        return starts

    if '?' in masked:
        starts = useful([match.start() for match in _TERNS.finditer(masked)])
        if starts:
            return starts

    depth = 0
    commas = []
    for index, char in enumerate(masked):
        if char == '(':
            depth += 1
        elif char == ')':
            depth -= 1
        elif char == ',':
            commas.append((depth, index))
    if commas:
        shallowest = min(depth for depth, _ in commas)
        return [index + 1 for depth, index in commas if depth == shallowest]

    starts = useful([match.start() for match in _shallowest(
        masked, _COMPARE.finditer(masked))])
    if starts:
        return starts

    starts = useful([match.start() for match in _BINARY.finditer(masked)])
    if starts:
        return starts

    return [match.end() for match in _ASSIGN.finditer(masked)]


def _split(code, starts):
    """Split *code* at *starts*, keeping the first line's indentation."""
    parts = [code[:starts[0]].rstrip()]
    for begin, end in zip(starts, starts[1:]):
        parts.append(code[begin:end].strip())
    parts.append(code[starts[-1]:].strip())
    return [part for part in parts if part]


def _fill(parts, continuation, limit=LIMIT):
    """Greedily pack *parts* onto lines that stay inside *limit*."""
    lines = [parts[0]]
    for part in parts[1:]:
        candidate = lines[-1] + ' ' + part
        if len(candidate) <= limit:
            lines[-1] = candidate
        else:
            lines.append(continuation + part)
    return lines


def _wrap_comment(line):
    """Wrap a comment-only line as prose, returning ``None`` if it cannot."""
    if len(line) <= LIMIT:
        return None
    indent = _indent(line)
    body = line[len(indent):]
    closing = ''
    if body.startswith('/*'):
        prefix, continuation = indent + '/* ', indent + '   '
        text = body[2:]
    elif body.startswith('*'):
        prefix = continuation = indent + '* '
        text = body[1:]
    else:
        prefix = continuation = indent
        text = body
    text = text.rstrip()
    if text.endswith('*/'):
        closing, text = ' */', text[:-2]

    words = text.split()
    if not words:
        return None
    lines = [prefix + words[0]]
    for word in words[1:]:
        candidate = lines[-1] + ' ' + word
        if len(candidate) <= LIMIT:
            lines[-1] = candidate
        else:
            lines.append(continuation + word)
    if closing:
        if len(lines[-1]) + len(closing) <= LIMIT:
            lines[-1] += closing
        else:
            # Move the last word down so the closing marker still follows
            # text instead of standing alone on its own line.
            moved = False
            if len(lines[-1].split()) > 1:
                head, word = lines[-1].rsplit(None, 1)
                candidate = continuation + word + closing
                if len(candidate) <= LIMIT:
                    lines[-1] = head
                    lines.append(candidate)
                    moved = True
            if not moved:
                lines.append(indent + closing.strip())
    if max(len(item) for item in lines) > LIMIT:
        return None
    return lines


def _assignment_break(code, continuation):
    """Where to split ``lhs = rhs`` when the right side fits on one line."""
    masked = mask_noncode(code)
    for match in _ASSIGN.finditer(masked):
        depth = _depth_at(masked, match.start())
        if depth != 0:
            continue
        right = code[match.end():].strip()
        if right and len(right) + len(continuation) <= LIMIT:
            return match.end()
        return None
    return None


def _fit_comment(parts, continuation, comment):
    """Lines for *parts* with room on the last one for *comment*."""
    reserve = len(comment) + 1
    for tail in range(1, len(parts)):
        lines = _fill(parts[:-tail], continuation)
        lines.append(continuation + ' '.join(parts[-tail:]))
        if max(len(item) for item in lines) > LIMIT:
            continue
        if len(lines[-1]) + reserve <= LIMIT:
            return lines
    return None


def _wrap_line(line, comment_line=False):
    """The replacement lines for *line*, or ``None`` when it cannot wrap."""
    if not line.strip():
        return None
    indent = _indent(line)
    if comment_line:
        return _wrap_comment(line)

    code, comment = split_trailing_comment(line)
    code = code.rstrip()
    continuation = indent + '\t'
    # An assignment reads better split at the ``=`` when its right side then
    # fits on one line; otherwise fall back to the expression itself.
    assigned = _assignment_break(code, continuation)
    starts = [assigned] if assigned is not None else _break_starts(code)
    parts = _split(code, starts) if starts else [code]
    # A first argument longer than the line needs a break of its own: start
    # the argument on the next line, just after the call's opening bracket.
    for _ in range(3):
        if len(parts[0]) <= LIMIT or not starts:
            break
        paren = mask_noncode(parts[0]).rfind('(')
        if paren == -1:
            break
        starts = [paren + 1] + starts
        parts = _split(code, starts)

    if comment and (len(code) > LIMIT or ',' in mask_noncode(code)):
        # A comment is worth breaking an argument list for; it is not worth
        # breaking an arithmetic expression in the middle.
        lines = _fit_comment(parts, continuation, comment)
        if lines is not None:
            lines[-1] += '\t' + comment
            return lines

    lines = _fill(parts, continuation)
    if max(len(item) for item in lines) > LIMIT:
        return None
    if not comment:
        return lines

    standalone = continuation + comment
    if len(standalone) <= LIMIT:
        return lines + [standalone]
    wrapped = _wrap_comment(standalone)
    if wrapped is None:
        return None
    return lines + wrapped


@register
class LineLength(Rule):
    name = 'c-line-length'
    extensions = ('.c',)
    order = 30

    def check(self, text, path):
        comments = comment_lines(text)
        for number, line in enumerate(text.splitlines(), 1):
            if len(line) <= LIMIT:
                continue
            fixable = _wrap_line(line, number in comments) is not None
            yield Finding(path, number, len(line), self.name,
                          f'line is {len(line)} columns (limit {LIMIT})',
                          fixable=fixable)

    def fix(self, text, path):
        comments = comment_lines(text)
        lines = []
        for number, line in enumerate(text.splitlines(keepends=True), 1):
            content = line.rstrip('\r\n')
            ending = line[len(content):]
            if len(content) > LIMIT:
                wrapped = _wrap_line(content, number in comments)
                if wrapped is not None:
                    lines.extend(item + ending for item in wrapped)
                    continue
            lines.append(line)
        return ''.join(lines)
