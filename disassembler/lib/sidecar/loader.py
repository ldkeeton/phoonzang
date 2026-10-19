"""Sidecar file loading and top-level validation."""

import json
import os

from .binary import _validate_binary
from .compiler import _validate_compiler_flags
from .constants import SIDECAR_DIR
from .errors import SidecarError
from .pointers import _validate_corpus
from .ranges import _reject_range_conflicts, _validate_ranges
from .routines import _validate_routines, _validate_signatures
from .vendor import _validate_vendor_patches


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
    _validate_signatures(data.get('signatures'))

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
    for key in ('pointer_arrays', 'immediate_pointers'):
        if key in data:
            raise SidecarError(f'"{key}" belongs under a binary: no binary '
                               f'takes the project-level list')
