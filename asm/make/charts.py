"""``make charts`` / ``make set-baseline`` — statistics chart generation."""

import os
import shutil

from lib.report import (
    BASELINE_DIR,
    STATS_DIR,
    list_project_dirs,
)


def cmd_set_baseline():
    """Pin the current stats as the local baseline (JSON + layers only)."""
    if not os.path.isdir(STATS_DIR):
        print(f'No stats at {STATS_DIR}; build with EXTRA_FLAGS=--stats first')
        return
    if os.path.isdir(BASELINE_DIR):
        shutil.rmtree(BASELINE_DIR)
    count = 0
    for project in list_project_dirs():
        src = os.path.join(STATS_DIR, project)
        dst = os.path.join(BASELINE_DIR, project)
        os.makedirs(dst, exist_ok=True)
        for fn in os.listdir(src):
            if fn.endswith('.json') or fn.endswith('.layers.parquet'):
                shutil.copy2(os.path.join(src, fn), os.path.join(dst, fn))
                if fn.endswith('.json') and not fn.endswith('.summary.json'):
                    count += 1
    print(f'Baseline set: {count} binaries -> {BASELINE_DIR}')


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
