"""Initializers to bytes, and byte offsets back to the field that holds them.

The rules are C's, made stricter where C would let a mistake through: a value
must fit its field (either as signed or as unsigned), a string must fit its
array, a member may be initialized only once, and a nested aggregate needs its
own braces (no brace elision).  Anything not initialized is zero.  The one
flat list is a byte array's (any number of dimensions) holding packed text
records (``#pragma huffman``): its numbers and records fill it in order.
"""

from .lang import CDataError
from .layout import Array, Scalar, StructType


def _byte_elem(ctype):
    return isinstance(ctype, Array) and isinstance(ctype.elem, Scalar) \
        and ctype.elem.size == 1


def _innermost(ctype):
    while isinstance(ctype, Array):
        ctype = ctype.elem
    return ctype


def _all_bytes(ctype):
    return isinstance(ctype, Array) and isinstance(_innermost(ctype), Scalar) \
        and _innermost(ctype).size == 1


def _fill_flat(ctype, init, buf, offset, path, seen):
    """A byte array's flat list of numbers and packed records."""
    byte = _innermost(ctype)
    at = offset
    for designators, item in init.value:
        if designators or item.kind not in ('expr', 'packed'):
            raise CDataError(item.where, f'{path}: a list holding packed '
                             'records takes only numbers and records')
        if item.kind == 'packed':
            data = item.value
        elif byte.fits(item.value):
            data = byte.encode(item.value)
        else:
            raise CDataError(item.where,
                             f'{path}: {item.value} does not fit {byte!r}')
        if at + len(data) > offset + ctype.size:
            raise CDataError(item.where, f'{path}: the list runs past its '
                             f'{ctype.size} bytes')
        _claim(seen, at, len(data), f'{path}+0x{at - offset:x}', item.where)
        buf[at:at + len(data)] = data
        at += len(data)


def fill(ctype, init, buf, offset, path, seen):
    """Write *init* for an object of *ctype* at *buf[offset:]*."""
    if init is None:
        return
    if init.kind == 'packed':
        raise CDataError(init.where, f'{path}: a packed record goes in the '
                         'flat list of a byte array')
    if init.kind == 'list' and _all_bytes(ctype) \
            and any(item.kind == 'packed' for _d, item in init.value):
        _fill_flat(ctype, init, buf, offset, path, seen)
        return
    if isinstance(ctype, Scalar):
        if init.kind == 'list':
            if len(init.value) != 1 or init.value[0][0]:
                raise CDataError(init.where, f'{path}: a scalar takes one value')
            init = init.value[0][1]
        if init.kind != 'expr':
            raise CDataError(init.where, f'{path}: expected a number')
        if not ctype.fits(init.value):
            raise CDataError(init.where,
                             f'{path}: {init.value} does not fit {ctype!r}')
        _claim(seen, offset, ctype.size, path, init.where)
        buf[offset:offset + ctype.size] = ctype.encode(init.value)
        return
    if init.kind == 'string':
        if not _byte_elem(ctype):
            raise CDataError(init.where, f'{path}: a string needs a char array')
        if len(init.value) > ctype.count:
            raise CDataError(init.where, f'{path}: string of {len(init.value)} '
                             f'bytes does not fit [{ctype.count}]')
        _claim(seen, offset, ctype.size, path, init.where)
        buf[offset:offset + len(init.value)] = init.value
        return
    if init.kind != 'list':
        raise CDataError(init.where, f'{path}: expected {{...}} for {ctype!r}')
    if isinstance(ctype, Array):
        index = 0
        for designators, item in init.value:
            item_type, item_path = ctype.elem, None
            if designators:
                kind, value = designators[0]
                if kind != 'index':
                    raise CDataError(item.where, f'{path}: .{value} in an array')
                index = value
            if not 0 <= index < ctype.count:
                raise CDataError(item.where, f'{path}: index {index} outside '
                                 f'[{ctype.count}]')
            item_path = f'{path}[{index}]'
            at = offset + index * ctype.elem.size
            _designated(item_type, designators[1:], item, buf, at, item_path, seen)
            index += 1
        return
    if isinstance(ctype, StructType):
        position = 0
        for designators, item in init.value:
            if designators:
                kind, value = designators[0]
                if kind != 'field':
                    raise CDataError(item.where, f'{path}: [{value}] in a struct')
                found = ctype.field(value)
                if found is None:
                    raise CDataError(item.where, f'{ctype.key} has no field {value}')
                position = found[0]
            if position >= len(ctype.fields):
                raise CDataError(item.where, f'{path}: too many values for {ctype.key}')
            name, field_type = ctype.fields[position]
            _designated(field_type, designators[1:], item, buf,
                        offset + ctype.offsets[position], f'{path}.{name}', seen)
            position += 1
        return
    raise CDataError(init.where, f'{path}: cannot initialize {ctype!r}')


def _designated(ctype, designators, item, buf, offset, path, seen):
    """Follow the rest of a designator chain (``.a[2].b = ...``)."""
    for kind, value in designators:
        if kind == 'field':
            found = isinstance(ctype, StructType) and ctype.field(value)
            if not found:
                raise CDataError(item.where, f'{path} has no field {value}')
            offset += found[1]
            ctype = found[2]
            path = f'{path}.{value}'
        else:
            if not isinstance(ctype, Array) or not 0 <= value < ctype.count:
                raise CDataError(item.where, f'{path}: bad index [{value}]')
            offset += value * ctype.elem.size
            ctype = ctype.elem
            path = f'{path}[{value}]'
    fill(ctype, item, buf, offset, path, seen)


def _claim(seen, offset, size, path, where):
    for at in range(offset, offset + size):
        if at in seen:
            raise CDataError(where, f'{path} is initialized twice '
                             f'(also as {seen[at]})')
    for at in range(offset, offset + size):
        seen[at] = path


def object_bytes(obj):
    """The bytes of one parsed object definition."""
    buf = bytearray(obj.type.size)
    fill(obj.type, obj.init, buf, 0, obj.name, {})
    return bytes(buf)


def field_at(ctype, offset, path=''):
    """``(path, field start, field type)`` of the scalar holding *offset*."""
    while True:
        if isinstance(ctype, Array):
            index = offset // ctype.elem.size
            path += f'[{index}]'
            offset -= index * ctype.elem.size
            ctype = ctype.elem
        elif isinstance(ctype, StructType):
            for (name, ftype), at in zip(ctype.fields, ctype.offsets):
                if at <= offset < at + ftype.size:
                    path += f'.{name}'
                    offset -= at
                    ctype = ftype
                    break
            else:
                return path + '.<padding>', offset, None
        else:
            return path, offset, ctype


class Image:
    """A compiled data file: the bytes and the objects laid out in it."""

    def __init__(self, objects):
        self.objects = []           # (start, Object)
        data = bytearray()
        for obj in objects:
            self.objects.append((len(data), obj))
            data += object_bytes(obj)
        self.data = bytes(data)

    def where(self, offset):
        """The field path holding byte *offset* (``slot_records[4].health``)."""
        for start, obj in self.objects:
            if start <= offset < start + obj.type.size:
                return field_at(obj.type, offset - start, obj.name)[0]
        return '<past the end>'
