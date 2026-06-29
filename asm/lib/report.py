"""Structured pipeline reporting: per-binary JSON reports, compare, summary."""

import json
import os

from lib.model import PhaseContext, IS_CODE, IS_DATA, IS_UNKNOWN


ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
STATS_DIR = os.path.join(ASM_DIR, 'stats')


def _ensure_stats_dir():
    os.makedirs(STATS_DIR, exist_ok=True)


def _final_classification(ctx):
    """Return classification stats from the squashed column."""
    if 'squashed' not in ctx.layers.columns:
        return {'code_bytes': 0, 'data_bytes': 0, 'unknown_bytes': len(ctx.binary_data)}
    squashed = ctx.layers['squashed'].to_numpy()
    cb = int((squashed == IS_CODE).sum())
    db = int((squashed == IS_DATA).sum())
    ub = int((squashed == IS_UNKNOWN).sum())
    total = cb + db + ub
    return {
        'code_bytes': cb,
        'data_bytes': db,
        'unknown_bytes': ub,
        'code_pct': round(cb / max(total, 1) * 100, 1),
    }


def generate_report(ctx):
    """Build the full report dict from ctx.report and live ctx data."""
    report = dict(ctx.report)
    live_cls = _final_classification(ctx)
    # Merge live stats into existing classification, don't overwrite
    existing = report.get('classification', {})
    existing.update(live_cls)
    report['classification'] = existing
    return report


def write_report(ctx):
    """Write JSON report to stats/<name>.json."""
    _ensure_stats_dir()
    report = generate_report(ctx)
    path = os.path.join(STATS_DIR, f"{ctx.name}.json")
    with open(path, 'w') as f:
        json.dump(report, f, indent=2, default=str)
    return path


def print_short_report(ctx):
    """Print a human-friendly one-line extension to the existing summary."""
    jts = ctx.report.get('jump_tables', [])
    if not jts:
        return
    found = sum(1 for jt in jts if jt.get('targets_found', 0) >= 3)
    total_targets = sum(jt.get('targets_found', 0) for jt in jts)
    print(f'  jt_scans={len(jts)} jt_found={found} jt_targets={total_targets}')


def compare_reports(path_a, path_b):
    """Compare two JSON reports and return a delta dict."""
    with open(path_a) as f:
        a = json.load(f)
    with open(path_b) as f:
        b = json.load(f)

    name = a.get('binary', {}).get('name', '?')
    deltas = []

    cls_a = a.get('classification', {})
    cls_b = b.get('classification', {})
    for key in ('code_bytes', 'data_bytes', 'unknown_bytes', 'code_pct'):
        va = cls_a.get(key, 0)
        vb = cls_b.get(key, 0)
        if va != vb:
            deltas.append({'key': f'classification.{key}', 'before': va, 'after': vb})

    phases_a = a.get('phases', {})
    phases_b = b.get('phases', {})
    for pname in set(list(phases_a.keys()) + list(phases_b.keys())):
        pa = phases_a.get(pname, {})
        pb = phases_b.get(pname, {})
        for key in ('time_s', 'nz', 'pos', 'neg'):
            va = pa.get(key, 0)
            vb = pb.get(key, 0)
            if abs(va - vb) > 0.01 if isinstance(va, float) else va != vb:
                deltas.append({'key': f'phases.{pname}.{key}', 'before': va, 'after': vb})

    jts_a = {jt.get('jmp_addr'): jt for jt in a.get('jump_tables', [])}
    jts_b = {jt.get('jmp_addr'): jt for jt in b.get('jump_tables', [])}
    for addr in set(list(jts_a.keys()) + list(jts_b.keys())):
        ja = jts_a.get(addr, {})
        jb = jts_b.get(addr, {})
        va = ja.get('targets_found', 0)
        vb = jb.get('targets_found', 0)
        if va != vb:
            deltas.append({
                'key': f'jump_table.0x{addr:x}.targets_found',
                'before': va, 'after': vb,
            })

    return {
        'name': name,
        'deltas': deltas,
        'changed': len(deltas) > 0,
    }


def print_compare(path_a, path_b):
    """Human-friendly compare output."""
    result = compare_reports(path_a, path_b)
    print(f"Compare: {result['name']}")
    if not result['changed']:
        print("  No differences.")
        return
    for d in result['deltas']:
        print(f"  {d['key']}: {d['before']} -> {d['after']}")
