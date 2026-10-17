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


def _validate_corpus(data, owner):
    """Validate the ``data_pointers`` / ``not_pointers`` corpus for *owner*."""
    for key in ('data_pointers', 'not_pointers', 'immediate_pointers'):
        if key in data:
            _validate_pointer_assertions(data[key], f'{owner}.{key}')
    _reject_corpus_conflicts(data.get('data_pointers', []),
                             data.get('not_pointers', []), owner)
