"""``records``: record layouts for data objects, by struct name."""

import re

from .constants import _IDENTIFIER
from .errors import SidecarError
from .offsets import _parse_offset


def _validate_records(block, data_names, where):
    """``records``: ``{struct name: layout}``, used by :mod:`lib.record_layout`.

    A layout is ``{"at": offset, "size": n?, "count": n?, "fields": {"26":
    "target", "30": {"name": "target_rand", "size": 8}}}``.  ``at`` is the
    ``data_names`` key of the object the layout describes, at most one layout
    an object; field keys are hex offsets into one record.  ``count`` (with
    ``size``) says the object is that many records, so an address inside them
    is a field, not a start.
    """
    if not isinstance(block, dict):
        raise SidecarError(f'{where} must be an object')
    seen = {}
    for struct, record in block.items():
        at = f'{where}[{struct}]'
        if not _IDENTIFIER.match(struct):
            raise SidecarError(f'{at}: the key must be an identifier')
        if not isinstance(record, dict):
            raise SidecarError(f'{at} must be an object')
        unknown = set(record) - {'at', 'size', 'count', 'fields'}
        if unknown:
            raise SidecarError(f'{at}: unknown key(s) {sorted(unknown)}')
        _validate_at(record.get('at'), data_names, seen, struct, at)
        _validate_shape(record, at)


def _validate_at(key, data_names, seen, struct, at):
    """``at`` names one ``data_names`` object, not another layout's."""
    if not isinstance(key, str):
        raise SidecarError(f'{at}.at must be a data_names offset')
    offset = _parse_offset(key, f'{at}.at')
    if key not in data_names:
        raise SidecarError(f'{at}.at {key!r} is not in data_names')
    if offset in seen:
        raise SidecarError(f'{at}.at {key!r} is also [{seen[offset]}].at')
    seen[offset] = struct


def _validate_shape(record, at):
    """``size``, ``count`` and ``fields`` of one layout."""
    size = record.get('size')
    if size is not None and not (type(size) is int and size > 0):
        raise SidecarError(f'{at}.size must be a positive integer')
    count = record.get('count')
    if count is not None and not (type(count) is int and count > 0
                                  and size is not None):
        raise SidecarError(f'{at}.count must be a positive integer, '
                           'with a size')
    fields = record.get('fields') or {}
    if not isinstance(fields, dict):
        raise SidecarError(f'{at}.fields must be an object')
    names = set()
    for key, field in fields.items():
        where = f'{at}.fields[{key}]'
        if not re.fullmatch(r'[0-9a-fA-F]+', key):
            raise SidecarError(f'{where}: the key is a hex offset')
        if isinstance(field, dict):
            fname, fsize = field.get('name'), field.get('size')
            if fsize is not None and not (type(fsize) is int and fsize > 0):
                raise SidecarError(f'{where}.size must be a positive integer')
        else:
            fname = field
        if not (isinstance(fname, str) and _IDENTIFIER.match(fname)):
            raise SidecarError(f'{where} must name an identifier field')
        if fname in names:
            raise SidecarError(f'{where}: field {fname!r} is named twice')
        names.add(fname)
