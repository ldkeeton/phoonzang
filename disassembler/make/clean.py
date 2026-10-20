"""``make clean`` — remove generated output trees."""

import os
import shutil

from lib.buildlock import LOCK_NAME
from lib.cachedirs import BASELINE_ROOT, CACHE_ROOT, project_cache
from main.clean import clean_all
from main.clean import clean_project

#: Kept by a whole-``.cache`` clean: the held build lock (deleting it would
#: orphan the held inode) and the pinned stats baselines.
_KEEP = {LOCK_NAME, os.path.basename(BASELINE_ROOT)}


def clean_output(project):
    """Remove one project's generated ``src_<project>/`` files."""
    return clean_project(project)


def clean_cache(project):
    """Remove one project's ``.cache``; True when there was one."""
    cache = project_cache(project)
    if not os.path.isdir(cache):
        return False
    shutil.rmtree(cache)
    print(f'Removed {cache}')
    return True


def cmd_clean(apps):
    """Remove generated output and ``.cache`` for *apps* (none: everything).

    ``make clean`` deletes every project's generated output and the whole
    ``.cache`` folder, except the build lock and the pinned baselines.
    """
    if not apps:
        clean_all()
        if os.path.isdir(CACHE_ROOT):
            for name in os.listdir(CACHE_ROOT):
                if name in _KEEP:
                    continue
                path = os.path.join(CACHE_ROOT, name)
                if os.path.isdir(path) and not os.path.islink(path):
                    shutil.rmtree(path)
                else:
                    os.remove(path)
            print(f'Removed {CACHE_ROOT}')
        return
    for app in apps:
        removed = clean_output(app)
        removed = clean_cache(app) or removed
        if not removed:
            print(f'Nothing to clean for {app}')
