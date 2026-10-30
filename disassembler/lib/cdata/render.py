"""Bytes back to C initializers: how ``make data-init`` writes the sources.

The text is meant to be read and edited: struct members are designated
(``.health = 40``), records that fit stay on one line, byte tables run sixteen
to a row, and text-like ``char`` arrays become string literals.  *labels* adds
comments naming what a number stands for: per element of the outermost array
(``/* 4: Rattkin */``) and per field value (``.location = 7 /* Ukpyr */``).
The generator compiles what it wrote and refuses output that does not
reproduce the original bytes.
"""

from .layout import Array, Pointer, Scalar, StructType, type_text

_WIDTH = 100
_TAB = 8


def _visible(text):
    return len(text.expandtabs(_TAB))


def _scalar(ctype, data):
    value = ctype.decode(data)
    if isinstance(ctype, Pointer):
        return f'0x{value:0{ctype.size * 2}x}'
    return str(value)


def _as_string(ctype, data):
    """A string literal for a text-like ``char`` array, else None.

    Three or more printable characters with a letter among them, then only
    zeros: shorter runs are as likely to be numbers that happen to print.
    """
    if not (isinstance(ctype.elem, Scalar) and ctype.elem.size == 1
            and ctype.elem.name == 'char'):
        return None
    text = data.rstrip(b'\0')
    if len(text) < 3 or any(b < 0x20 or b > 0x7e for b in text) \
            or not any(chr(b).isalpha() for b in text):
        return None
    if any(data[len(text):]):
        return None
    body = text.decode('ascii').replace('\\', '\\\\').replace('"', '\\"')
    return f'"{body}"'


def _number_row(ctype, data):
    """Each element's text: hex for unsigned tables of 16 or more, else decimal."""
    elem = ctype.elem
    hexed = not elem.signed and ctype.count >= 16
    out = []
    for i in range(ctype.count):
        value = elem.decode(data[i * elem.size:(i + 1) * elem.size])
        out.append(f'0x{value:0{elem.size * 2}x}' if hexed else str(value))
    return out


class _Text:
    """A rendered value: one line (*one*, with an optional trailing *note*)
    or several (*lines*, the first and last without indentation)."""
    __slots__ = ('one', 'note', 'lines')

    def __init__(self, one=None, note=None, lines=None):
        self.one, self.note, self.lines = one, note, lines


def _items(pad, rendered, prefixes, notes):
    """Lines for the members of an aggregate, each followed by a comma."""
    lines = []
    for text, prefix, extra in zip(rendered, prefixes, notes):
        note = '; '.join(n for n in (extra, text.note) if n)
        tail = f'\t/* {note} */' if note else ''
        if text.one is not None:
            lines.append(f'{pad}\t{prefix}{text.one},{tail}')
        else:
            lines.append(f'{pad}\t{prefix}{text.lines[0]}{tail}')
            lines.extend(text.lines[1:-1])
            lines.append(text.lines[-1] + ',')
    return lines


def _render(ctype, data, indent, field_labels):
    pad = '\t' * indent
    if isinstance(ctype, Scalar):
        return _Text(_scalar(ctype, data))
    if isinstance(ctype, Array) and isinstance(ctype.elem, Scalar):
        string = _as_string(ctype, data)
        if string is not None:
            return _Text(string)
        values = _number_row(ctype, data)
        one = '{ ' + ', '.join(values) + ' }'
        if _visible(pad + one) <= _WIDTH:
            return _Text(one)
        per = 16 if ctype.elem.size == 1 else 8
        lines = ['{']
        for i in range(0, len(values), per):
            lines.append(pad + '\t' + ', '.join(values[i:i + per]) + ',')
        return _Text(lines=lines + [pad + '}'])
    if isinstance(ctype, Array):
        size = ctype.elem.size
        rendered = [_render(ctype.elem, data[i * size:(i + 1) * size],
                            indent + 1, field_labels) for i in range(ctype.count)]
        return _Text(lines=['{'] + _items(pad, rendered, [''] * ctype.count,
                                          [None] * ctype.count) + [pad + '}'])
    if isinstance(ctype, StructType):
        rendered, notes = [], []
        for (name, ftype), at in zip(ctype.fields, ctype.offsets):
            chunk = data[at:at + ftype.size]
            rendered.append(_render(ftype, chunk, indent + 1, field_labels))
            label = None
            if isinstance(ftype, Scalar) and field_labels.get(name):
                label = field_labels[name].get(ftype.decode(chunk))
            notes.append(f'{name}: {label}' if label else None)
        if all(t.one is not None and not t.note for t in rendered):
            one = '{ ' + ', '.join(f'.{name} = {t.one}' for (name, _f), t
                                   in zip(ctype.fields, rendered)) + ' }'
            note = '; '.join(n for n in notes if n) or None
            if _visible(pad + one + ',') <= _WIDTH:
                return _Text(one, note)
        notes = [n.split(': ', 1)[1] if n else None for n in notes]
        prefixes = [f'.{name} = ' for name, _f in ctype.fields]
        return _Text(lines=['{'] + _items(pad, rendered, prefixes, notes)
                     + [pad + '}'])
    raise TypeError(f'cannot render {ctype!r}')


def render_initializer(ctype, data, element_labels=None, field_labels=None):
    """The initializer text for an object of *ctype* holding *data*."""
    field_labels = field_labels or {}
    if element_labels is not None and isinstance(ctype, Array):
        size = ctype.elem.size
        rendered = [_render(ctype.elem, data[i * size:(i + 1) * size], 1,
                            field_labels) for i in range(ctype.count)]
        notes = [f'{i}: {element_labels[i]}' if i in element_labels else str(i)
                 for i in range(ctype.count)]
        return '\n'.join(['{'] + _items('', rendered, [''] * ctype.count, notes)
                         + ['}'])
    text = _render(ctype, data, 0, field_labels)
    if text.one is not None:
        return text.one + (f'\t/* {text.note} */' if text.note else '')
    return '\n'.join(text.lines)


def render_object(name, ctype, data, element_labels=None, field_labels=None):
    """``<declaration> = <initializer>;`` for *name*.

    The caller checks the round trip, by compiling the written file
    (:func:`lib.cdata.project.compile_root`).
    """
    if len(data) != ctype.size:
        raise ValueError(f'{name}: {len(data)} bytes for {type_text(ctype)} '
                         f'({ctype.size} bytes)')
    return f'{type_text(ctype, name)} = ' + render_initializer(
        ctype, data, element_labels, field_labels) + ';\n'


def _c_string(text):
    """*text* as a C string literal: printable ASCII as itself, ``\\n``, and
    octal for any other byte."""
    out = []
    for c in text:
        if c in '"\\':
            out.append('\\' + c)
        elif c == '\n':
            out.append('\\n')
        elif ' ' <= c <= '~':
            out.append(c)
        else:
            out.append(f'\\{ord(c):03o}')
    return '"' + ''.join(out) + '"'


def render_packed(name, ctype, data, records):
    """``<declaration> = <initializer>;`` for a byte table of packed text
    records (``#pragma huffman``), one flat list in file order.

    *records* is ``[(offset, label, text)]``: a record of ``data[offset] + 1``
    bytes, written as its *text* under ``/* label */`` (as numbers when
    *text* is None).  Bytes outside every record are numbers, and a comment
    marks where each row of the table (``[n][m]``) begins.
    """
    row = ctype.elem.size if isinstance(ctype.elem, Array) else ctype.size
    lines = [f'{type_text(ctype, name)} = {{']

    def numbers(start, end):
        for j in range(start, end, 16):
            lines.append('\t' + ', '.join(f'0x{b:02x}'
                                          for b in data[j:min(end, j + 16)]) + ',')

    def rows(start, end, what):
        for r in range(-(-start // row), -(-end // row)):
            into = r * row - start
            lines.append(f'\t/* [{r}] */' if not into else
                         f'\t/* [{r}] begins {into} byte{"s" * (into != 1)} into {what} */')

    at = 0
    for offset, label, text in records + [(len(data), None, None)]:
        if at < offset:
            rows(at, offset, 'the bytes below')
            lines.append(f'\t/* +0x{at:x}: {offset - at} bytes in no record */')
            numbers(at, offset)
        if label is None:
            break
        end = offset + data[offset] + 1
        rows(offset, end, label)
        if text is None:
            lines.append(f'\t/* {label} */')
            numbers(offset, end)
        else:
            pieces = [p + '\n' for p in text.split('\n')]
            pieces[-1] = pieces[-1][:-1]
            literals = [_c_string(p) for p in pieces if p] or ['""']
            lines.append(f'\t/* {label} */ {literals[0]}'
                         + ('' if len(literals) > 1 else ','))
            for i, literal in enumerate(literals[1:], 2):
                lines.append('\t\t' + literal + (',' if i == len(literals) else ''))
        at = end
    lines.append('};')
    return '\n'.join(lines) + '\n'
