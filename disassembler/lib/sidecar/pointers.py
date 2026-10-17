"""data_pointers / not_pointers corpus validation."""

from .constants import _SEGMENT_NAMES
from .errors import SidecarError
from .offsets import _parse_offset


def _validate_pointer_assertions(assertions, description):
    """Validate a sidecar ``data_pointers`` / ``not_pointers`` list.

    Each entry asserts a fact about the 16-bit word that lives at a file
    ``offset`` (required).  ``space`` names the segment the pointer lives in
    (one of the segment names); ``target`` is an optional review-only symbolic
    name for the pointed-at location, and ``note`` an optional explanation.
    """
    if not isinstance(assertions, list):
        raise SidecarError(f'{description} must be a list')
    for index, entry in enumerate(assertions):
        where = f'{description}[{index}]'
        if not isinstance(entry, dict) or 'offset' not in entry:
            raise SidecarError(f'{where} must be an object with "offset"')
        _parse_offset(entry['offset'], f'{where}.offset')
        space = entry.get('space')
        if space is not None and space not in _SEGMENT_NAMES:
            raise SidecarError(
                f'{where}.space must be one of {sorted(_SEGMENT_NAMES)}')
        for key in ('target', 'note'):
            if key in entry and not isinstance(entry[key], str):
                raise SidecarError(f'{where}.{key} must be a string')


def _pointer_assertions(raw, description):
    """Normalize a pointer-assertion list to dicts with integer offsets."""
    normalized = []
    for index, entry in enumerate(raw or []):
        item = dict(entry)
        item['offset'] = _parse_offset(
            entry['offset'], f'{description}[{index}].offset')
        normalized.append(item)
    return normalized


def _reject_corpus_conflicts(data_pointers, not_pointers, owner):
    """Reject an offset asserted as a pointer and as a non-pointer."""
    asserted = {_parse_offset(entry['offset'], f'{owner}.data_pointers.offset')
                for entry in data_pointers}
    denied = {_parse_offset(entry['offset'], f'{owner}.not_pointers.offset')
              for entry in not_pointers}
    both = asserted & denied
    if both:
        raise SidecarError(
            f'{owner}: offset(s) in both data_pointers and not_pointers: '
            + ', '.join(f'0x{offset:04x}' for offset in sorted(both)))


def _validate_pointer_arrays(arrays, description):
    """Validate a sidecar ``pointer_arrays`` list.

    Each entry declares an array of records holding stored pointers: ``table``
    (file offset of record 0), ``stride`` (record size in bytes), ``count``
    (records) and ``fields`` (byte offsets of the pointer words within a
    record).  ``space`` is the segment the pointers name (default ``ds``).
    """
    if not isinstance(arrays, list):
        raise SidecarError(f'{description} must be a list')
    for index, entry in enumerate(arrays):
        where = f'{description}[{index}]'
        if not isinstance(entry, dict) or 'table' not in entry:
            raise SidecarError(f'{where} must be an object with "table"')
        _parse_offset(entry['table'], f'{where}.table')
        stride, count = entry.get('stride'), entry.get('count')
        for key, value in (('stride', stride), ('count', count)):
            if not isinstance(value, int) or isinstance(value, bool) \
                    or value <= 0:
                raise SidecarError(f'{where}.{key} must be a positive int')
        fields = entry.get('fields')
        if (not isinstance(fields, list) or not fields
                or any(not isinstance(f, int) or isinstance(f, bool)
                       or not 0 <= f <= stride - 2 for f in fields)):
            raise SidecarError(
                f'{where}.fields must list word offsets within the record')
        space = entry.get('space')
        if space is not None and space not in _SEGMENT_NAMES:
            raise SidecarError(
                f'{where}.space must be one of {sorted(_SEGMENT_NAMES)}')
        if 'note' in entry and not isinstance(entry['note'], str):
            raise SidecarError(f'{where}.note must be a string')


def _expand_pointer_arrays(arrays, description):
    """One ``data_pointers`` assertion per pointer word of each array.

    An expanded entry carries ``array`` (the table's file offset), so the
    promotion can check the word against the bytes.
    """
    expanded = []
    for index, entry in enumerate(arrays or []):
        table = _parse_offset(entry['table'], f'{description}[{index}].table')
        for record in range(entry['count']):
            for field in entry['fields']:
                expanded.append({
                    'offset': table + record * entry['stride'] + field,
                    'space': entry.get('space', 'ds'),
                    'array': table,
                })
    return expanded


def _validate_corpus(data, owner):
    """Validate the ``data_pointers`` / ``not_pointers`` corpus for *owner*."""
    for key in ('data_pointers', 'not_pointers', 'immediate_pointers'):
        if key in data:
            _validate_pointer_assertions(data[key], f'{owner}.{key}')
    if 'pointer_arrays' in data:
        _validate_pointer_arrays(data['pointer_arrays'],
                                 f'{owner}.pointer_arrays')
    asserted = data.get('data_pointers', []) + _expand_pointer_arrays(
        data.get('pointer_arrays', []), f'{owner}.pointer_arrays')
    _reject_corpus_conflicts(asserted, data.get('not_pointers', []), owner)
