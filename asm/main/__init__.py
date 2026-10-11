"""Disassemble DOS binaries -> byte-exact NASM assembly (.asm).

Scans ``apps/`` for app directories.  For each app:
  - Discovers binary files (.exe/.ovr/.drv)
  - Disassembles each to ``asm_<project>/<name>.asm``
  - Copies non-binary assets to ``asm_<project>/``
  - Creates ``asm_<project>/build_out/``

This package is the refactored form of the former ``main.py``.  The original
flat namespace is preserved below so in-process callers (the ``make`` tool and
the regression tests) can keep using ``import main`` unchanged.
"""

from lib.model import IS_CODE, IS_DATA
from lib.report import (
    print_short_report,
    write_layers,
    write_report,
)
from lib.sidecar import (
    load as load_sidecar,
    per_binary as sidecar_per_binary,
)

from .clean import clean_all
from .cli import main
from .options import (
    APPS_DIR,
    ASM_DIR,
    PROJECT_ROOT,
)
from .projects import (
    discover_binaries,
    get_projects,
    load_whitelist,
    process_project,
)
from .runner import process
from .verify import byte_verify, verify_all, verify_project

__all__ = [
    'ASM_DIR',
    'PROJECT_ROOT',
    'APPS_DIR',
    'IS_CODE',
    'IS_DATA',
    'load_sidecar',
    'sidecar_per_binary',
    'write_report',
    'write_layers',
    'print_short_report',
    'discover_binaries',
    'get_projects',
    'load_whitelist',
    'process',
    'process_project',
    'byte_verify',
    'verify_project',
    'verify_all',
    'clean_all',
    'main',
]
