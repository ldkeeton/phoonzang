"""``make charts`` / ``make set-baseline`` — statistics chart generation."""

import os
import shutil

from lib.report import (
    BASELINE_DIR,
    STATS_DIR,
    list_project_dirs,
)


def cmd_set_baseline():
    count = 0
    for root, dirs, files in os.walk(STATS_DIR):
        count += sum(1 for f in files if f.endswith('.json'))
    print(f'Found {count} binaries in stats')
    shutil.copytree(STATS_DIR, BASELINE_DIR, dirs_exist_ok=True)
    _charts_all()


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
