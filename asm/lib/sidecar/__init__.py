"""Sidecar loader: per-project configuration for the disassembly pipeline.

Sidecar files live in ``asm/sidecar/<project>.json`` and capture
everything about a project that cannot be derived from heuristics
alone.  Future work will promote its schema into database tables
with a query/submission API.

Schema
------
.. code-block:: json

    {
      "app": "DSAVANT",
      "title": "Wizardry 7: Crusaders of the Dark Savant",
      "version": 1,

      "binaries": {
        "<short_name>": {
          "file": "FILENAME.EXT",
          "type": "mz | aztec_overlay | raw_drv",
          "start_offset": 512,

          "fingerprint-start": "sha256_of_first_512_bytes",
          "fingerprint-end": "sha256_of_last_512_bytes",

          "function_names": {
            "<hex_offset>": {
              "name": "human_readable_name",
              "sig": "full signature string"
            }
          }
        }
      },

      "force_data": [
        { "start": "1A3F", "end": "1A4F" }
      ],
      "force_code": [
        { "start": "0100", "end": "01FF" }
      ],
      "api_dispatch": {
        "<hex_index>": { "name": "label", "notes": "..." }
      }
    }
"""

import json
import os


ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
SIDECAR_DIR = os.path.join(ASM_DIR, 'sidecar')

_BINARY_TYPES = {'mz', 'aztec_overlay', 'raw_drv'}


class SidecarError(Exception):
    """Raised when a sidecar file is malformed or missing required keys."""


def load(project):
    """Load the sidecar for *project* (e.g. ``DSAVANT``).

    Looks for ``asm/sidecar/<project>.json``.
    Returns the parsed dict or ``None`` if no sidecar file exists.
    Raises :class:`SidecarError` on malformed content.
    """
    path = os.path.join(SIDECAR_DIR, f'{project}.json')
    if not os.path.isfile(path):
        return None

    with open(path) as f:
        try:
            data = json.load(f)
        except json.JSONDecodeError as e:
            raise SidecarError(f'{path}: {e}') from e

    _validate(data)
    return data


def _validate(data):
    if not isinstance(data, dict):
        raise SidecarError('sidecar must be a JSON object')

    for key in ('app',):
        if key not in data:
            raise SidecarError(f'missing required key {key!r}')

    if not isinstance(data.get('app'), str):
        raise SidecarError('"app" must be a string')

    if 'binaries' in data:
        if not isinstance(data['binaries'], dict):
            raise SidecarError('"binaries" must be an object')
        for b_name, b_info in data['binaries'].items():
            _validate_binary(b_name, b_info)

    for key in ('force_data', 'force_code'):
        if key in data:
            _validate_ranges(data[key], key)

    _reject_range_conflicts(data.get('force_data', []),
                            data.get('force_code', []), 'project')

    for b_name, b_info in data.get('binaries', {}).items():
        force_data = b_info.get('force_data', data.get('force_data', []))
        force_code = b_info.get('force_code', data.get('force_code', []))
        _validate_ranges(force_data, f'binaries.{b_name}.force_data')
        _validate_ranges(force_code, f'binaries.{b_name}.force_code')
        _reject_range_conflicts(force_data, force_code, f'binaries.{b_name}')


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


def _validate_binary(name, info):
    if not isinstance(info, dict):
        raise SidecarError(f'binaries.{name}: must be an object')

    btype = info.get('type')
    if btype is not None and btype not in _BINARY_TYPES:
        raise SidecarError(f'binaries.{name}: unknown type {btype!r}')

    so = info.get('start_offset')
    if so is not None and not isinstance(so, int):
        raise SidecarError(f'binaries.{name}: start_offset must be an int')

    for key in ('force_data', 'force_code'):
        if key in info:
            _validate_ranges(info[key], f'binaries.{name}.{key}')


def per_binary(sidecar, short_name):
    """Return the sidecar data for *short_name* within this project sidecar.

    Returns a dict with keys:
        file, type, start_offset, function_names, force_data, force_code,
        fingerprint-start, fingerprint-end

    Missing optional fields default to ``None`` / empty dict.
    """
    result = {
        'force_data': sidecar.get('force_data', []),
        'force_code': sidecar.get('force_code', []),
        'api_dispatch': sidecar.get('api_dispatch', {}),
        'function_names': {},
        'dispatch_table': None,
        'immediate_labels': {},
        'ghidra_base_offset': 0,
        'fingerprint-start': None,
        'fingerprint-end': None,
    }

    if 'binaries' in sidecar:
        b = sidecar['binaries'].get(short_name)
        if b:
            result['file'] = b.get('file')
            result['type'] = b.get('type')
            result['start_offset'] = b.get('start_offset')
            result['function_names'] = b.get('function_names', {})
            result['dispatch_table'] = b.get('dispatch_table')
            result['immediate_labels'] = b.get('immediate_labels', {})
            result['ghidra_base_offset'] = b.get('ghidra_base_offset', 0)
            result['fingerprint-start'] = b.get('fingerprint-start')
            result['fingerprint-end'] = b.get('fingerprint-end')
            result['force_data'] = b.get('force_data', sidecar.get('force_data', []))
            result['force_code'] = b.get('force_code', sidecar.get('force_code', []))

    validate_force_ranges(result['force_data'], result['force_code'],
                          f'binaries.{short_name}')
    return result
