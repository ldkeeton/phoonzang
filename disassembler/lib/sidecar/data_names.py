"""``data_names``: names for data-segment objects, by DS offset."""

import re

from .constants import _IDENTIFIER
from .errors import SidecarError
from .offsets import _parse_offset

#: The build's address spelling of a data object (``dseg_8482``/``bss_8482``).
_ADDRESS_NAME = re.compile(r'(?:dseg|bss|cseg)_[0-9a-f]{4,5}$')


def _validate_data_names(block, where):
    """``data_names``: ``{DS offset: {"name": ..., "note": ...}}``.

    The offset is the object's DS offset (what an operand encodes), not a
    file offset.  ``code_data_names`` has the same shape, keyed by the file
    offset of data the code reaches through CS.  A name must be an identifier, unique in the block, and not
    an address spelling, which would read as the generated name of some other
    object.

    An optional positive ``length`` owns that many initialized data bytes as
    one fragment, retaining labels inside it. The span must hold data records
    only and not end inside a record (a plain data block may be cut);
    overlapping spans are invalid.
    With ``length``, an optional ``file`` names that fragment instead of
    the object, as a ``function_names`` ``file`` names a group of routines.

    An optional ``"record"`` names the object's record layout
    (:mod:`lib.record_layout`): ``{"name": "slot_rec", "size": n?, "fields":
    {"26": "target", "30": {"name": "target_rand", "size": 8}}}``, field keys
    hex offsets into one record.  ``"count"`` (with ``size``) says the object
    is that many records, so an address inside them is a field, not a start.
    """
    if not isinstance(block, dict):
        raise SidecarError(f'{where} must be an object')
    seen = {}
    for key, info in block.items():
        at = f'{where}[{key}]'
        _parse_offset(key, f'{at} offset')
        name = info.get('name') if isinstance(info, dict) else None
        if not (isinstance(name, str) and _IDENTIFIER.match(name)):
            raise SidecarError(f'{at} must be an object with an identifier "name"')
        if _ADDRESS_NAME.match(name):
            raise SidecarError(f'{at}.name {name!r} is an address spelling; '
                               'name the object for what it holds')
        if name in seen:
            raise SidecarError(f'{at}.name {name!r} also names [{seen[name]}]')
        seen[name] = key
        if 'length' in info and (type(info['length']) is not int
                                 or info['length'] <= 0):
            raise SidecarError(f'{at}.length must be a positive integer')
        if 'record' in info:
            _validate_record(info['record'], f'{at}.record')
    _validate_file_stems(block, where, 'object')


def _validate_file_stems(block, where, kind):
    """The ``file`` keys of a ``function_names``/``data_names`` block.

    ``file`` names a grouped fragment's .asm (and its .c/.s) instead of its
    first *kind*'s name: it needs ``length`` on the same entry, is an
    identifier, is no *kind* name of the block, and names one group only.
    """
    names = {info['name'] for info in block.values()
             if isinstance(info, dict) and 'name' in info}
    files = {}
    for key, info in block.items():
        if not isinstance(info, dict) or 'file' not in info:
            continue
        stem = info['file']
        at = f'{where}[{key}].file'
        if not isinstance(stem, str) or not _IDENTIFIER.match(stem):
            raise SidecarError(f'{at}: expected an identifier')
        if 'length' not in info:
            raise SidecarError(f'{at}: needs "length" on the same entry')
        if stem in names:
            raise SidecarError(f'{at}: {stem!r} is a {kind} name')
        if stem in files:
            raise SidecarError(f'{at}: {stem!r} is also [{files[stem]}].file')
        files[stem] = key


def _validate_record(record, where):
    """A ``data_names`` entry's ``record``: struc and field names."""
    if not isinstance(record, dict):
        raise SidecarError(f'{where} must be an object')
    unknown = set(record) - {'name', 'size', 'count', 'fields'}
    if unknown:
        raise SidecarError(f'{where}: unknown key(s) {sorted(unknown)}')
    name = record.get('name')
    if name is not None and not (isinstance(name, str)
                                 and _IDENTIFIER.match(name)):
        raise SidecarError(f'{where}.name must be an identifier')
    size = record.get('size')
    if size is not None and not (isinstance(size, int) and size > 0):
        raise SidecarError(f'{where}.size must be a positive integer')
    count = record.get('count')
    if count is not None and not (isinstance(count, int) and count > 0
                                  and size is not None):
        raise SidecarError(f'{where}.count must be a positive integer, '
                           'with a size')
    fields = record.get('fields') or {}
    if not isinstance(fields, dict):
        raise SidecarError(f'{where}.fields must be an object')
    names = set()
    for key, field in fields.items():
        at = f'{where}.fields[{key}]'
        if not re.fullmatch(r'[0-9a-fA-F]+', key):
            raise SidecarError(f'{at}: the key is a hex offset')
        if isinstance(field, dict):
            fname, fsize = field.get('name'), field.get('size')
            if fsize is not None and not (isinstance(fsize, int) and fsize > 0):
                raise SidecarError(f'{at}.size must be a positive integer')
        else:
            fname = field
        if not (isinstance(fname, str) and _IDENTIFIER.match(fname)):
            raise SidecarError(f'{at} must name an identifier field')
        if fname in names:
            raise SidecarError(f'{at}: field {fname!r} is named twice')
        names.add(fname)


def _data_names_map(raw):
    """``{int DS offset: entry}`` of a validated ``data_names`` block."""
    return {_parse_offset(key, f'data_names[{key}]'): entry
            for key, entry in (raw or {}).items()}
