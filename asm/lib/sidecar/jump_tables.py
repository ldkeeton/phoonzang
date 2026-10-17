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


def _validate_code_tables(tables, description):
    """Validate a sidecar code_tables list.

    A code-pointer table is a run of in-image code offsets (e.g. a driver's
    interrupt-handler dispatch table), so it has no dispatcher address.
    ``table`` is the table's load-image offset; ``entry_size``/``count`` give
    the geometry.  The targets become hard code roots and the table bytes are
    carved as data.
    """
    if not isinstance(tables, list):
        raise SidecarError(f'{description} must be a list')
    for index, entry in enumerate(tables):
        where = f'{description}[{index}]'
        if not isinstance(entry, dict) or 'table' not in entry:
            raise SidecarError(f'{where} must be an object with "table"')
        _parse_offset(entry['table'], f'{where}.table')
        esize = entry.get('entry_size', 2)
        if esize not in (2, 4):
            raise SidecarError(f'{where}.entry_size must be 2 or 4')
        if 'count' in entry:
            count = entry['count']
            if isinstance(count, bool) or not isinstance(count, int) or count <= 0:
                raise SidecarError(f'{where}.count must be a positive integer')
