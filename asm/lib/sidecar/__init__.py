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

      "dos_compilers": ["Manx Aztec C86 v52a"],

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

      "routines": {
        "<content-tagged label>": {
          "name": "human_readable_name",
          "note": "free text"
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

from .binary import _validate_binary, per_binary
from .compiler import _validate_compiler_flags, compiler_flags
from .constants import (
    ASM_DIR,
    SIDECAR_DIR,
    _BINARY_TYPES,
    _IDENTIFIER,
    _SEGMENT_NAMES,
)
from .errors import SidecarError
from .external_data import _external_data_map, _validate_external_data
from .jump_tables import _validate_jump_tables
from .loader import _validate, load
from .offsets import _parse_offset
from .pointers import (
    _pointer_assertions,
    _reject_corpus_conflicts,
    _validate_corpus,
    _validate_pointer_assertions,
)
from .ranges import (
    _reject_range_conflicts,
    _validate_ranges,
    validate_force_ranges,
)
from .routines import _TAGGED_LABEL, _validate_routines
from .vendor import _validate_vendor_patches, vendor_patches

