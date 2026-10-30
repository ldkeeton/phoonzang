"""The type model of the data-source C, laid out as Aztec C lays out 8086 data.

``char`` is 1 byte, ``short``/``int`` 2, ``long`` 4; a near pointer is 2 bytes
and a far pointer 4.  Fields follow each other with no padding, and a union is
as large as its largest member.
"""


class Scalar:
    __slots__ = ('name', 'size', 'signed')

    def __init__(self, name, size, signed):
        self.name, self.size, self.signed = name, size, signed

    def __eq__(self, other):
        return isinstance(other, Scalar) and (self.size, self.signed) == (
            other.size, other.signed)

    def __hash__(self):
        return hash((self.size, self.signed))

    def __repr__(self):
        return self.name

    def fits(self, value):
        bits = self.size * 8
        return -(1 << (bits - 1)) <= value < (1 << bits)

    def encode(self, value):
        return (value & ((1 << (self.size * 8)) - 1)).to_bytes(self.size, 'little')

    def decode(self, data):
        return int.from_bytes(data, 'little', signed=self.signed)


class Pointer(Scalar):
    __slots__ = ('target', 'far')

    def __init__(self, target, far):
        super().__init__(f'{target!r} {"far " if far else ""}*', 4 if far else 2,
                         False)
        self.target, self.far = target, far


class Array:
    __slots__ = ('elem', 'count')

    def __init__(self, elem, count):
        if count is not None and count < 0:
            raise ValueError('negative array size')
        self.elem, self.count = elem, count

    @property
    def size(self):
        return self.elem.size * self.count

    def __eq__(self, other):
        return isinstance(other, Array) and (self.elem, self.count) == (
            other.elem, other.count)

    def __hash__(self):
        return hash((self.elem, self.count))

    def __repr__(self):
        return f'{self.elem!r}[{self.count}]'


class StructType:
    __slots__ = ('key', 'fields', 'is_union', 'size', 'offsets', '_index')

    def __init__(self, key, fields, is_union=False):
        self.key = key                  # 'struct tag' / 'union tag'
        self.fields = list(fields)      # [(name, type)]
        self.is_union = is_union
        self.offsets = []
        offset = size = 0
        for _name, ctype in self.fields:
            self.offsets.append(0 if is_union else offset)
            offset += ctype.size
            size = max(size, ctype.size) if is_union else offset
        self.size = size
        self._index = {name: i for i, (name, _t) in enumerate(self.fields)}
        if len(self._index) != len(self.fields):
            raise ValueError(f'{key}: duplicate field name')

    def field(self, name):
        """``(index, offset, type)`` of field *name*, or None."""
        i = self._index.get(name)
        if i is None:
            return None
        return i, self.offsets[i], self.fields[i][1]

    def __eq__(self, other):
        return isinstance(other, StructType) and self.key == other.key and \
            self.fields == other.fields

    def __hash__(self):
        return hash(self.key)

    def __repr__(self):
        return self.key


_SCALARS = {
    ('char',): ('char', 1, True),
    ('signed', 'char'): ('signed char', 1, True),
    ('unsigned', 'char'): ('unsigned char', 1, False),
    ('short',): ('short', 2, True),
    ('signed', 'short'): ('short', 2, True),
    ('unsigned', 'short'): ('unsigned short', 2, False),
    ('int',): ('int', 2, True),
    ('signed',): ('int', 2, True),
    ('signed', 'int'): ('int', 2, True),
    ('unsigned',): ('unsigned', 2, False),
    ('unsigned', 'int'): ('unsigned', 2, False),
    ('short', 'int'): ('short', 2, True),
    ('unsigned', 'short', 'int'): ('unsigned short', 2, False),
    ('long',): ('long', 4, True),
    ('long', 'int'): ('long', 4, True),
    ('signed', 'long'): ('long', 4, True),
    ('unsigned', 'long'): ('unsigned long', 4, False),
    ('unsigned', 'long', 'int'): ('unsigned long', 4, False),
}


def scalar_type(words):
    """The :class:`Scalar` for type words such as ``['unsigned', 'char']``."""
    key = tuple(words)
    if key not in _SCALARS:
        raise ValueError(f'unsupported type {" ".join(words)!r}')
    return Scalar(*_SCALARS[key])


def type_text(ctype, name=''):
    """C spelling of *ctype* declaring *name* (``struct a x[3][4]``)."""
    dims = ''
    while isinstance(ctype, Array):
        dims += f'[{ctype.count}]'
        ctype = ctype.elem
    if isinstance(ctype, Pointer):
        return f'{type_text(ctype.target)} {"far " if ctype.far else ""}*{name}{dims}'
    return f'{ctype.name if isinstance(ctype, Scalar) else ctype.key} {name}{dims}'.rstrip()
