"""``make clean`` — remove generated output trees."""

import os
import shutil

from lib.buildlock import LOCK_NAME
from lib.cachedirs import CACHE_ROOT, project_cache
from main.clean import clean_all
from main.clean import clean_project



def cmd_clean(apps, keep_prebuild=False):
    """Remove generated trees.

    ``make clean`` deletes the whole ``.cache`` folder (``.cache/<app>`` when
    apps are given).  ``make
    build`` passes ``keep_prebuild=True`` so the expensive prebuild survives
    repeated builds (it is created first only when absent).
    """
    def _targets(app):
        return [] if keep_prebuild else [project_cache(app)]

    if not apps:
        clean_all()
        if not keep_prebuild and os.path.isdir(CACHE_ROOT):
            # keep the build lock: deleting it would orphan the held inode
            for name in os.listdir(CACHE_ROOT):
                if name == LOCK_NAME:
                    continue
                path = os.path.join(CACHE_ROOT, name)
                if os.path.isdir(path) and not os.path.islink(path):
                    shutil.rmtree(path)
                else:
                    os.remove(path)
            print(f'Removed {CACHE_ROOT}')
        return
    for app in apps:
        removed = clean_project(app)
        for out in _targets(app):
            if os.path.isdir(out):
                shutil.rmtree(out)
                print(f'Removed {out}')
                removed = True
        if not removed and not keep_prebuild:
            print(f'Nothing to clean for {app}')
