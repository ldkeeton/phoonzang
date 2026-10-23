"""``.s`` rule: use the ``hlmacros`` shorthand where it is an exact fit.

Only instruction sequences whose expansion is byte-for-byte identical are
matched:

* interrupt calls: ``mov ah,fn`` (+ ``mov al,arg``) / ``int 21h`` and friends
* ``frame`` / ``unframe``
* ``pushs`` / ``pops`` for runs of two or more registers
* ``movseg``
* ``outp``
* ``umin`` / ``umax``
* ``fatal``

Comments on the replaced lines are moved onto the macro line, so no text is
lost.  A sequence with a label on any line is left alone.
"""

import re
from dataclasses import dataclass

from .core import Finding, Rule, register


_REGS = {'ax', 'bx', 'cx', 'dx', 'si', 'di', 'bp', 'sp',
         'cs', 'ds', 'es', 'ss'}
_PUSH_MAX = 8


@dataclass
class _Line:
    indent: str
    mnemonic: str
    operands: str
    comment: str
    label: str | None = None


@dataclass
class _Match:
    span: int
    replacement: list[str]
    usage: str


def _split_comment(line):
    quoted = False
    for index, char in enumerate(line):
        if char == "'":
            quoted = not quoted
        elif char == ';' and not quoted:
            return line[:index], line[index:]
    return line, ''


def _parse(line):
    code, comment = _split_comment(line)
    if not code.strip():
        return None
    leading = code[:len(code) - len(code.lstrip(' \t'))]
    text = code.strip()
    parts = text.split(None, 1)
    first = parts[0]
    rest = parts[1] if len(parts) > 1 else ''
    if first.endswith(':'):
        return _Line(leading, '', '', comment, label=first[:-1])
    return _Line(leading, first.lower(), rest.strip(), comment)


def _norm(text):
    return re.sub(r'\s+', ' ', text.strip()).lower()


def _operands(text):
    return [part.strip() for part in re.split(r'\s*,\s*', text.strip())]


def _arg(text):
    """A macro argument; angle brackets when it contains spaces or commas."""
    text = re.sub(r'\s+', ' ', text.strip())
    if not text:
        return text
    if any(char.isspace() for char in text) or ',' in text:
        return f'<{text}>'
    return text


def _number(text):
    """The integer a simple literal spells, or ``None``."""
    if text is None:
        return None
    text = text.strip().lower()
    try:
        if text.endswith('h'):
            return int(text[:-1], 16)
        if text.startswith('0x'):
            return int(text, 16)
        return int(text, 10)
    except ValueError:
        return None


def _int_is(value, wanted):
    return _number(value) == wanted


def _same(left, right):
    return _norm(left) == _norm(right)


def _mov(line, dst, src=None):
    if line is None or line.label or line.mnemonic != 'mov':
        return False
    parts = _operands(line.operands)
    if len(parts) != 2 or not _same(parts[0], dst):
        return False
    return src is None or _same(parts[1], src)


def _mov_src(line, dst):
    if line is None or line.label or line.mnemonic != 'mov':
        return None
    parts = _operands(line.operands)
    if len(parts) != 2 or not _same(parts[0], dst):
        return None
    return parts[1]


def _out_dx_al(line):
    return (line is not None and not line.label and line.mnemonic == 'out'
            and _same(line.operands, 'dx,al'))


def _comments(parsed):
    comments = []
    for line in parsed:
        if line is None or not line.comment.strip():
            continue
        text = line.comment.strip()
        if text.startswith(';'):
            text = text[1:].strip()
        if text:
            comments.append(text)
    return comments


def _code(indent, name, args, comments):
    text = indent + name
    if args:
        text += '\t' + ','.join(args)
    if comments:
        text += '\t; ' + '; '.join(comments)
    return text


def _usage(name, args):
    return name + (' ' + ','.join(args) if args else '')


def _match_fatal(lines, i):
    parsed = [_parse(lines[i + j]) if i + j < len(lines) else None
              for j in range(7)]
    if any(line is None or line.label for line in parsed):
        return None
    if not _mov(parsed[0], 'ax', 'cs') or not _mov(parsed[1], 'ds', 'ax'):
        return None
    source = _mov_src(parsed[2], 'dx')
    match = re.fullmatch(r'offset\s+(.+)', source or '', re.I)
    if match is None:
        return None
    message = match.group(1).strip()
    if not _int_is(_mov_src(parsed[3], 'ah'), 9):
        return None
    if parsed[4].mnemonic != 'int' or not _int_is(parsed[4].operands, 0x21):
        return None
    code = None
    exit_src = _mov_src(parsed[5], 'ax')
    if exit_src is not None:
        match = re.fullmatch(r'4c([0-9a-f]{2})h', exit_src.strip(), re.I)
        if match:
            code = int(match.group(1), 16)
        else:
            match = re.fullmatch(r'4c00h\s*\+\s*(\d+)', exit_src.strip(), re.I)
            if match:
                code = int(match.group(1), 10)
    if code is None:
        return None
    if parsed[6].mnemonic != 'int' or not _int_is(parsed[6].operands, 0x21):
        return None

    args = [_arg(message)]
    if code != 1:
        args.append(str(code))
    indent = parsed[0].indent
    comments = _comments(parsed)
    return _Match(7, [_code(indent, 'fatal', args, comments)],
                  _usage('fatal', args))


def _match_outp(lines, i):
    parsed = [_parse(lines[i + j]) if i + j < len(lines) else None
              for j in range(6)]
    if any(line is None or line.label for line in parsed[:3]):
        return None
    port = _mov_src(parsed[0], 'dx')
    value = _mov_src(parsed[1], 'al')
    if port is None or value is None or not _out_dx_al(parsed[2]):
        return None
    args = [_arg(port), _arg(value)]
    span = 3
    if (parsed[3] is not None and not parsed[3].label
            and parsed[3].mnemonic == 'inc'
            and _same(parsed[3].operands, 'dx')):
        second = _mov_src(parsed[4], 'al')
        if (parsed[4] is None or parsed[4].label or second is None
                or not _out_dx_al(parsed[5])):
            return None
        args.append(_arg(second))
        span = 6
    comments = _comments(parsed[:span])
    indent = parsed[0].indent
    return _Match(span, [_code(indent, 'outp', args, comments)],
                  _usage('outp', args))


def _match_interrupt(lines, i):
    first = _parse(lines[i]) if i < len(lines) else None
    if first is None or first.label or first.mnemonic != 'mov':
        return None
    parts = _operands(first.operands)
    if len(parts) != 2:
        return None
    dst = _norm(parts[0])
    value = parts[1]
    if dst not in ('ah', 'ax'):
        return None

    second = _parse(lines[i + 1]) if i + 1 < len(lines) else None
    third = _parse(lines[i + 2]) if i + 2 < len(lines) else None
    al_value = None
    span = 2
    intr = second
    if second is not None and not second.label and second.mnemonic == 'mov':
        parts2 = _operands(second.operands)
        if len(parts2) == 2 and _same(parts2[0], 'al'):
            al_value = parts2[1]
            intr = third
            span = 3
    if intr is None or intr.label or intr.mnemonic != 'int':
        return None
    number = _number(intr.operands)
    if number is None:
        return None

    name = args = None
    if number == 0x21:
        if dst == 'ax':
            name, args = 'dosx', [_arg(value)]
        elif al_value is not None:
            name, args = 'dos', [_arg(value), _arg(al_value)]
        else:
            name, args = 'dos', [_arg(value)]
    elif number == 0x10:
        if dst == 'ax':
            name, args = 'videox', [_arg(value)]
        elif al_value is not None:
            name, args = 'video', [_arg(value), _arg(al_value)]
        else:
            name, args = 'video', [_arg(value)]
    elif number == 0x16 and dst == 'ah' and al_value is None:
        name, args = 'kbd', [_arg(value)]
    elif number == 0x67 and dst == 'ah' and al_value is None:
        name, args = 'ems', [_arg(value)]
    elif number == 0x33 and dst == 'ax':
        name, args = 'mouse', [_arg(value)]
    if name is None:
        return None

    parsed = [first, second, third][:span]
    comments = _comments(parsed)
    indent = first.indent
    return _Match(span, [_code(indent, name, args, comments)],
                  _usage(name, args))


def _match_frame(lines, i):
    parsed = [_parse(lines[i + j]) if i + j < len(lines) else None
              for j in range(3)]
    if parsed[0] is None or parsed[0].label:
        return None
    if parsed[0].mnemonic != 'push' or not _same(parsed[0].operands, 'bp'):
        return None
    if not _mov(parsed[1], 'bp', 'sp'):
        return None
    args = []
    span = 2
    if parsed[2] is not None and not parsed[2].label:
        parts = _operands(parsed[2].operands)
        if (parsed[2].mnemonic == 'sub' and len(parts) == 2
                and _same(parts[0], 'sp')):
            args = [_arg(parts[1])]
            span = 3
    comments = _comments(parsed[:span])
    indent = parsed[0].indent
    return _Match(span, [_code(indent, 'frame', args, comments)],
                  _usage('frame', args))


def _match_unframe(lines, i):
    parsed = [_parse(lines[i + j]) if i + j < len(lines) else None
              for j in range(3)]
    if any(line is None or line.label for line in parsed):
        return None
    if not _mov(parsed[0], 'sp', 'bp'):
        return None
    if parsed[1].mnemonic != 'pop' or not _same(parsed[1].operands, 'bp'):
        return None
    if parsed[2].mnemonic != 'ret':
        return None
    comments = _comments(parsed)
    return _Match(3, [_code(parsed[0].indent, 'unframe', [], comments)],
                  'unframe')


def _match_movseg(lines, i):
    parsed = [_parse(lines[i + j]) if i + j < len(lines) else None
              for j in range(2)]
    if any(line is None or line.label for line in parsed):
        return None
    source = _mov_src(parsed[0], 'ax')
    if source is None:
        return None
    parts = _operands(parsed[1].operands)
    if (parsed[1].mnemonic != 'mov' or len(parts) != 2
            or _norm(parts[0]) not in ('ds', 'es', 'ss')
            or not _same(parts[1], 'ax')):
        return None
    args = [_norm(parts[0]), _arg(source)]
    comments = _comments(parsed)
    return _Match(2, [_code(parsed[0].indent, 'movseg', args, comments)],
                  _usage('movseg', args))


def _match_umin(lines, i):
    parsed = [_parse(lines[i + j]) if i + j < len(lines) else None
              for j in range(4)]
    if any(line is None for line in parsed):
        return None
    if parsed[0].label or parsed[1].label or parsed[2].label:
        return None
    if parsed[0].mnemonic != 'cmp' or parsed[2].mnemonic != 'mov':
        return None
    if not _same(parsed[0].operands, parsed[2].operands):
        return None
    if parsed[1].mnemonic not in ('jb', 'jae'):
        return None
    if parsed[3].label is None or not _same(parsed[1].operands, parsed[3].label):
        return None
    parts = _operands(parsed[0].operands)
    if len(parts) != 2:
        return None
    name = 'umin' if parsed[1].mnemonic == 'jb' else 'umax'
    args = [_arg(parts[0]), _arg(parts[1])]
    comments = _comments(parsed[:3])
    return _Match(3, [_code(parsed[0].indent, name, args, comments)],
                  _usage(name, args))


def _match_pushrun(lines, i, kind):
    regs = []
    j = i
    while j < len(lines):
        line = _parse(lines[j])
        if line is None or line.label or line.mnemonic != kind:
            break
        if _norm(line.operands) not in _REGS:
            break
        regs.append(_norm(line.operands))
        j += 1
        if len(regs) > _PUSH_MAX:
            return None
    if len(regs) < 2:
        return None
    name = 'pushs' if kind == 'push' else 'pops'
    comments = _comments([_parse(line) for line in lines[i:j]])
    indent = _parse(lines[i]).indent
    return _Match(j - i, [_code(indent, name, regs, comments)],
                  _usage(name, regs))


def _match(lines, i):
    for matcher in (
            _match_fatal,
            _match_outp,
            _match_interrupt,
            _match_frame,
            _match_unframe,
            _match_movseg,
            _match_umin,
            lambda ls, n: _match_pushrun(ls, n, 'push'),
            lambda ls, n: _match_pushrun(ls, n, 'pop')):
        found = matcher(lines, i)
        if found is not None:
            return found
    return None


def _check(text, path):
    lines = text.splitlines()
    findings = []
    index = 0
    while index < len(lines):
        found = _match(lines, index)
        if found is None:
            index += 1
            continue
        indent = _parse(lines[index]).indent
        findings.append(Finding(path, index + 1, len(indent) + 1,
                                'asm-macros', f"use '{found.usage}'",
                                fixable=True))
        index += found.span
    return findings


def _fix(text, path):
    newline = '\r\n' if '\r\n' in text else '\n'
    trailing = text.endswith(newline)
    body = text[:-len(newline)] if trailing else text
    lines = body.split(newline) if body else []
    output = []
    index = 0
    while index < len(lines):
        found = _match(lines, index)
        if found is None:
            output.append(lines[index])
            index += 1
        else:
            output.extend(found.replacement)
            index += found.span
    result = newline.join(output)
    if trailing:
        result += newline
    return result


@register
class HlmacroUsage(Rule):
    name = 'asm-macros'
    extensions = ('.s',)
    order = 20

    def check(self, text, path):
        return _check(text, path)

    def fix(self, text, path):
        return _fix(text, path)
