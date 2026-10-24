"""``.s`` rule: structured flow (``.if``/loops) uses one tab per level.

The high-level block macros are documented in ``readme/lmacros.md``: a block
directive sits in the instruction column and its body is exactly one tab
further in.  ``.elseif``/``.else``/``.endif`` line up with their opener.

Only the dotted block directives are tracked.  Labels at column zero, blank
lines and full-line comments are left alone.
"""

import re
from dataclasses import dataclass

from .core import Finding, Rule, register


_OPEN = {'.if': '.if', '.while': '.while', '.repeat': '.repeat'}
_CLOSE = {'.endif': '.if', '.endw': '.while',
          '.until': '.repeat', '.untilcxz': '.repeat'}
_CONTINUE = {'.elseif': '.if', '.else': '.if'}
_SPACES = re.compile(r'^[ \t]*')


@dataclass
class _Code:
    indent: int
    text: str          # leading whitespace stripped
    spaces: bool
    skip: bool         # blank, comment-only or a label line
    directive: str | None


def _split_comment(line):
    """Split at the first ``;`` outside a single-quoted string."""
    quoted = False
    for index, char in enumerate(line):
        if char == "'":
            quoted = not quoted
        elif char == ';' and not quoted:
            return line[:index], line[index:]
    return line, ''


def _parse(line):
    code, _ = _split_comment(line)
    if not code.strip():
        return _Code(0, '', False, True, None)
    leading = _SPACES.match(code).group(0)
    text = code[len(leading):]
    first = text.split(None, 1)[0].lower()
    if first.endswith(':'):
        return _Code(leading.count('\t'), text.rstrip(), ' ' in leading,
                     True, None)
    directive = first if first.startswith('.') else None
    return _Code(leading.count('\t'), text.rstrip(), ' ' in leading,
                 False, directive)


def _check(text, path):
    findings = []
    stack = []  # (indent, kind, line)
    for number, line in enumerate(text.splitlines(), 1):
        code = _parse(line)
        if code.skip:
            continue
        expected = None
        if code.directive in _OPEN:
            if stack:
                expected = stack[-1][0] + 1
                stack.append((expected, _OPEN[code.directive], number))
            else:
                # The base indent is the file's own convention; only nested
                # blocks are relative to it.
                stack.append((code.indent, _OPEN[code.directive], number))
        elif code.directive in _CONTINUE:
            if not stack or stack[-1][1] != _CONTINUE[code.directive]:
                findings.append(Finding(
                    path, number, 1, 'asm-indent',
                    f'{code.directive} without {_CONTINUE[code.directive]}'))
            else:
                expected = stack[-1][0]
        elif code.directive in _CLOSE:
            if not stack or stack[-1][1] != _CLOSE[code.directive]:
                findings.append(Finding(
                    path, number, 1, 'asm-indent',
                    f'{code.directive} without {_CLOSE[code.directive]}'))
            else:
                expected = stack[-1][0]
                stack.pop()
        elif stack:
            expected = stack[-1][0] + 1

        if code.spaces:
            findings.append(Finding(
                path, number, 1, 'asm-indent',
                'indent with tabs, not spaces', fixable=True))
        elif expected is not None and code.indent != expected:
            findings.append(Finding(
                path, number, 1, 'asm-indent',
                f'expected {expected} tab(s), found {code.indent}',
                fixable=True))

    for indent, kind, number in stack:
        findings.append(Finding(
            path, number, 1, 'asm-indent', f'unclosed {kind}'))
    return findings


def _fix(text, path):
    lines = text.splitlines(keepends=True)
    stack = []  # (indent, kind)
    fixed = []
    for line in lines:
        code = _parse(line)
        if code.skip:
            fixed.append(line)
            continue
        desired = None
        if code.directive in _OPEN:
            desired = stack[-1][0] + 1 if stack else max(code.indent, 1)
            stack.append((desired, _OPEN[code.directive]))
        elif code.directive in _CONTINUE:
            if stack and stack[-1][1] == _CONTINUE[code.directive]:
                desired = stack[-1][0]
        elif code.directive in _CLOSE:
            if stack and stack[-1][1] == _CLOSE[code.directive]:
                desired = stack[-1][0]
                stack.pop()
        elif stack:
            desired = stack[-1][0] + 1

        if desired is None:
            fixed.append(line)
            continue
        prefix = _SPACES.match(line).group(0)
        fixed.append('\t' * desired + line[len(prefix):])
    return ''.join(fixed)


@register
class StructuredIndent(Rule):
    name = 'asm-indent'
    extensions = ('.s',)
    order = 40

    def check(self, text, path):
        return _check(text, path)

    def fix(self, text, path):
        return _fix(text, path)
