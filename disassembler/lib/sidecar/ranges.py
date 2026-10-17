"""force_data / force_code range validation."""

from .errors import SidecarError
from .offsets import _parse_offset


def _validate_ranges(ranges, description):
    if not isinstance(ranges, list):
        raise SidecarError(f'{description} must be a list')
    for index, entry in enumerate(ranges):
        where = f'{description}[{index}]'
        if not isinstance(entry, dict) or 'start' not in entry:
            raise SidecarError(f'{where} must be an object with "start"')
        start = _parse_offset(entry['start'], f'{where}.start')
        end = _parse_offset(entry.get('end', entry['start']), f'{where}.end')
        if end < start:
            raise SidecarError(f'{where}: end precedes start')


def _reject_range_conflicts(force_data, force_code, owner):
    for data_index, data_range in enumerate(force_data):
        data_start = _parse_offset(data_range['start'],
                                   f'{owner}.force_data[{data_index}].start')
        data_end = _parse_offset(data_range.get('end', data_range['start']),
                                 f'{owner}.force_data[{data_index}].end')
        for code_index, code_range in enumerate(force_code):
            code_start = _parse_offset(code_range['start'],
                                       f'{owner}.force_code[{code_index}].start')
            code_end = _parse_offset(code_range.get('end', code_range['start']),
                                     f'{owner}.force_code[{code_index}].end')
            overlap_start = max(data_start, code_start)
            overlap_end = min(data_end, code_end)
            if overlap_start <= overlap_end:
                raise SidecarError(
                    f'{owner}: force_data and force_code overlap at '
                    f'0x{overlap_start:x}-0x{overlap_end:x}')


def validate_force_ranges(force_data, force_code, owner='sidecar'):
    """Validate the effective hard-data and force-code range lists."""
    _validate_ranges(force_data, f'{owner}.force_data')
    _validate_ranges(force_code, f'{owner}.force_code')
    _reject_range_conflicts(force_data, force_code, owner)
