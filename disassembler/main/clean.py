"""Removal of generated ``src_<project>/`` output."""

import os
import shutil

from lib.autogen import remove_generated
from lib.cachedirs import src_dir

from .options import PROJECT_ROOT
from .projects import get_projects


def clear_build_out(project):
    """Remove ``build_out/``: every build copies and assembles it afresh."""
    shutil.rmtree(os.path.join(src_dir(project, PROJECT_ROOT), 'build_out'),
                  ignore_errors=True)


def clean_project(project):
    """Remove one project's generated files; hand-owned files survive.

    A file is generated when its first line is the auto-generated marker
    (:mod:`lib.autogen`).  ``build_out/`` holds binaries that cannot carry a
    marker and is entirely build product, so it goes wholesale.
    """
    out_dir = src_dir(project, PROJECT_ROOT)
    if not os.path.isdir(out_dir):
        return False
    clear_build_out(project)
    removed, kept = remove_generated(out_dir)
    print(f'Removed {removed} generated files from {out_dir}')
    return True


def clean_all():
    for p in get_projects():
        clean_project(p)
    if not get_projects():
        print('Cleaned.')
