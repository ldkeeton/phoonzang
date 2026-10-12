"""``make charts`` / ``make set-baseline`` — statistics chart generation."""

import os
import shutil

from lib import cachedirs
from lib.report import list_project_dirs


def cmd_set_baseline():
    """Pin the current stats as the local baseline (JSON + layers only)."""
    projects = list_project_dirs()
    if not projects:
        print(f'No stats under {cachedirs.CACHE_ROOT}/<project>/stats; '
              'build with EXTRA_FLAGS=--stats first')
        return
    count = 0
    for project in projects:
        src = cachedirs.stats_dir(project)
        dst = cachedirs.baseline_dir(project)
        if os.path.isdir(dst):
            shutil.rmtree(dst)
        os.makedirs(dst, exist_ok=True)
        for fn in os.listdir(src):
            if fn.endswith('.json') or fn.endswith('.layers.parquet'):
                shutil.copy2(os.path.join(src, fn), os.path.join(dst, fn))
                if fn.endswith('.json') and not fn.endswith('.summary.json'):
                    count += 1
    print(f'Baseline set: {count} binaries -> {cachedirs.CACHE_ROOT}/<project>/stats_baseline')


def _charts(app):
    try:
        from lib.sparkline import charts
        charts(app)
    except Exception as e:
        print(f'  charts: {e}')


def _charts_all():
    try:
        from lib.sparkline import charts_all
        charts_all()
    except Exception as e:
        print(f'  all charts: {e}')


def cmd_charts():
    projects = list_project_dirs()
    for p in projects:
        print(f'Charts: {p}')
        _charts(p)
    _charts_all()
    print('Done')
