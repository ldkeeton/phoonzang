"""Removal of generated ``asm_<project>/`` output."""

import os
import shutil

from lib.autogen import describe_kept, remove_generated

from .options import PROJECT_ROOT
from .projects import get_projects


def clean_project(project):
    """Remove one project's generated files; hand-owned files survive.

    A file is generated when its first line is the auto-generated marker
    (:mod:`lib.autogen`).  ``build_out/`` holds binaries that cannot carry a
    marker and is entirely build product, so it goes wholesale.
    """
    out_dir = os.path.join(PROJECT_ROOT, f'asm_{project}')
    if not os.path.isdir(out_dir):
        return False
    shutil.rmtree(os.path.join(out_dir, 'build_out'), ignore_errors=True)
    removed, kept = remove_generated(out_dir)
    print(f'Removed {removed} generated files from {out_dir}')
    for line in describe_kept(kept, out_dir):
        print(line)
    return True


def clean_all():
    for p in get_projects():
        clean_project(p)
    if not get_projects():
        print('Cleaned.')
