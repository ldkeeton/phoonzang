"""external_data validation and normalization."""

from .constants import _SEGMENT_NAMES
from .errors import SidecarError
from .offsets import _parse_offset


def _validate_external_data(data, description):
    """Validate a sidecar ``external_data`` block.

    Maps a hexadecimal offset to a fixed external-segment field entry with a
    symbolic ``name`` and optional ``segment`` override.
    """
    if not isinstance(data, dict):
        raise SidecarError(f'{description} must be an object')
    for key, entry in data.items():
        where = f'{description}["{key}"]'
        _parse_offset(key, f'{where} offset')
        if not isinstance(entry, dict) or not isinstance(entry.get('name'), str):
            raise SidecarError(f'{where} must be an object with a string "name"')
        segment = entry.get('segment')
        if segment is not None and segment not in _SEGMENT_NAMES:
            raise SidecarError(
                f'{where}.segment must be one of {sorted(_SEGMENT_NAMES)}')


def _external_data_map(raw):
    """Normalize a sidecar ``external_data`` block to ``{int_offset: entry}``."""
    return {_parse_offset(key, f'external_data["{key}"]'): entry
            for key, entry in (raw or {}).items()}
