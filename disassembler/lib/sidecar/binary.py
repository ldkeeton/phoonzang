"""Per-binary sidecar validation and lookup."""

from .constants import _BINARY_TYPES, _IDENTIFIER
from .errors import SidecarError
from .external_data import _external_data_map, _validate_external_data
from .jump_tables import _validate_jump_tables, _validate_code_tables
from .pointers import _pointer_assertions, _validate_corpus
from .ranges import _validate_ranges, validate_force_ranges


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

    if 'code_tables' in info:
        _validate_code_tables(info['code_tables'], f'binaries.{name}.code_tables')

    if 'external_data' in info:
        _validate_external_data(info['external_data'],
                                f'binaries.{name}.external_data')

    _validate_corpus(info, f'binaries.{name}')


def per_binary(sidecar, short_name):
    """Return the sidecar data for *short_name* within this project sidecar.

    Returns a dict with keys:
        file, type, start_offset, entry_symbol, function_names, force_data,
        force_code, external_data, data_pointers, not_pointers,
        immediate_pointers,
        fingerprint-start, fingerprint-end

    Missing optional fields default to ``None`` / empty dict.
    """
    result = {
        'force_data': sidecar.get('force_data', []),
        'force_code': sidecar.get('force_code', []),
        'api_dispatch': sidecar.get('api_dispatch', {}),
        'function_names': {},
        'routines': sidecar.get('routines', {}),
        'dispatch_table': None,
        'immediate_labels': {},
        'external_data': {},
        'jump_tables': [],
        'code_tables': [],
        'data_pointers': _pointer_assertions(
            sidecar.get('data_pointers', []), 'data_pointers'),
        'not_pointers': _pointer_assertions(
            sidecar.get('not_pointers', []), 'not_pointers'),
        'immediate_pointers': [],
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
            result['code_tables'] = b.get('code_tables', [])
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
            result['immediate_pointers'] = _pointer_assertions(
                b.get('immediate_pointers', []),
                f'binaries.{short_name}.immediate_pointers')

    validate_force_ranges(result['force_data'], result['force_code'],
                          f'binaries.{short_name}')
    return result
