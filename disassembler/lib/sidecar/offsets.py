"""Hexadecimal offset parsing."""

from .errors import SidecarError


def _parse_offset(value, description):
    try:
        if isinstance(value, bool):
            raise ValueError
        if isinstance(value, int):
            offset = value
        elif isinstance(value, str):
            offset = int(value, 16)
        else:
            raise ValueError
    except ValueError as e:
        raise SidecarError(f'{description}: expected a hexadecimal offset') from e
    if offset < 0:
        raise SidecarError(f'{description}: offset must be non-negative')
    return offset
