"""Structured pipeline reporting: per-binary JSON + layers, compare, chart data."""

import hashlib
import json
import os
import shutil
import subprocess
import sys
import time

import polars as pl

from lib import cachedirs
from lib.model import PhaseContext


ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT_ROOT = os.path.dirname(ASM_DIR)


# Metrics where an increase is an improvement (for delta rendering). Anything
# not listed is treated as neutral. Lower-is-better metrics are GOOD_DOWN.
GOOD_UP = {
    'code_bytes', 'instructions', 'labels', 'jt_validated', 'jt_targets',
    'code_pct',
}
GOOD_DOWN = {
    'unknown_bytes', 'code_loss', 'bare_mem', 'bare_call', 'frozen_addr',
    'code_shift', 'data_shift', 'o_corg', 'o_corg_imm', 'o_dorg', 'ds_size_imm',
}


def _ensure(dirpath):
    os.makedirs(dirpath, exist_ok=True)


def report_path(project, binary):
    return os.path.join(cachedirs.stats_dir(project), f'{project}_{binary}.json')


def summary_path(project, binary):
    return os.path.join(cachedirs.stats_dir(project), f'{project}_{binary}.summary.json')


def layers_path(project, binary):
    return os.path.join(cachedirs.stats_dir(project), f'{project}_{binary}.layers.parquet')


def baseline_layers_path(project, binary):
    return os.path.join(cachedirs.baseline_dir(project), f'{project}_{binary}.layers.parquet')


def clear_project_stats(project):
    p = cachedirs.stats_dir(project)
    if os.path.exists(p):
        shutil.rmtree(p)
    os.makedirs(p, exist_ok=True)


def list_project_dirs():
    """Projects that currently have a ``.cache/<project>/stats`` directory."""
    return [p for p in cachedirs.list_cached_projects()
            if os.path.isdir(cachedirs.stats_dir(p))]


# ── chart / image layout ──────────────────────────────────────────────────────

def images_dir():
    p = os.path.join(cachedirs.ALL_DIR, 'images')
    os.makedirs(p, exist_ok=True)
    return p


def images_csv_dir():
    p = os.path.join(images_dir(), 'csv')
    os.makedirs(p, exist_ok=True)
    return p


def layers_images_dir():
    p = os.path.join(cachedirs.ALL_DIR, 'images_layers')
    os.makedirs(p, exist_ok=True)
    return p


def layers_images_csv_dir():
    p = os.path.join(layers_images_dir(), 'csv')
    os.makedirs(p, exist_ok=True)
    return p


def asm_hash(asm_text):
    return hashlib.sha256(asm_text.encode('utf-8')).hexdigest()[:12]


_RUN_METADATA = None


def run_metadata():
    """Provenance for a stats snapshot: git rev/dirty, argv, timestamp."""
    global _RUN_METADATA
    if _RUN_METADATA is not None:
        return _RUN_METADATA

    def _git(*args):
        try:
            return subprocess.run(
                ('git',) + args, cwd=PROJECT_ROOT,
                capture_output=True, text=True, timeout=5,
            )
        except (OSError, subprocess.SubprocessError):
            return None

    rev = _git('rev-parse', 'HEAD')
    status = _git('status', '--porcelain')
    rev = rev.stdout.strip() if rev and rev.returncode == 0 else ''
    dirty = bool(status and status.stdout.strip())
    _RUN_METADATA = {
        'git_rev': rev,
        'git_dirty': dirty,
        'argv': tuple(sys.argv[1:]),
        'ts': time.strftime('%Y-%m-%dT%H:%M:%S'),
    }
    return _RUN_METADATA


def _final_classification(ctx):
    if 'squashed' not in ctx.layers.columns:
        return {'code_bytes': 0, 'data_bytes': 0, 'unknown_bytes': len(ctx.binary_data)}
    squashed = ctx.layers['squashed'].to_numpy()
    cb = int((squashed == 1).sum())
    db = int((squashed == 2).sum())
    ub = int((squashed == 0).sum())
    total = cb + db + ub
    return {
        'code_bytes': cb,
        'data_bytes': db,
        'unknown_bytes': ub,
        'code_pct': round(cb / max(total, 1) * 100, 1),
    }


def generate_report(ctx):
    report = {k: v for k, v in ctx.report.items() if k != 'addresses'}
    live_cls = _final_classification(ctx)
    existing = report.get('classification', {})
    existing.update(live_cls)
    report['classification'] = existing
    report['run'] = dict(run_metadata())
    return report


def write_report(ctx, asm_text=''):
    _ensure(cachedirs.stats_dir(ctx.report.get('project', 'unknown')))
    report = generate_report(ctx)
    report['asm_hash'] = asm_hash(asm_text) if asm_text else ''
    path = report_path(ctx.report.get('project', 'unknown'), ctx.name)
    with open(path, 'w') as f:
        json.dump(report, f, indent=2, default=str)
    return path


def write_layers(ctx):
    project = ctx.report.get('project', 'unknown')
    _ensure(cachedirs.stats_dir(project))
    path = layers_path(project, ctx.name)
    ctx.layers.write_parquet(path, compression='zstd')
    return path


# ── flat KPI summary ──────────────────────────────────────────────────────────

SUMMARY_SCHEMA = 1


def summarize(ctx):
    """Return a flat, stable dict of scalar KPIs for one binary."""
    report = generate_report(ctx)
    cls = report.get('classification', {})
    verify = report.get('verify', {})
    jts = report.get('jump_tables', []) or []
    targets = report.get('code_targets', {}) or {}
    it = report.get('iterative', {}) or {}
    binary = report.get('binary', {}) or {}
    frozen = verify.get('frozen_addr_detail', {}) or {}

    def _int(v):
        try:
            return int(v)
        except (TypeError, ValueError):
            return 0

    return {
        'size': _int(binary.get('size')),
        'code_bytes': _int(cls.get('code_bytes', cls.get('code', 0))),
        'data_bytes': _int(cls.get('data_bytes', cls.get('data', 0))),
        'unknown_bytes': _int(cls.get('unknown_bytes', cls.get('unknown', 0))),
        'code_pct': round(float(cls.get('code_pct', 0.0)), 3),
        'instructions': _int(cls.get('instructions')),
        'labels': _int(verify.get('labels')),
        'data_blocks': _int(verify.get('data_blocks')),
        'verify_status': str(verify.get('status', '')),
        'jt_count': len(jts),
        'jt_validated': sum(1 for jt in jts if jt.get('validated')),
        'jt_targets': sum(_int(jt.get('targets_found')) for jt in jts),
        'code_loss': _int(targets.get('code_loss', verify.get('code_loss', 0))),
        'bare_mem': _int(verify.get('bare_mem')),
        'bare_call': _int(verify.get('bare_call')),
        'frozen_addr': _int(verify.get('frozen_addr')),
        'code_shift': _int(frozen.get('code_shift')),
        'data_shift': _int(frozen.get('data_shift')),
        'inert': _int(frozen.get('inert')),
        'o_corg': _int(frozen.get('o_corg')),
        'o_corg_imm': _int(frozen.get('o_corg_imm')),
        'o_dorg': _int(frozen.get('o_dorg')),
        'ds_size_imm': _int(frozen.get('ds_size_imm')),
        'region_deprioritised_bytes': _int(
            verify.get('region_deprioritised_bytes')),
        'promoted_pointers': _int(
            (verify.get('pointer_counts') or {}).get('promoted')),
        'promoted_data_words': len(verify.get('promoted_data_words') or ()),
        'unproven_data_words': _int(
            (verify.get('pointer_counts') or {}).get('unproven')),
        'iterations': _int(it.get('iterations')),
        'converged': bool(it.get('converged', False)),
        'asm_hash': report.get('asm_hash', ''),
    }


def write_summary(ctx, asm_text=''):
    project = ctx.report.get('project', 'unknown')
    _ensure(cachedirs.stats_dir(project))
    summary = summarize(ctx)
    summary['asm_hash'] = asm_hash(asm_text) if asm_text else ''
    path = summary_path(project, ctx.name)
    with open(path, 'w') as f:
        json.dump(summary, f, indent=2, sort_keys=True, default=str)
    return path


def load_summaries(baseline=False):
    """Aggregate all per-binary *.summary.json under every project's cache.

    Reads ``.cache/<project>/stats`` (or ``.cache/_baseline/<project>`` when *baseline*).
    Returns {binary: kpi} across every project, plus a `totals` entry.
    """
    binaries = {}
    totals = {}
    for entry in cachedirs.list_cached_projects():
        pdir = (cachedirs.baseline_dir(entry) if baseline
                else cachedirs.stats_dir(entry))
        if not os.path.isdir(pdir):
            continue
        for fn in sorted(os.listdir(pdir)):
            if not fn.endswith('.summary.json'):
                continue
            try:
                with open(os.path.join(pdir, fn)) as f:
                    kpi = json.load(f)
            except (OSError, json.JSONDecodeError):
                continue
            binaries[f'{entry}/{fn[:-len(".summary.json")]}'] = kpi
            for k, v in kpi.items():
                if isinstance(v, bool):
                    continue
                if isinstance(v, (int, float)):
                    totals[k] = totals.get(k, 0) + v
    return {'binaries': binaries, 'totals': totals}


def print_short_report(ctx):
    jts = ctx.report.get('jump_tables', [])
    if not jts:
        return
    found = sum(1 for jt in jts if jt.get('targets_found', 0) >= 3)
    total_targets = sum(jt.get('targets_found', 0) for jt in jts)
    print(f'  jt_scans={len(jts)} jt_found={found} jt_targets={total_targets}')


def compare_reports(path_a, path_b):
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
    result = compare_reports(path_a, path_b)
    print(f"Compare: {result['name']}")
    if not result['changed']:
        print('  No differences.')
        return
    for d in result['deltas']:
        print(f"  {d['key']}: {d['before']} -> {d['after']}")
