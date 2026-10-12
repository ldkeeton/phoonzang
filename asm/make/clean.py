"""``make clean`` — remove generated output trees."""

import os
import shutil

from lib.cachedirs import prebuild_dir, render_dir
from main import clean_all

from .common import APPS, PROJECT


def cmd_clean(apps, keep_prebuild=False):
    """Remove generated trees.

    ``make clean`` removes ``.cache/<app>/prebuild`` as well.  ``make
    build`` passes ``keep_prebuild=True`` so the expensive prebuild survives
    repeated builds (it is created first only when absent).
    """
    def _targets(app):
        outs = [
            os.path.join(PROJECT, f'asm_{app}'),
        ]
        if not keep_prebuild:
            outs.append(prebuild_dir(app))
            outs.append(render_dir(app))
        return outs

    if not apps:
        clean_all()
        for app in os.listdir(APPS):
            if not os.path.isdir(os.path.join(APPS, app)):
                continue
            # asm_<app> is handled by clean_all(); keep the old no-arg scope.
            for out in _targets(app)[1:]:
                if os.path.isdir(out):
                    shutil.rmtree(out)
                    print(f'Removed {out}')
        return
    for app in apps:
        removed = False
        for out in _targets(app):
            if os.path.isdir(out):
                shutil.rmtree(out)
                print(f'Removed {out}')
                removed = True
        if not removed:
            print(f'Nothing to clean for {app}')
