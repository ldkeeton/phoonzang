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
          "type": "mz | borland_overlay | raw_drv",
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

_BINARY_TYPES = {'mz', 'borland_overlay', 'raw_drv'}


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
            if not isinstance(data[key], list):
                raise SidecarError(f'"{key}" must be a list')
            for r in data[key]:
                if not isinstance(r, dict) or 'start' not in r:
                    raise SidecarError(f'each "{key}" entry must have "start"')


def _validate_binary(name, info):
    if not isinstance(info, dict):
        raise SidecarError(f'binaries.{name}: must be an object')

    btype = info.get('type')
    if btype is not None and btype not in _BINARY_TYPES:
        raise SidecarError(f'binaries.{name}: unknown type {btype!r}')

    so = info.get('start_offset')
    if so is not None and not isinstance(so, int):
        raise SidecarError(f'binaries.{name}: start_offset must be an int')


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
            result['ghidra_base_offset'] = b.get('ghidra_base_offset', 0)
            result['fingerprint-start'] = b.get('fingerprint-start')
            result['fingerprint-end'] = b.get('fingerprint-end')

    return result
