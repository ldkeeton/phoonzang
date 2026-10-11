"""``make`` — companion build tool for the ``asm/`` tree.

This package is the refactored form of the former ``make.py``.  Run it with
``python -m make --<command> ...`` (the Makefile does this), or import the
command functions below.
"""

import os
import sys

_ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _ASM not in sys.path:
    sys.path.insert(0, _ASM)

from .build import _build_projects, asm_app, cmd_build_binary, cmd_rebuild
from .charts import _charts, _charts_all, cmd_charts, cmd_set_baseline
from .clean import cmd_clean
from .cli import HELP, main
from .common import (
    APPS,
    ASM,
    JOBS,
    PROJECT,
    _apps,
    _asm_one,
    _copy_assets,
    _extra_flags,
    _foreign_args,
    _main_exe,
    _nasm_build,
    _prepare_cross_ref_sources,
    _run,
)
from .delta import cmd_delta
from .elf import cmd_elf_rebuild, resplice_c
from .prebuild import _ensure_prebuild, cmd_prebuild
from .run import DEFAULT_CHECK_SECONDS, _parse_check_args, cmd_check, cmd_run
from .testing import cmd_test
from .verify import cmd_verify

__all__ = [
    'PROJECT',
    'ASM',
    'APPS',
    'JOBS',
    'HELP',
    'main',
    'asm_app',
    'cmd_build_binary',
    'cmd_rebuild',
    'cmd_clean',
    'cmd_prebuild',
    'cmd_verify',
    'cmd_check',
    'cmd_run',
    'cmd_delta',
    'cmd_elf_rebuild',
    'cmd_charts',
    'cmd_set_baseline',
    'cmd_test',
    'resplice_c',
    '_apps',
    '_run',
    '_extra_flags',
    '_asm_one',
    '_nasm_build',
    '_main_exe',
    '_copy_assets',
    '_prepare_cross_ref_sources',
    '_foreign_args',
    '_ensure_prebuild',
    '_charts',
    '_charts_all',
    '_parse_check_args',
    '_build_projects',
    'DEFAULT_CHECK_SECONDS',
]
