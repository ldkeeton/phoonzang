"""Character-table validation."""

from .errors import SidecarError
from .offsets import _parse_offset


def _validate_char_tables(tables, description):
    """Validate a sidecar ``char_tables`` list.

    Each entry declares a byte table indexed by character code (a ctype
    class table, a case map): ``table`` is the file offset of its first byte
    and ``count`` its length; ``first`` is the character code byte 0 stands
    for (default 0; -1 when the table opens with an EOF slot).  The bytes are
    rendered one row per eight characters, each row commented with the
    characters it covers, instead of as string runs.
    """
    if not isinstance(tables, list):
        raise SidecarError(f'{description} must be a list')
    for index, entry in enumerate(tables):
        where = f'{description}[{index}]'
        if not isinstance(entry, dict) or 'table' not in entry:
            raise SidecarError(f'{where} must be an object with "table"')
        _parse_offset(entry['table'], f'{where}.table')
        count = entry.get('count')
        if isinstance(count, bool) or not isinstance(count, int) or count <= 0:
            raise SidecarError(f'{where}.count must be a positive integer')
        first = entry.get('first', 0)
        if isinstance(first, bool) or not isinstance(first, int) \
                or not -1 <= first <= 0xff or first + count > 0x100:
            raise SidecarError(f'{where}.first must be a character code from '
                               '-1 that keeps the table within 0xff')
        if 'note' in entry and not isinstance(entry['note'], str):
            raise SidecarError(f'{where}.note must be a string')


def _char_tables(tables, description):
    """Normalize ``char_tables`` to dicts with integer ``table``/``first``."""
    return [{'table': _parse_offset(entry['table'],
                                    f'{description}[{index}].table'),
             'count': entry['count'], 'first': entry.get('first', 0)}
            for index, entry in enumerate(tables or [])]
