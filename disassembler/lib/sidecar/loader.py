"""Sidecar file loading and top-level validation."""

import json
import os

from .binary import _validate_binary
from .compiler import _validate_compiler_flags
from .constants import SIDECAR_DIR
from .errors import SidecarError
from .messages import (_validate_message_bases, _validate_message_calls,
                       _validate_message_data)
from .pointers import _validate_corpus
from .ranges import _reject_range_conflicts, _validate_ranges
from .routines import _validate_routines
from .vendor import _validate_vendor_patches

#: The text of each sidecar already validated, by path: a build loads the same
#: file hundreds of times, and only changed text needs checking again.
_validated = {}


def load(project):
    """Load the sidecar for *project* (e.g. ``DSAVANT``).

    Looks for ``disassembler/sidecar/<project>.json``.
    Returns the parsed dict or ``None`` if no sidecar file exists.
    Raises :class:`SidecarError` on malformed content.
    """
    path = os.path.join(SIDECAR_DIR, f'{project}.json')
    if not os.path.isfile(path):
        return None

    with open(path) as f:
        text = f.read()
    try:
        data = json.loads(text)
    except json.JSONDecodeError as e:
        raise SidecarError(f'{path}: {e}') from e

    if _validated.get(path) != text:
        _validate(data)
        _validated[path] = text
    return data


def _validate(data):
    if not isinstance(data, dict):
        raise SidecarError('sidecar must be a JSON object')

    for key in ('app',):
        if key not in data:
            raise SidecarError(f'missing required key {key!r}')

    if not isinstance(data.get('app'), str):
        raise SidecarError('"app" must be a string')

    folders = data.get('dos_compilers', [])
    if not isinstance(folders, list) or not all(
            isinstance(f, str) and f for f in folders):
        raise SidecarError('"dos_compilers" must be a list of non-empty strings')

    aztec = data.get('aztec', {})
    if not isinstance(aztec, dict) or not all(
            isinstance(aztec.get(k, ''), str) for k in ('compiler', 'sources')
    ) or not all(isinstance(aztec.get(k, []), list)
                 for k in ('flags', 'app_flags')):
        raise SidecarError('"aztec" must be an object with string '
                           '"compiler"/"sources" and list "flags"/"app_flags"')

    _validate_compiler_flags(data.get('compiler_flags'))
    _validate_vendor_patches(data.get('vendor_patches'))
    _validate_routines(data.get('routines'))
    if 'message_calls' in data:
        _validate_message_calls(data['message_calls'], 'message_calls')
    if 'message_bases' in data:
        _validate_message_bases(data['message_bases'], 'message_bases')
    if 'message_data' in data:
        _validate_message_data(data['message_data'], 'message_data')

    if 'binaries' in data:
        if not isinstance(data['binaries'], dict):
            raise SidecarError('"binaries" must be an object')
        for b_name, b_info in data['binaries'].items():
            _validate_binary(b_name, b_info)
        geometry = ('base_offset', 'entry_size', 'count', 'format')
        for b_name, b_info in data['binaries'].items():
            table = b_info.get('dispatch_table') or {}
            if 'api' in table:
                shared = (data['binaries'].get(table['api']) or {}).get(
                    'dispatch_table') or {}
                if 'api' in shared or any(
                        shared.get(k) != table.get(k) for k in geometry):
                    raise SidecarError(
                        f'binaries.{b_name}.dispatch_table.api: '
                        f'{table["api"]!r} has no table of the same shape '
                        'with its own names')
            for index, slots in enumerate(b_info.get('driver_slots', [])):
                driver = slots['driver']
                if not (data['binaries'].get(driver) or {}).get('dispatch_table'):
                    raise SidecarError(
                        f'binaries.{b_name}.driver_slots[{index}].driver: '
                        f'{driver!r} is not a binary with a "dispatch_table"')

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
    for key in ('pointer_arrays', 'immediate_pointers'):
        if key in data:
            raise SidecarError(f'"{key}" belongs under a binary: no binary '
                               f'takes the project-level list')
