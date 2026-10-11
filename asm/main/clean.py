"""Removal of generated ``asm_<project>/`` output trees."""

import os
import shutil

from .options import PROJECT_ROOT
from .projects import get_projects


def clean_all():
    for p in get_projects():
        out_dir = os.path.join(PROJECT_ROOT, f'asm_{p}')
        if os.path.isdir(out_dir):
            shutil.rmtree(out_dir)
            print(f'Removed {out_dir}')
    if not get_projects():
        print('Cleaned.')
