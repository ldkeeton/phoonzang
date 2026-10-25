"""Remove hand-owned sources, or recover committed originals after a purge."""

import os
import subprocess
from pathlib import Path

from lib.autogen import MARKER_ASM, MARKER_C, is_generated
from .common import PROJECT
from main.clean import clear_build_out


SUFFIXES = {'.c', '.s', '.asm'}


def _restore(project):
    root = Path(PROJECT)
    prefix = f'src_{project}'
    paths = subprocess.check_output(
        ['git', 'ls-tree', '-r', '--name-only', '-z', 'HEAD', '--', prefix],
        cwd=root).split(b'\0')
    restored = 0
    for raw in paths:
        if not raw:
            continue
        relative = os.fsdecode(raw)
        path = root / relative
        if (path.suffix.lower() not in SUFFIXES
                or 'build_out' in path.relative_to(root / prefix).parts):
            continue
        if path.exists() and not is_generated(str(path)):
            continue
        data = subprocess.check_output(['git', 'show', f'HEAD:{relative}'], cwd=root)
        first = data.split(b'\n', 1)[0].decode('utf-8', 'ignore').rstrip()
        if first in (MARKER_ASM, MARKER_C):
            continue
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
        restored += 1
    print(f'Restored {restored} hand-owned sources in {prefix} from Git HEAD')


def cmd_purge(args, all_projects):
    revert = bool(args and args[0] == 'revert')
    projects = args[1:] if revert else args
    unknown = set(projects) - set(all_projects)
    if unknown:
        raise SystemExit(f'Unknown project(s): {", ".join(sorted(unknown))}')
    for project in projects or all_projects:
        if revert:
            _restore(project)
            continue
        clear_build_out(project)
        root = Path(PROJECT) / f'src_{project}'
        removed = 0
        for base, dirs, files in os.walk(root):
            for name in files:
                path = Path(base) / name
                if path.suffix.lower() in SUFFIXES and not is_generated(str(path)):
                    path.unlink()
                    removed += 1
        print(f'Purged {removed} hand-owned sources from {root}; removed build_out')
