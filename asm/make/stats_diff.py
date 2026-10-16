"""``make stats-diff`` — compact current-vs-baseline KPI delta.

Reads the per-binary ``*.summary.json`` files under ``.cache/<project>/stats``
and ``.cache/_baseline/<project>`` and prints a polarity-annotated delta
for LLM/human consumption. Also writes ``.cache/_all/summary.json`` (current
snapshot) and ``.cache/_all/delta.json`` (machine-readable result).
"""

import json
import os

from lib import cachedirs
from lib.report import (
    GOOD_DOWN,
    GOOD_UP,
    baseline_layers_path,
    layers_path,
    load_summaries,
)

NUMERIC = (
    'size', 'code_bytes', 'data_bytes', 'unknown_bytes', 'code_pct',
    'instructions', 'labels', 'data_blocks', 'structs',
    'jt_count', 'jt_validated', 'jt_targets',
    'code_loss', 'bare_mem', 'bare_call', 'iterations',
)


def _polarity(key, delta):
    if delta == 0:
        return '='
    if key in GOOD_UP:
        return 'good' if delta > 0 else 'bad'
    if key in GOOD_DOWN:
        return 'good' if delta < 0 else 'bad'
    return ''


def _diff_binary(cur, base):
    deltas = {}
    for key in NUMERIC:
        a = base.get(key)
        b = cur.get(key)
        if a is None or b is None or a == b:
            continue
        delta = b - a
        deltas[key] = {
            'before': a, 'after': b, 'delta': delta,
            'polarity': _polarity(key, delta),
        }
    if cur.get('verify_status') != base.get('verify_status'):
        cur_ok = cur.get('verify_status') == 'OK'
        deltas['verify_status'] = {
            'before': base.get('verify_status'),
            'after': cur.get('verify_status'),
            'polarity': 'good' if cur_ok else 'bad',
        }
    if cur.get('asm_hash') != base.get('asm_hash'):
        deltas['asm_hash'] = {
            'before': base.get('asm_hash'),
            'after': cur.get('asm_hash'),
            'polarity': '',
        }
    return deltas


def _first_run(baseline=False):
    for entry in cachedirs.list_cached_projects():
        pdir = (cachedirs.baseline_dir(entry) if baseline
                else cachedirs.stats_dir(entry))
        if not os.path.isdir(pdir):
            continue
        for fn in sorted(os.listdir(pdir)):
            if fn.endswith('.summary.json') or not fn.endswith('.json'):
                continue
            try:
                with open(os.path.join(pdir, fn)) as f:
                    return json.load(f).get('run', {})
            except (OSError, json.JSONDecodeError):
                continue
    return {}


def _fmt(value):
    if isinstance(value, float):
        return f'{value:g}'
    return str(value)


def _binary_warnings():
    """Per-binary layer warnings, only where both current and baseline exist."""
    from lib.sparkline import binary_warnings
    warnings = []
    for entry in cachedirs.list_cached_projects():
        pdir = cachedirs.stats_dir(entry)
        if not os.path.isdir(pdir) or not os.path.isdir(cachedirs.baseline_dir(entry)):
            continue
        prefix = f'{entry}_'
        for fn in sorted(os.listdir(pdir)):
            if not fn.endswith('.layers.parquet'):
                continue
            binary = fn[len(prefix):-len('.layers.parquet')]
            if not os.path.exists(baseline_layers_path(entry, binary)):
                continue
            if not os.path.exists(layers_path(entry, binary)):
                continue
            warnings.extend(binary_warnings(entry, binary))
    return warnings


def cmd_stats_diff():
    if not any(os.path.isdir(cachedirs.stats_dir(p))
               for p in cachedirs.list_cached_projects()):
        print(f'No stats under {cachedirs.CACHE_ROOT}/<project>/stats; '
              'build with EXTRA_FLAGS=--stats first')
        return
    current = load_summaries()
    baseline = load_summaries(baseline=True)

    os.makedirs(cachedirs.ALL_DIR, exist_ok=True)
    with open(os.path.join(cachedirs.ALL_DIR, 'summary.json'), 'w') as f:
        json.dump(current, f, indent=2, sort_keys=True, default=str)

    cur_run = _first_run()
    base_run = _first_run(baseline=True)
    print(f'Stats diff: current={cachedirs.CACHE_ROOT}/<project>/stats')
    print(f'            baseline={cachedirs.BASELINE_ROOT}/<project>')
    if cur_run:
        print(f'  current run:  rev {cur_run.get("git_rev", "?")[:12]} '
              f'(dirty={cur_run.get("git_dirty")})  '
              f'argv={" ".join(cur_run.get("argv", []))}  ts={cur_run.get("ts")}')
    if base_run:
        print(f'  baseline run: rev {base_run.get("git_rev", "?")[:12]} '
              f'(dirty={base_run.get("git_dirty")})  '
              f'argv={" ".join(base_run.get("argv", []))}  ts={base_run.get("ts")}')

    if not baseline['binaries']:
        print('\nNo baseline; run `make set-baseline` to pin the current stats.')
        return

    result = {'binaries': {}, 'totals': {}, 'warnings': []}
    changed = 0
    for key in sorted(current['binaries']):
        cur = current['binaries'][key]
        base = baseline['binaries'].get(key)
        if base is None:
            print(f'\n{key}: NEW (no baseline)')
            continue
        deltas = _diff_binary(cur, base)
        if not deltas:
            continue
        result['binaries'][key] = deltas
        changed += 1
        print(f'\n{key}:')
        for metric, d in deltas.items():
            if metric in ('verify_status', 'asm_hash'):
                print(f'  {metric:16} {_fmt(d["before"])} -> {_fmt(d["after"])}'
                      f'  {d["polarity"]}'.rstrip())
            else:
                sign = f'{d["delta"]:+g}'
                print(f'  {metric:16} {_fmt(d["before"]):>10} -> {_fmt(d["after"]):>10}'
                      f'  ({sign})  {d["polarity"]}'.rstrip())

    for key in sorted(baseline['binaries']):
        if key not in current['binaries']:
            print(f'\n{key}: REMOVED (in baseline only)')

    # Totals
    totals_delta = {}
    for metric in NUMERIC:
        a = baseline['totals'].get(metric)
        b = current['totals'].get(metric)
        if a is None or b is None or a == b:
            continue
        delta = b - a
        totals_delta[metric] = {
            'before': a, 'after': b, 'delta': delta,
            'polarity': _polarity(metric, delta),
        }
    result['totals'] = totals_delta
    if totals_delta:
        print('\nTotals:')
        for metric, d in totals_delta.items():
            print(f'  {metric:16} {_fmt(d["before"]):>10} -> {_fmt(d["after"]):>10}'
                  f'  ({d["delta"]:+g})  {d["polarity"]}'.rstrip())

    if changed == 0:
        print('\nNo per-binary changes.')

    warnings = _binary_warnings()
    result['warnings'] = warnings
    if warnings:
        print('\nWARNINGS:')
        for w in warnings:
            print(f'  {w["scope"]}: {w["metric"]} '
                  f'\u0394={w["delta"]:+.0%} at bucket {w["bucket_pct"]}% '
                  f'(threshold \u00b1{w["threshold"]:.0%})')
    else:
        print('\nWARNINGS: none')

    with open(os.path.join(cachedirs.ALL_DIR, 'delta.json'), 'w') as f:
        json.dump(result, f, indent=2, sort_keys=True, default=str)
    print(f'\nWrote {os.path.join(cachedirs.ALL_DIR, "summary.json")} and delta.json')
