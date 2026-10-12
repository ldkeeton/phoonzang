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
          "entry_symbol": "aztec_begin",

          "fingerprint-start": "sha256_of_first_512_bytes",
          "fingerprint-end": "sha256_of_last_512_bytes",

          "function_names": {
            "<hex_offset>": {
              "name": "human_readable_name",
              "sig": "full signature string"
            }
          },

          "jump_tables": [
            { "table": "08D4", "jmp": "08ED", "entry_size": 2, "count": 7,
              "note": "switch table for the indirect jump" }
          ],

          "external_data": {
            "<hex_offset>": {
              "name": "bios_data_0410",
              "segment": "es",
              "note": "fixed external field, e.g. BIOS Data Area"
            }
          },

          "data_pointers": [
            { "offset": "4822", "space": "ds", "target": "dseg_0c6c",
              "note": "near pointer to a DS string; read at 0x164a" }
          ],
          "not_pointers": [
            { "offset": "3140", "note": "palette data; in-range but a number" }
          ]
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
import re


ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
SIDECAR_DIR = os.path.join(ASM_DIR, 'sidecar')

_BINARY_TYPES = {'mz', 'aztec_overlay', 'raw_drv'}
_SEGMENT_NAMES = {'es', 'ds', 'cs', 'ss', 'fs', 'gs'}
_IDENTIFIER = re.compile(r'^[A-Za-z_@.$?][A-Za-z0-9_@.$?]*$')


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

    _validate_corpus(data, 'project')


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
    for key in ('data_pointers', 'not_pointers'):
        if key in data:
            _validate_pointer_assertions(data[key], f'{owner}.{key}')
    _reject_corpus_conflicts(data.get('data_pointers', []),
                             data.get('not_pointers', []), owner)


def _validate_binary(name, info):
    if not isinstance(info, dict):
        raise SidecarError(f'binaries.{name}: must be an object')

    btype = info.get('type')
    if btype is not None and btype not in _BINARY_TYPES:
        raise SidecarError(f'binaries.{name}: unknown type {btype!r}')

    so = info.get('start_offset')
    if so is not None and not isinstance(so, int):
        raise SidecarError(f'binaries.{name}: start_offset must be an int')

    entry_symbol = info.get('entry_symbol')
    if entry_symbol is not None and not (
            isinstance(entry_symbol, str) and _IDENTIFIER.match(entry_symbol)):
        raise SidecarError(
            f'binaries.{name}.entry_symbol must be a NASM identifier string')

    for key in ('force_data', 'force_code'):
        if key in info:
            _validate_ranges(info[key], f'binaries.{name}.{key}')

    if 'jump_tables' in info:
        _validate_jump_tables(info['jump_tables'], f'binaries.{name}.jump_tables')

    if 'external_data' in info:
        _validate_external_data(info['external_data'],
                                f'binaries.{name}.external_data')

    _validate_corpus(info, f'binaries.{name}')


def per_binary(sidecar, short_name):
    """Return the sidecar data for *short_name* within this project sidecar.

    Returns a dict with keys:
        file, type, start_offset, entry_symbol, function_names, force_data,
        force_code, external_data, data_pointers, not_pointers,
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
        'external_data': {},
        'jump_tables': [],
        'data_pointers': _pointer_assertions(
            sidecar.get('data_pointers', []), 'data_pointers'),
        'not_pointers': _pointer_assertions(
            sidecar.get('not_pointers', []), 'not_pointers'),
        'ghidra_base_offset': 0,
        'entry_symbol': None,
        'fingerprint-start': None,
        'fingerprint-end': None,
    }

    if 'binaries' in sidecar:
        b = sidecar['binaries'].get(short_name)
        if b:
            result['file'] = b.get('file')
            result['type'] = b.get('type')
            result['start_offset'] = b.get('start_offset')
            result['entry_symbol'] = b.get('entry_symbol')
            result['function_names'] = b.get('function_names', {})
            result['dispatch_table'] = b.get('dispatch_table')
            result['immediate_labels'] = b.get('immediate_labels', {})
            result['external_data'] = _external_data_map(b.get('external_data', {}))
            result['jump_tables'] = b.get('jump_tables', [])
            result['ghidra_base_offset'] = b.get('ghidra_base_offset', 0)
            result['fingerprint-start'] = b.get('fingerprint-start')
            result['fingerprint-end'] = b.get('fingerprint-end')
            result['force_data'] = b.get('force_data', sidecar.get('force_data', []))
            result['force_code'] = b.get('force_code', sidecar.get('force_code', []))
            result['data_pointers'] = _pointer_assertions(
                b.get('data_pointers', sidecar.get('data_pointers', [])),
                f'binaries.{short_name}.data_pointers')
            result['not_pointers'] = _pointer_assertions(
                b.get('not_pointers', sidecar.get('not_pointers', [])),
                f'binaries.{short_name}.not_pointers')

    validate_force_ranges(result['force_data'], result['force_code'],
                          f'binaries.{short_name}')
    return result
