"""Structured pipeline reporting: per-binary JSON + layers, compare, chart data."""

import hashlib
import json
import os
import shutil

import polars as pl

from lib.model import PhaseContext


ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
STATS_DIR = os.path.join(ASM_DIR, 'stats')
BASELINE_DIR = os.path.join(ASM_DIR, 'stats_baseline')


def _ensure(dirpath):
    os.makedirs(dirpath, exist_ok=True)


def report_path(game, binary):
    return os.path.join(STATS_DIR, game, f'{game}_{binary}.json')


def layers_path(game, binary):
    return os.path.join(STATS_DIR, game, f'{game}_{binary}.layers.parquet')


def baseline_report_path(game, binary):
    return os.path.join(BASELINE_DIR, game, f'{game}_{binary}.json')


def hex_dump_path(game, binary):
    return os.path.join(STATS_DIR, game, f'{game}_{binary}.hex.txt')


def write_hex_dump(ctx):
    """Write a text hex dump of the binary to stats/game/binary.hex.txt.

    Format: one line per 16 bytes:
        OFFSET:  HH HH HH HH HH HH HH HH HH HH HH HH HH HH HH HH  ASCII
    where OFFSET is the byte offset into the binary (matching disassembler
    addresses).
    """
    path = hex_dump_path(ctx.report.get('game', 'unknown'), ctx.name)
    data = ctx.binary_data
    lines = []
    for off in range(0, len(data), 16):
        chunk = data[off:off+16]
        hex_part = ' '.join(f'{b:02X}' for b in chunk)
        ascii_part = ''.join(chr(b) if 32 <= b < 127 else '.' for b in chunk)
        lines.append(f'{off:04X}: {hex_part:<47}  {ascii_part}')
    with open(path, 'w') as f:
        f.write('\n'.join(lines))
    return path


def clear_stats():
    if os.path.exists(STATS_DIR):
        shutil.rmtree(STATS_DIR)
    os.makedirs(STATS_DIR)


def clear_game_stats(game):
    p = os.path.join(STATS_DIR, game)
    if os.path.exists(p):
        shutil.rmtree(p)
    os.makedirs(p, exist_ok=True)


def list_game_dirs():
    dirs = []
    if not os.path.isdir(STATS_DIR):
        return dirs
    for name in os.listdir(STATS_DIR):
        p = os.path.join(STATS_DIR, name)
        if os.path.isdir(p) and not name.startswith('image'):
            dirs.append(name)
    return sorted(dirs)


# ── chart / image layout ──────────────────────────────────────────────────────

def images_dir():
    p = os.path.join(STATS_DIR, 'images')
    os.makedirs(p, exist_ok=True)
    return p


def images_csv_dir():
    p = os.path.join(images_dir(), 'csv')
    os.makedirs(p, exist_ok=True)
    return p


def layers_images_dir():
    p = os.path.join(STATS_DIR, 'images_layers')
    os.makedirs(p, exist_ok=True)
    return p


def layers_images_csv_dir():
    p = os.path.join(layers_images_dir(), 'csv')
    os.makedirs(p, exist_ok=True)
    return p


def asm_hash(asm_text):
    return hashlib.sha256(asm_text.encode('utf-8')).hexdigest()[:12]


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
    report = dict(ctx.report)
    live_cls = _final_classification(ctx)
    existing = report.get('classification', {})
    existing.update(live_cls)
    report['classification'] = existing
    return report


def write_report(ctx, asm_text=''):
    _ensure(os.path.join(STATS_DIR, ctx.report.get('game', 'unknown')))
    report = generate_report(ctx)
    report['asm_hash'] = asm_hash(asm_text) if asm_text else ''
    path = report_path(ctx.report.get('game', 'unknown'), ctx.name)
    with open(path, 'w') as f:
        json.dump(report, f, indent=2, default=str)
    write_hex_dump(ctx)
    return path


def write_layers(ctx):
    game = ctx.report.get('game', 'unknown')
    _ensure(os.path.join(STATS_DIR, game))
    path = layers_path(game, ctx.name)
    ctx.layers.write_parquet(path, compression='zstd')
    return path


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
