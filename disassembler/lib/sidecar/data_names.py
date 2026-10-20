"""``data_names``: names for data-segment objects, by DS offset."""

import re

from .constants import _IDENTIFIER
from .errors import SidecarError
from .offsets import _parse_offset

#: The build's address spelling of a data object (``dseg_8482``/``bss_8482``).
_ADDRESS_NAME = re.compile(r'(?:dseg|bss)_[0-9a-f]{4}$')


def _validate_data_names(block, where):
    """``data_names``: ``{DS offset: {"name": ..., "note": ...}}``.

    The offset is the object's DS offset (what an operand encodes), not a
    file offset.  A name must be an identifier, unique in the block, and not
    an address spelling, which would read as the generated name of some other
    object.
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


def _data_names_map(raw):
    """``{int DS offset: entry}`` of a validated ``data_names`` block."""
    return {_parse_offset(key, f'data_names[{key}]'): entry
            for key, entry in (raw or {}).items()}
