"""``make clean`` — remove generated output trees."""

import os
import shutil

from lib.cachedirs import CACHE_ROOT, project_cache
from main import clean_all

from .common import PROJECT


def cmd_clean(apps, keep_prebuild=False):
    """Remove generated trees.

    ``make clean`` deletes the whole ``.cache`` folder (``.cache/<app>`` when
    apps are given).  ``make
    build`` passes ``keep_prebuild=True`` so the expensive prebuild survives
    repeated builds (it is created first only when absent).
    """
    def _targets(app):
        outs = [
            os.path.join(PROJECT, f'asm_{app}'),
        ]
        if not keep_prebuild:
            outs.append(project_cache(app))
        return outs

    if not apps:
        clean_all()
        if not keep_prebuild and os.path.isdir(CACHE_ROOT):
            shutil.rmtree(CACHE_ROOT)
            print(f'Removed {CACHE_ROOT}')
        return
    for app in apps:
        removed = False
        for out in _targets(app):
            if os.path.isdir(out):
                shutil.rmtree(out)
                print(f'Removed {out}')
                removed = True
        if not removed and not keep_prebuild:
            print(f'Nothing to clean for {app}')
