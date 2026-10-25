"""Per-binary sidecar validation and lookup."""

from .bands import _validate_bands, parse_bands
from .char_tables import _char_tables, _validate_char_tables
from .compiler import _validate_compiler_flags
from .constants import _BINARY_TYPES, _IDENTIFIER
from .data_names import _data_names_map, _validate_data_names
from .errors import SidecarError
from .external_data import _external_data_map, _validate_external_data
from .offsets import _parse_offset
from .messages import _validate_message_calls, merge_message_calls
from .patches import _validate_patches, parse_patches
from .jump_tables import _validate_jump_tables, _validate_code_tables
from .pointers import (_expand_pointer_arrays, _pointer_assertions,
                       _validate_corpus)
from .ranges import _validate_ranges, validate_force_ranges
from .usage import SidecarUse


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

    if 'bands' in info:
        _validate_bands(info['bands'], f'binaries.{name}.bands')

    if 'jump_tables' in info:
        _validate_jump_tables(info['jump_tables'], f'binaries.{name}.jump_tables')

    if 'code_tables' in info:
        _validate_code_tables(info['code_tables'], f'binaries.{name}.code_tables')

    if 'char_tables' in info:
        _validate_char_tables(info['char_tables'], f'binaries.{name}.char_tables')

    if 'driver_slots' in info:
        _validate_driver_slots(info['driver_slots'], f'binaries.{name}.driver_slots')

    if 'dispatch_table' in info:
        _validate_entry_names(info['dispatch_table'],
                              f'binaries.{name}.dispatch_table')

    if 'external_data' in info:
        _validate_external_data(info['external_data'],
                                f'binaries.{name}.external_data')

    _validate_compiler_flags(info.get('compiler_flags'),
                             f'binaries.{name}.compiler_flags', asm=False)

    for block in ('data_names', 'code_data_names'):
        if block in info:
            _validate_data_names(info[block], f'binaries.{name}.{block}')

    if 'byte_patches' in info:
        _validate_patches(info['byte_patches'],
                          f'binaries.{name}.byte_patches')

    if 'message_calls' in info:
        _validate_message_calls(info['message_calls'],
                               f'binaries.{name}.message_calls')

    if 'message_bases' in info:
        raise SidecarError(f'binaries.{name}.message_bases: the bases are '
                           'message data, so they are project-wide only')

    _validate_corpus(info, f'binaries.{name}')


def _validate_entry_names(table, where):
    """A ``dispatch_table``'s ``names`` (``{entry number: name}``), or its
    ``api``: the binary whose table it shares names with."""
    names = table.get('names')
    if names is not None:
        if 'api' in table:
            raise SidecarError(f'{where}: "names" and "api" exclude each other')
        if not isinstance(names, dict):
            raise SidecarError(f'{where}.names must be an object')
        for key, entry_name in names.items():
            if not (key.isdigit() and int(key) < table.get('count', 0)):
                raise SidecarError(f'{where}.names[{key}]: not an entry number')
            if not (isinstance(entry_name, str) and _IDENTIFIER.match(entry_name)):
                raise SidecarError(f'{where}.names[{key}] must be an identifier')
    if 'api' in table and not isinstance(table['api'], str):
        raise SidecarError(f'{where}.api must be a binary name')


def _entry_names(sidecar, table):
    """*table* with the ``names`` it has or shares through ``api``."""
    if not table or 'api' not in table:
        return table
    shared = sidecar['binaries'][table['api']]['dispatch_table']
    return dict(table, names=shared.get('names', {}))


def _validate_driver_slots(tables, where):
    """``driver_slots``: the far-pointer tables a program calls a driver's API
    through (``offset``/``count``), each with the binary whose
    ``dispatch_table`` it points into (``driver``) and the ``prefix`` its
    thunks are named with."""
    if not isinstance(tables, list):
        raise SidecarError(f'{where} must be a list')
    for index, slots in enumerate(tables):
        at = f'{where}[{index}]'
        if not isinstance(slots, dict):
            raise SidecarError(f'{at} must be an object')
        _parse_offset(slots.get('offset'), f'{at}.offset')
        count = slots.get('count')
        if isinstance(count, bool) or not isinstance(count, int) or count <= 0:
            raise SidecarError(f'{at}.count must be a positive integer')
        if not isinstance(slots.get('driver'), str):
            raise SidecarError(f'{at}.driver must be a binary name')
        if not (isinstance(slots.get('prefix'), str)
                and _IDENTIFIER.match(slots['prefix'])):
            raise SidecarError(f'{at}.prefix must be an identifier: the '
                               'thunks are named <prefix>_<entry name>')


def per_binary(sidecar, short_name):
    """Return the sidecar data for *short_name* within this project sidecar.

    Returns a dict with keys:
        file, type, start_offset, entry_symbol, function_names, data_names,
        bands (``[(start, end, name)]``, :mod:`.bands`),
        force_data,
        force_code, external_data, char_tables, data_pointers (with each
        ``pointer_arrays`` word expanded into it), not_pointers,
        immediate_pointers, byte_patches (each with its ``natural``, ``apply``
        and ``allow`` bytes),
        fingerprint-start, fingerprint-end

    Missing optional fields default to ``None`` / empty dict.
    """
    result = {
        'force_data': sidecar.get('force_data', []),
        'force_code': sidecar.get('force_code', []),
        'api_dispatch': sidecar.get('api_dispatch', {}),
        'function_names': {},
        'routines': sidecar.get('routines', {}),
        'vendor_patches': sidecar.get('vendor_patches', {}),
        'dispatch_table': None,
        'driver_slots': [],
        'immediate_labels': {},
        'external_data': {},
        'data_names': {},
        'code_data_names': {},
        'byte_patches': [],
        'jump_tables': [],
        'code_tables': [],
        'char_tables': [],
        'bands': [],
        'data_pointers': _pointer_assertions(
            sidecar.get('data_pointers', []), 'data_pointers'),
        'not_pointers': _pointer_assertions(
            sidecar.get('not_pointers', []), 'not_pointers'),
        'immediate_pointers': [],
        'ghidra_base_offset': 0,
        'entry_symbol': None,
        'message_calls': sidecar.get('message_calls', []),
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
            result['dispatch_table'] = _entry_names(
                sidecar, b.get('dispatch_table'))
            result['driver_slots'] = [
                dict(slots, dispatch_table=_entry_names(
                    sidecar, sidecar['binaries'][slots['driver']]['dispatch_table']))
                for slots in b.get('driver_slots', [])]
            result['immediate_labels'] = b.get('immediate_labels', {})
            result['external_data'] = _external_data_map(b.get('external_data', {}))
            result['data_names'] = _data_names_map(b.get('data_names', {}))
            result['code_data_names'] = _data_names_map(
                b.get('code_data_names', {}))
            result['byte_patches'] = parse_patches(
                b.get('byte_patches'),
                f'binaries.{short_name}.byte_patches')
            result['jump_tables'] = b.get('jump_tables', [])
            result['code_tables'] = b.get('code_tables', [])
            result['char_tables'] = _char_tables(
                b.get('char_tables'), f'binaries.{short_name}.char_tables')
            result['bands'] = parse_bands(b.get('bands'))
            result['ghidra_base_offset'] = b.get('ghidra_base_offset', 0)
            result['fingerprint-start'] = b.get('fingerprint-start')
            result['fingerprint-end'] = b.get('fingerprint-end')
            result['force_data'] = b.get('force_data', sidecar.get('force_data', []))
            result['force_code'] = b.get('force_code', sidecar.get('force_code', []))
            result['data_pointers'] = _pointer_assertions(
                b.get('data_pointers', sidecar.get('data_pointers', [])),
                f'binaries.{short_name}.data_pointers') + _expand_pointer_arrays(
                b.get('pointer_arrays', []),
                f'binaries.{short_name}.pointer_arrays')
            result['not_pointers'] = _pointer_assertions(
                b.get('not_pointers', sidecar.get('not_pointers', [])),
                f'binaries.{short_name}.not_pointers')
            result['immediate_pointers'] = _pointer_assertions(
                b.get('immediate_pointers', []),
                f'binaries.{short_name}.immediate_pointers')
            result['message_calls'] = merge_message_calls(
                sidecar.get('message_calls', []), b.get('message_calls', []))

    validate_force_ranges(result['force_data'], result['force_code'],
                          f'binaries.{short_name}')
    result['use'] = _expected_use(result, short_name)
    return result


def _expected_use(result, short_name):
    """A :class:`SidecarUse` expecting each of this binary's own entries."""
    use = SidecarUse(f'binaries.{short_name}')
    for key in ('force_data', 'force_code'):
        for r in result[key]:
            use.expect(key, r['start'])
    for key in ('code_tables', 'jump_tables'):
        for t in result[key]:
            use.expect(key, t['table'])
    if result['dispatch_table']:
        use.expect('dispatch_table', 'table')
        for n in result['dispatch_table'].get('names') or {}:
            use.expect('dispatch_table.names', n)
    for slots in result['driver_slots']:
        use.expect('driver_slots', slots['offset'])
    for t in result['char_tables']:
        use.expect('char_tables', f'{t["table"]:04x}')
    for hex_off in result['function_names']:
        use.expect('function_names', hex_off)
    if result['entry_symbol']:
        use.expect('entry_symbol', result['entry_symbol'])
    for hex_off in result['immediate_labels']:
        use.expect('immediate_labels', f'0x{int(hex_off, 16):x}')
    for key in ('immediate_pointers', 'not_pointers'):
        for entry in result[key]:
            use.expect(key, f'{entry["offset"]:04x}')
    for entry in result['data_pointers']:
        if 'array' in entry:
            use.expect('pointer_arrays', f'{entry["array"]:04x}')
        else:
            use.expect('data_pointers', f'{entry["offset"]:04x}')
    for offset in result['external_data']:
        use.expect('external_data', f'0x{offset:04x}')
    for offset in result['data_names']:
        use.expect('data_names', f'{offset:04x}')
    for offset in result['code_data_names']:
        use.expect('code_data_names', f'{offset:04x}')
    return use
