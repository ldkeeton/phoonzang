"""Jump table validation."""

from .errors import SidecarError
from .offsets import _parse_offset


def _validate_jump_tables(tables, description):
    """Validate a sidecar jump_tables list.

    Each entry declares a switch table: ``table`` is the table's load-image
    offset, ``jmp`` the dispatcher offset, and ``entry_size``/``count`` the
    geometry.  Symbolic ``table``/``jmp`` addresses are required; the rest
    are optional overrides of auto-detection.
    """
    if not isinstance(tables, list):
        raise SidecarError(f'{description} must be a list')
    for index, entry in enumerate(tables):
        where = f'{description}[{index}]'
        if not isinstance(entry, dict) or 'table' not in entry:
            raise SidecarError(f'{where} must be an object with "table"')
        _parse_offset(entry['table'], f'{where}.table')
        if 'jmp' in entry:
            _parse_offset(entry['jmp'], f'{where}.jmp')
        for key in ('entry_size', 'count'):
            if key in entry:
                value = entry[key]
                if isinstance(value, bool) or not isinstance(value, int) or value <= 0:
                    raise SidecarError(f'{where}.{key} must be a positive integer')
