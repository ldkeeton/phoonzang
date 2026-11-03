"""Per-binary sidecar validation and lookup."""

import os
import re

from .bands import _validate_bands, parse_bands
from .char_tables import _char_tables, _validate_char_tables
from .compiler import _validate_compiler_flags
from .constants import _BINARY_TYPES, _IDENTIFIER
from .data_names import (_data_names_map, _validate_data_names,
                         _validate_file_stems)
from .errors import SidecarError
from .external_data import _external_data_map, _validate_external_data
from .offsets import _parse_offset
from .patches import _validate_patches, parse_patches
from .jump_tables import _validate_jump_tables, _validate_code_tables
from .pointers import (_expand_pointer_arrays, _pointer_assertions,
                       _validate_corpus)
from .ranges import _validate_ranges, validate_force_ranges
from .records import _validate_records
from .usage import SidecarUse


def _validate_binary(name, info):
    if not isinstance(info, dict):
        raise SidecarError(f'binaries.{name}: must be an object')

    if 'function_names' in info:
        _validate_function_names(info['function_names'], f'binaries.{name}.function_names')
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
        raise SidecarError(
            f'binaries.{name}.dispatch_table: dispatch tables belong under '
            'the project-level "apis" object; reference one with "api"')

    if 'external_data' in info:
        _validate_external_data(info['external_data'],
                                f'binaries.{name}.external_data')

    _validate_compiler_flags(info.get('compiler_flags'),
                             f'binaries.{name}.compiler_flags', asm=False)

    for block in ('data_names', 'code_data_names'):
        if block in info:
            _validate_data_names(info[block], f'binaries.{name}.{block}')

    if 'records' in info:
        _validate_records(info['records'], info.get('data_names') or {},
                          f'binaries.{name}.records')

    if 'byte_patches' in info:
        _validate_patches(info['byte_patches'],
                          f'binaries.{name}.byte_patches')

    if 'globals' in info:
        _validate_globals(info['globals'], f'binaries.{name}.globals')

    _validate_corpus(info, f'binaries.{name}')


def _validate_globals(span, where):
    """``{"start": "0e0e", "end": "9096"}``: the BSS objects that are the
    binary's commons (the ``globals`` fragment), each end optional."""
    if not isinstance(span, dict) or set(span) - {'start', 'end', 'note'}:
        raise SidecarError(f'{where}: must be an object of "start" and "end"')
    for key in ('start', 'end'):
        value = span.get(key)
        if value is not None and not (isinstance(value, str)
                                      and re.fullmatch(r'[0-9a-fA-F]{4}', value)):
            raise SidecarError(f'{where}.{key}: must be a 4-digit hex address')


def _hex_span(span, at):
    """``(start, end)`` of a ``{"start", "end"}`` span (end exclusive)."""
    if not isinstance(span, dict) or set(span) != {'start', 'end'}:
        raise SidecarError(f'{at}: must be an object of "start" and "end"')
    for field in ('start', 'end'):
        if not (isinstance(span[field], str)
                and re.fullmatch(r'[0-9a-f]{4}', span[field])):
            raise SidecarError(f'{at}.{field}: must be a 4-digit hex address')
    start, end = int(span['start'], 16), int(span['end'], 16)
    if start >= end:
        raise SidecarError(f'{at}: end must be past start')
    return start, end


def _validate_emits(block, where):
    """``emits``: a list of ``{"start": "0b74", "end": "0bfa"}`` spans on the
    ``function_names`` entry that starts a module -- the DS bytes (end
    exclusive) its source produces itself.  ``ln`` lays them out in module
    order, which the listing cannot show, so the build reads them here.

    A span's address says what it is: below the image end, the module's
    initialized data (string literals, initialized globals), the file
    ``<stem>.data`` beside its code, which shapes the link order
    (:func:`emitted_ranges`); past it, BSS the module reserves -- its
    ``static``s, or a common it is the first to name (``_TTrem``) -- which
    its object is checked against (:func:`bss_ranges`).  No two
    modules' spans overlap."""
    ranges = []
    for key, info in block.items():
        if not isinstance(info, dict) or 'emits' not in info:
            continue
        at = f'{where}[{key}].emits'
        spans = info['emits']
        if not isinstance(spans, list) or not spans:
            raise SidecarError(f'{at}: must be a list of spans')
        ranges.extend((*_hex_span(span, f'{at}[{n}]'), key)
                      for n, span in enumerate(spans))
    ranges.sort()
    for (_, end, first), (start, _, second) in zip(ranges, ranges[1:]):
        if start < end:
            raise SidecarError(f'{where}[{second}].emits: overlaps [{first}]')


def _emits(entry, start_offset):
    """``{file offset of a module's start: [(DS start, DS end), ...]}``."""
    adjust = function_key_base(entry, start_offset)
    return {int(key, 16) + adjust: [(int(span['start'], 16),
                                     int(span['end'], 16))
                                    for span in info['emits']]
            for key, info in (entry.get('function_names') or {}).items()
            if isinstance(info, dict) and 'emits' in info}


def emitted_ranges(entry, start_offset=0, boundary=None):
    """``{file offset of a module's start: (DS start, DS end)}``: the
    initialized data of each ``emits``, its span below *boundary* (the DS
    offset where BSS starts; ``None`` takes every span, for a caller with no
    image).  ``ln`` writes a module's data as one block, so a module with two
    spans there is an error (:class:`ValueError`)."""
    out = {}
    for at, spans in _emits(entry, start_offset).items():
        data = [span for span in spans
                if boundary is None or span[0] < boundary]
        for start, end in data:
            if boundary is not None and end > boundary:
                raise ValueError(f'emits {start:04x}..{end:04x}: runs past '
                                 f'the image end (0x{boundary:04x})')
        if len(data) > 1 and boundary is not None:
            raise ValueError(f'function_names {at:04x}.emits: two spans of '
                             'initialized data; ln lays out a module\'s data '
                             'as one block')
        if data:
            out[at] = data[0]
    return out


def bss_ranges(entry, start_offset=0, boundary=0):
    """``{file offset of a module's start: [(DS start, DS end), ...]}``: the
    ``emits`` spans at or past *boundary*, the BSS the module reserves."""
    out = {}
    for at, spans in _emits(entry, start_offset).items():
        bss = [span for span in spans if span[0] >= boundary]
        if bss:
            out[at] = bss
    return out


def _validate_entry_names(table, where):
    """Validate a project API dispatch table's entry names."""
    if not isinstance(table, dict):
        raise SidecarError(f'{where} must be an object')
    if 'api' in table:
        raise SidecarError(f'{where}.api is not supported; binaries reference '
                           'the project API node')
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
def _binary_dispatch_table(sidecar, binary):
    """Resolve the dispatch table referenced by a binary's API name."""
    api_name = binary.get('api')
    if not api_name:
        return None
    api = (sidecar.get('apis') or {}).get(api_name) or {}
    return api.get('dispatch_table')


def _validate_driver_slots(tables, where):
    """``driver_slots``: the far-pointer tables a program calls a driver's API
    through (``offset``/``count``), each with the binary whose
    ``dispatch_table`` it points into (``driver``) and the ``prefix`` its
    thunks are named with; an optional ``slot_prefix`` names the far pointers
    themselves, and an optional ``file`` makes the table one data file."""
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
        if 'file' in slots and not (isinstance(slots['file'], str)
                                    and _IDENTIFIER.match(slots['file'])):
            raise SidecarError(f'{at}.file must be an identifier: the '
                               'pointers are one data file of that name')
        if 'slot_prefix' in slots and not (
                isinstance(slots['slot_prefix'], str)
                and _IDENTIFIER.match(slots['slot_prefix'])):
            raise SidecarError(f'{at}.slot_prefix must be an identifier: the '
                               'pointers are named <slot_prefix>_<entry name>')


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
        'vendor_patches': sidecar.get('vendor_patches', {}),
        'dispatch_table': None,
        'driver_slots': [],
        'external_data': {},
        'data_names': {},
        'code_data_names': {},
        'byte_patches': [],
        'globals': {},
        'jump_tables': [],
        'code_tables': [],
        'char_tables': [],
        'bands': [],
        'data_pointers': _pointer_assertions(
            sidecar.get('data_pointers', []), 'data_pointers'),
        'not_pointers': _pointer_assertions(
            sidecar.get('not_pointers', []), 'not_pointers'),
        'immediate_pointers': [],
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
            result['dispatch_table'] = _binary_dispatch_table(
                sidecar, b)
            result['driver_slots'] = [
                dict(slots, dispatch_table=_binary_dispatch_table(
                    sidecar, sidecar['binaries'][slots['driver']]))
                for slots in b.get('driver_slots', [])]
            result['external_data'] = _external_data_map(b.get('external_data', {}))
            result['data_names'] = _data_names_map(b.get('data_names', {}))
            result['code_data_names'] = _data_names_map(
                b.get('code_data_names', {}))
            result['byte_patches'] = parse_patches(
                b.get('byte_patches'),
                f'binaries.{short_name}.byte_patches')
            result['globals'] = b.get('globals', {})
            result['jump_tables'] = b.get('jump_tables', [])
            result['code_tables'] = b.get('code_tables', [])
            result['char_tables'] = _char_tables(
                b.get('char_tables'), f'binaries.{short_name}.char_tables')
            result['bands'] = parse_bands(b.get('bands'))
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

def _validate_function_names(block, where):
    from .errors import SidecarError
    from .offsets import _parse_offset
    if not isinstance(block, dict):
        raise SidecarError(f'{where}: must be an object')
    for key, info in block.items():
        _parse_offset(key, f'{where}[{key}]')
        if not isinstance(info, dict):
            raise SidecarError(f'{where}[{key}]: must be an object')
        for field in ('name',):
            if field in info and (not isinstance(info[field], str) or not info[field]):
                raise SidecarError(f'{where}[{key}].{field}: expected non-empty string')
        if 'length' in info:
            length = info['length']
            if isinstance(length, bool) or not isinstance(length, int) or length <= 0:
                raise SidecarError(f'{where}[{key}].length: expected a positive integer')
    spans = sorted((int(key, 16), int(key, 16) + info['length'], key)
                   for key, info in block.items() if 'length' in info)
    for (_, end, first), (start, _, second) in zip(spans, spans[1:]):
        if start < end:
            raise SidecarError(f'{where}[{second}].length: overlaps [{first}]')
    _validate_emits(block, where)
    # ``file`` names a grouped fragment's .asm and its .c/.s instead of the
    # head label; the label stays the routine's name everywhere else.
    _validate_file_stems(block, where, 'routine')


def function_key_base(entry, start_offset):
    """What a ``function_names`` key adds to reach its file offset: an MZ key
    already is one, any other is relative to ``start_offset``."""
    return 0 if entry.get('type') == 'mz' else start_offset or 0


def fragment_lengths(entry, start_offset=0):
    """Declared fragment sizes keyed by file offset, independent of source."""
    adjust = function_key_base(entry, start_offset)
    return {int(key, 16) + adjust: info['length']
            for key, info in entry.get('function_names', {}).items()
            if 'length' in info}


def fragment_files(entry, start_offset=0):
    """``{start: stem}`` of the fragments a sidecar ``file`` names,
    keyed like :func:`fragment_lengths`."""
    adjust = function_key_base(entry, start_offset)
    return {int(key, 16) + adjust: info['file']
            for key, info in entry.get('function_names', {}).items()
            if 'file' in info}


def file_names(project, binary):
    """The fragment stems *binary*'s sidecar ``file`` entries name, or an
    empty set."""
    from .loader import load
    sidecar = load(project) if project else None
    entry = per_binary(sidecar, binary) if sidecar else {}
    return set(fragment_files(entry or {}).values())


_HEAD_LABEL = re.compile(r'^([A-Za-z_.?@$][\w.?@$]*):', re.M)


def head_label(text):
    """The first label of a fragment's asm: the routine it starts with."""
    m = _HEAD_LABEL.search(text)
    return m.group(1) if m else None


def stems_for(project, binary):
    """``{label: stem}`` for *binary*'s fragments a sidecar ``file`` names.

    The ``file`` entry is keyed by address; its routine's name can come from
    any naming surface (a dispatch table), so it is read from the generated
    ``<stem>.asm`` -- a fragment not built yet is left out.  A fragment that
    starts with a table is the exception: the table's label is an ``equ`` in
    the root, so it comes from ``code_data_names``."""
    from lib.cachedirs import src_dir
    from .loader import load
    stems = file_names(project, binary)
    out = {}
    if not stems:
        return out
    entry = per_binary(load(project), binary) or {}
    tables = entry.get('code_data_names') or {}
    tabled = set()
    for key, info in entry.get('function_names', {}).items():
        if 'file' in info and 'name' not in info and int(key, 16) in tables:
            out[tables[int(key, 16)]['name']] = info['file']
            tabled.add(info['file'])
    stems -= tabled
    for home in (binary, 'shared'):
        for dirpath, _, files in os.walk(os.path.join(src_dir(project), home)):
            for f in files:
                if f.endswith('.asm') and f[:-4] in stems:
                    with open(os.path.join(dirpath, f)) as fh:
                        label = head_label(fh.read())
                    if label:
                        out[label] = f[:-4]
    return out


def labels_for(project, binary):
    """``{stem: label}``, the inverse of :func:`stems_for`."""
    return {stem: label for label, stem in stems_for(project, binary).items()}
