"""File-position decile charts — final classification + per-phase layers."""

import csv
import os
import warnings

import numpy as np
import polars as pl

from lib.model import IS_CODE, IS_DATA, IS_UNKNOWN
from lib.report import (
    STATS_DIR, BASELINE_DIR,
    layers_path, list_game_dirs,
    images_dir, images_csv_dir,
    layers_images_dir, layers_images_csv_dir,
)

N_BUCKETS = 20
BUCKET_PCTS = [(i + 1) * 5 for i in range(N_BUCKETS)]  # 5, 10, ..., 100
CODE_FRAGMENT_MAX = 12
BYTE_MAP_W = 600
PHASE_COLS = [
    'seed', 'sidecar', 'carve_1', 'trampoline', 'error_handler',
    'recursive', 'prune_dead', 'prune_zero', 'carve_2',
    'settled', 'force_code', 'squashed',
]
METRICS = ['code_pct', 'data_pct', 'unknown_pct',
           'label_density', 'data_block_density', 'instruction_loss']
OF_FILE_METRICS = ('code_pct_of_file', 'data_pct_of_file', 'unknown_pct_of_file')
OF_FILE_MAP = {'code_pct': 'code_pct_of_file',
               'data_pct': 'data_pct_of_file',
               'unknown_pct': 'unknown_pct_of_file'}
METRIC_LABELS = {
    'code_pct': 'Code %',
    'data_pct': 'Data %',
    'unknown_pct': 'Unknown %',
    'code_pct_of_file': 'Code % (of file)',
    'data_pct_of_file': 'Data % (of file)',
    'unknown_pct_of_file': 'Unknown % (of file)',
    'label_density': 'Label density',
    'data_block_density': 'Data block density',
    'instruction_loss': 'Instructions lost to data (vs baseline)',
}
PHASE_COLORS = [
    '#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd',
    '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf',
    '#aec7e8', '#ffbb78',
]


# ── bucket helpers ─────────────────────────────────────────────────────────────

def _bucket_boundaries(n):
    return [int(n * i // N_BUCKETS) for i in range(N_BUCKETS + 1)]


def _bucket_metrics_for_column(col, n, label_col=None):
    """Return dict of per-bucket metric arrays for a single classification column.

    col: numpy array of ints (0=unknown, 1=code, 2=data)
    n: total byte count of the binary
    label_col: optional numpy array of uint8 (1=has label, 0=no label)
    """
    edges = _bucket_boundaries(n)
    result = {}
    _ALL_METRICS = METRICS + list(OF_FILE_METRICS)
    for m in _ALL_METRICS:
        result[m] = np.zeros(N_BUCKETS, dtype=float)
    result['_data_block_count'] = np.zeros(N_BUCKETS, dtype=float)

    total_code = (col == IS_CODE).sum()
    total_data = (col == IS_DATA).sum()
    total_unknown = (col == IS_UNKNOWN).sum()

    for d in range(N_BUCKETS):
        start = edges[d]
        end = min(edges[d + 1], n)
        chunk = col[start:end]
        sz = len(chunk)
        result['code_pct'][d] = (chunk == IS_CODE).sum() / max(sz, 1)
        result['data_pct'][d] = (chunk == IS_DATA).sum() / max(sz, 1)
        result['unknown_pct'][d] = (chunk == IS_UNKNOWN).sum() / max(sz, 1)
        result['code_pct_of_file'][d] = (chunk == IS_CODE).sum() / max(total_code, 1)
        result['data_pct_of_file'][d] = (chunk == IS_DATA).sum() / max(total_data, 1)
        result['unknown_pct_of_file'][d] = (chunk == IS_UNKNOWN).sum() / max(total_unknown, 1)

    # label_density: use label_col if available, else fall back to code-start transitions
    if label_col is not None:
        label_positions = np.where(label_col == 1)[0]
        total_labels = len(label_positions)
        if total_labels > 0:
            for d in range(N_BUCKETS):
                start = edges[d]
                end = min(edges[d + 1], n)
                result['label_density'][d] = ((label_positions >= start) & (label_positions < end)).sum() / total_labels
    else:
        code_starts = np.where((col[1:] == IS_CODE) & (col[:-1] != IS_CODE))[0] + 1
        n_cs = len(code_starts)
        if n_cs > 0:
            for d in range(N_BUCKETS):
                start = edges[d]
                end = min(edges[d + 1], n)
                result['label_density'][d] = ((code_starts >= start) & (code_starts < end)).sum() / n_cs

    # data_block_density + raw count: transitions from !=DATA to ==DATA
    data_starts = np.where((col[1:] == IS_DATA) & (col[:-1] != IS_DATA))[0] + 1
    n_ds = len(data_starts)
    if n_ds > 0:
        for d in range(N_BUCKETS):
            start = edges[d]
            end = min(edges[d + 1], n)
            count = ((data_starts >= start) & (data_starts < end)).sum()
            result['data_block_density'][d] = count / n_ds
            result['_data_block_count'][d] = count

    # instruction_loss: placeholder (computed in generate_scope from baseline diff)
    # stays at zero here; overwritten later when both current and baseline are known

    # Zero out anything that's 0/0
    for m in _ALL_METRICS:
        result[m] = np.nan_to_num(result[m], nan=0.0)
    result['_data_block_count'] = np.nan_to_num(result['_data_block_count'], nan=0.0)

    return result


def _load_binary(game, binary, lp_fn):
    """Return per-bucket metrics dict for one binary from layers, or None."""
    path = lp_fn(game, binary)
    if not os.path.exists(path):
        return None
    try:
        df = pl.read_parquet(path)
    except Exception:
        return None
    n = len(df)
    if n == 0:
        return None
    col_name = 'emit' if 'emit' in df.columns else 'squashed'
    col = df[col_name].to_numpy().astype(np.int8)
    label_col = None
    if 'label_positions' in df.columns:
        label_col = df['label_positions'].to_numpy().astype(np.uint8)
    return _bucket_metrics_for_column(col, n, label_col=label_col)


def _load_all_phases(game, binary, lp_fn):
    """Return {phase: {metric: [N_BUCKETS]}} for all 12 phases."""
    path = lp_fn(game, binary)
    if not os.path.exists(path):
        return None
    try:
        df = pl.read_parquet(path)
    except Exception:
        return None
    n = len(df)
    if n == 0:
        return None
    result = {}
    for phase in PHASE_COLS:
        if phase not in df.columns:
            continue
        col = df[phase].to_numpy().astype(np.int8)
        result[phase] = _bucket_metrics_for_column(col, n)
    return result


def _average_metrics(metrics_list):
    """Element-wise mean of a list of {metric: [N_BUCKETS]} dicts."""
    if not metrics_list:
        return None
    keys = list(metrics_list[0].keys())
    result = {}
    for k in keys:
        arr = np.mean([m[k] for m in metrics_list], axis=0)
        result[k] = arr
    return result


def _binary_keys(game=None):
    """Yield (game, binary) tuples for all binaries with layers parquet."""
    if game:
        dirs = [game]
    else:
        dirs = list_game_dirs()
    for g in dirs:
        stats_g = os.path.join(STATS_DIR, g)
        if not os.path.isdir(stats_g):
            continue
        prefix = f'{g}_'
        for fn in os.listdir(stats_g):
            if fn.endswith('.layers.parquet'):
                binary = fn[len(prefix):-len('.layers.parquet')]
                yield g, binary


def _baseline_binary_keys(game=None):
    """Yield (game, binary) for binaries present in baseline."""
    if not os.path.isdir(BASELINE_DIR):
        return
    if game:
        dirs = [game]
    else:
        dirs = os.listdir(BASELINE_DIR)
    for g in dirs:
        bg = os.path.join(BASELINE_DIR, g)
        if not os.path.isdir(bg):
            continue
        prefix = f'{g}_'
        for fn in os.listdir(bg):
            if fn.endswith('.layers.parquet'):
                binary = fn[len(prefix):-len('.layers.parquet')]
                yield g, binary


# ── CSV writers ───────────────────────────────────────────────────────────────

def _write_flat_csv(path, scope, current_metrics, baseline_metrics):
    """Write a wide-format CSV, one row per 5% bucket."""
    csv_metrics = METRICS + list(OF_FILE_METRICS)
    with open(path, 'w', newline='') as f:
        cols = ['bucket']
        for m in csv_metrics:
            cols.append(m)
            cols.append(f'{m}_baseline')
            cols.append(f'{m}_delta')
        w = csv.writer(f)
        w.writerow(cols)
        for d in range(N_BUCKETS):
            row = [BUCKET_PCTS[d]]
            for m in csv_metrics:
                cur = float(current_metrics[m][d]) if current_metrics else 0
                base = float(baseline_metrics[m][d]) if baseline_metrics else ''
                delta = cur - base if isinstance(base, (int, float)) else ''
                row.extend([cur, base, delta])
            w.writerow(row)


def _write_byte_csv(path, col, base_col, n):
    """Write per-chunk byte-map data so charts render from CSV, not parquet."""
    n_chunks = min(BYTE_MAP_W, n)
    chunk_size = max(n // n_chunks, 1)
    n_chunks = n // chunk_size
    has_base = base_col is not None

    with open(path, 'w', newline='') as f:
        w = csv.writer(f)
        if has_base:
            w.writerow(['chunk', 'base_code_wt', 'base_unknown',
                        'curr_code_wt', 'curr_unknown', 'diff_frac'])
        else:
            w.writerow(['chunk', 'curr_code_wt', 'curr_unknown'])

        for i in range(n_chunks):
            s = i * chunk_size
            e = min(s + chunk_size, n)
            cc = col[s:e]
            n_code = (cc == 1).sum()
            n_data = (cc == 2).sum()
            n_unknown = (e - s) - n_code - n_data
            curr_unk = 1 if n_unknown > 0 else 0
            total = n_code + n_data
            curr_wt = n_code / total if total > 0 else 0.0

            if has_base:
                bc = base_col[s:e]
                n_code = (bc == 1).sum()
                n_data = (bc == 2).sum()
                n_unknown = (e - s) - n_code - n_data
                base_unk = 1 if n_unknown > 0 else 0
                total = n_code + n_data
                base_wt = n_code / total if total > 0 else 0.0
                diff = (cc != bc).sum() / max(e - s, 1)
                w.writerow([i, base_wt, base_unk, curr_wt, curr_unk, diff])
            else:
                w.writerow([i, curr_wt, curr_unk])


def _write_long_csv(path, scope, current_all_phases, baseline_all_phases):
    """Write a long-format CSV for per-phase data.

    Columns: bucket, phase, metric, current, baseline, delta
    """
    if not current_all_phases:
        return
    with open(path, 'w', newline='') as f:
        w = csv.writer(f)
        w.writerow(['bucket', 'phase', 'metric', 'current', 'baseline', 'delta'])
        for phase in PHASE_COLS:
            if phase not in current_all_phases:
                continue
            cm = current_all_phases[phase]
            bm = baseline_all_phases.get(phase) if baseline_all_phases else None
            for d in range(N_BUCKETS):
                for m in METRICS:
                    cur = float(cm[m][d])
                    base = float(bm[m][d]) if bm else ''
                    delta = cur - base if isinstance(base, (int, float)) else ''
                    w.writerow([BUCKET_PCTS[d], phase, m, cur, base, delta])


WARN_THRESHOLDS = {
    'code_pct': 0.10,
    'data_pct': 0.10,
    'unknown_pct': 0.05,
    'code_pct_of_file': 0.10,
    'data_pct_of_file': 0.10,
    'unknown_pct_of_file': 0.05,
    'label_density': 0.15,
    'data_block_density': 0.15,
    'instruction_loss': 0.15,
}

_WARN_METRICS = METRICS + list(OF_FILE_METRICS)


def _override_thresholds():
    env = os.environ.get('STATS_WARN_THRESHOLD', '')
    if env:
        try:
            val = float(env)
            return {m: val for m in _WARN_METRICS}
        except ValueError:
            pass
    return dict(WARN_THRESHOLDS)


def _check_and_print_warnings(scope, current, baseline):
    if baseline is None:
        return
    thresholds = _override_thresholds()
    for m in _WARN_METRICS:
        max_delta = max(abs(float(current[m][d]) - float(baseline[m][d]))
                        for d in range(N_BUCKETS))
        th = thresholds.get(m, 0.10)
        if max_delta > th:
            peak_d = max(range(N_BUCKETS),
                         key=lambda d: abs(float(current[m][d]) - float(baseline[m][d])))
            delta = float(current[m][peak_d]) - float(baseline[m][peak_d])
            print(f'  \u26a0 {scope}: {m} \u0394={delta:+.0%} at bucket {BUCKET_PCTS[peak_d]}% (threshold \u00b1{th:.0%})')


# ── chart generators ──────────────────────────────────────────────────────────

def _ensure_matplotlib():
    try:
        import matplotlib
        matplotlib.use('Agg')
        import matplotlib.pyplot as plt
        return plt
    except ImportError:
        warnings.warn('matplotlib not installed; skipping charts')
        return None


def _plot_sparkline(ax, cur, base, has_base, metric, cur_of=None, base_of=None):
    """One sparkline — minimal decorations, just the line shape."""
    x = list(range(N_BUCKETS))
    label = METRIC_LABELS.get(metric, metric)
    def _y(v):
        p = v * 100
        return 99.9 if p >= 100 else p
    if has_base:
        ax.plot(x, [_y(v) for v in base], 'r-', linewidth=0.8,
                label='baseline')
    ax.plot(x, [_y(v) for v in cur], 'b--', linewidth=0.8,
            label='current')
    if base_of is not None and has_base:
        ax.plot(x, [_y(v) for v in base_of], 'r-', linewidth=0.5, alpha=0.12)
    if cur_of is not None:
        ax.plot(x, [_y(v) for v in cur_of], 'b--', linewidth=0.5, alpha=0.12)
    ax.text(-0.03, 0.5, label, fontsize=5, va='center', ha='right',
            transform=ax.transAxes, color='#666666')
    ax.set_ylim(0, 100)
    ax.set_xlim(0, N_BUCKETS - 1)
    ax.set_yticks([])
    ax.set_xticks([])
    for spine in ax.spines.values():
        spine.set_color('#cccccc')
        spine.set_linewidth(0.3)


def _plot_layers_subplot(ax, all_phases, baseline_all_phases, metric):
    """One subplot for images_layers/ — 12 colored phase lines."""
    from matplotlib.ticker import PercentFormatter
    label = METRIC_LABELS.get(metric, metric)
    x = list(range(N_BUCKETS))
    has_base = baseline_all_phases is not None
    def _y(v):
        p = v * 100
        return 99.9 if p >= 100 else p
    for i, phase in enumerate(PHASE_COLS):
        if phase not in all_phases:
            continue
        cur = all_phases[phase][metric]
        color = PHASE_COLORS[i % len(PHASE_COLORS)]
        ax.plot(x, [_y(v) for v in cur], color=color, linewidth=1.2, label=phase)
        if has_base and phase in baseline_all_phases:
            base = baseline_all_phases[phase][metric]
            ax.plot(x, [_y(v) for v in base], color=color, linewidth=0.8,
                    linestyle='--', alpha=0.4)
    ax.set_ylabel(label, fontsize=8)
    ax.yaxis.set_major_formatter(PercentFormatter(xmax=100))
    ax.set_ylim(0, 100)
    ax.tick_params(axis='both', labelsize=7)
    ax.set_xlim(0, N_BUCKETS - 1)
    step = 2
    ax.set_xticks(range(1, N_BUCKETS, step))
    ax.set_xticklabels([f'{BUCKET_PCTS[i]}%' for i in range(1, N_BUCKETS, step)], fontsize=7)


def _render_byte_map(ax, byte_csv_path):
    """6-row byte map from companion CSV, not from parquet directly.

    Row 0 (half-height pink-on-red):  baseline colors where same, pink where diff.
    Row 1-2 (double-height red):      baseline code fraction (dark→light = code→data).
    Row 3-4 (double-height blue):     current code fraction.
    Row 5 (half-height pink-on-blue): current colors where same, pink where diff.
    """
    with open(byte_csv_path, 'r') as f:
        reader = csv.DictReader(f)
        rows = list(reader)
    n_chunks = len(rows)
    has_base = 'base_code_wt' in rows[0] if rows else False

    if has_base:
        base_code_wt = np.array([float(r['base_code_wt']) for r in rows])
        base_unknown = np.array([int(r['base_unknown']) for r in rows], dtype=bool)
        curr_code_wt = np.array([float(r['curr_code_wt']) for r in rows])
        curr_unknown = np.array([int(r['curr_unknown']) for r in rows], dtype=bool)
        diff_frac = np.array([float(r['diff_frac']) for r in rows])
    else:
        curr_code_wt = np.array([float(r['curr_code_wt']) for r in rows])
        curr_unknown = np.array([int(r['curr_unknown']) for r in rows], dtype=bool)

    DARK_RED = [0.65, 0.15, 0.15]
    LIGHT_RED = [0.95, 0.55, 0.55]
    DARK_BLUE = [0.15, 0.35, 0.70]
    LIGHT_BLUE = [0.55, 0.75, 0.95]
    GRAY = [0.9, 0.9, 0.9]
    PINK = [1.0, 0.41, 0.71]

    def _chunk_rgb(code_wt, unknown, dark, light):
        rgb = np.empty((n_chunks, 3), dtype=float)
        for i in range(n_chunks):
            if unknown[i]:
                rgb[i] = GRAY
            else:
                w = code_wt[i]
                for k in range(3):
                    rgb[i, k] = w * dark[k] + (1 - w) * light[k]
        return rgb

    curr_rgb = _chunk_rgb(curr_code_wt, curr_unknown, DARK_BLUE, LIGHT_BLUE)

    stack = []
    if has_base:
        base_rgb = _chunk_rgb(base_code_wt, base_unknown, DARK_RED, LIGHT_RED)
        SCALE = 8.0
        pi = np.minimum(diff_frac * SCALE, 1.0)

        top_hl = base_rgb.copy()
        for k in range(3):
            top_hl[:, k] = (1 - pi) * top_hl[:, k] + pi * PINK[k]
        stack.append(top_hl)
        stack.append(base_rgb)
        stack.append(base_rgb)
        stack.append(curr_rgb)
        stack.append(curr_rgb)
        bot_hl = curr_rgb.copy()
        for k in range(3):
            bot_hl[:, k] = (1 - pi) * bot_hl[:, k] + pi * PINK[k]
        stack.append(bot_hl)
    else:
        stack.append(curr_rgb)

    img = np.stack(stack, axis=0)
    ax.imshow(img, aspect='auto', interpolation='nearest')

    if has_base:
        ax.text(-0.03, 0.75, 'CODE', fontsize=3.5, va='center', ha='right', color='#650f0f',
                transform=ax.transAxes)
        ax.text(-0.03, 0.58, 'DATA', fontsize=3.5, va='center', ha='right', color='#f28c8c',
                transform=ax.transAxes)
        ax.text(-0.03, 0.42, 'CODE', fontsize=3.5, va='center', ha='right', color='#0f3f7f',
                transform=ax.transAxes)
        ax.text(-0.03, 0.25, 'DATA', fontsize=3.5, va='center', ha='right', color='#8cbff2',
                transform=ax.transAxes)
    else:
        ax.text(-0.03, 0.25, 'CODE', fontsize=3.5, va='center', ha='right', color='#0f3f7f',
                transform=ax.transAxes)
        ax.text(-0.03, 0.12, 'DATA', fontsize=3.5, va='center', ha='right', color='#8cbff2',
                transform=ax.transAxes)

    ax.set_yticks([])
    ax.set_xticks([])
    ax.set_xlim(-0.55, n_chunks - 0.5)


def _legend_outside(fig, ax_list):
    """Place legend below the last subplot."""
    handles, labels = ax_list[0].get_legend_handles_labels()
    if handles:
        fig.legend(handles, labels, loc='lower center',
                   ncol=min(len(handles), 6), fontsize=6,
                   bbox_to_anchor=(0.5, -0.02))


def _load_flat_csv(path):
    """Read back {scope}.png.csv into (current_metrics, baseline_metrics) dicts."""
    with open(path, 'r') as f:
        reader = csv.DictReader(f)
        rows = list(reader)
    if not rows:
        return None, None
    csv_metrics = METRICS + list(OF_FILE_METRICS)
    current_metrics = {}
    baseline_metrics = {}
    has_any_base = False
    for m in csv_metrics:
        current_metrics[m] = np.zeros(N_BUCKETS, dtype=float)
        baseline_metrics[m] = np.zeros(N_BUCKETS, dtype=float)
    for row in rows:
        pct = int(row['bucket'])
        d = pct // 5 - 1
        if d < 0 or d >= N_BUCKETS:
            continue
        for m in csv_metrics:
            v = row.get(m, '')
            if v != '':
                current_metrics[m][d] = float(v)
            bv = row.get(f'{m}_baseline', '')
            if bv != '':
                baseline_metrics[m][d] = float(bv)
                has_any_base = True
    if not has_any_base:
        baseline_metrics = None
    return current_metrics, baseline_metrics


def generate_scope(scope, binaries, byte_sources=None):
    """Generate images/{scope}.png + images/csv/{scope}.png.csv.

    binaries: list of (game, binary, {metric: [N_BUCKETS]}) tuples for current
    byte_sources: optional list of (game, binary) to render a byte-map row
    """
    if not binaries:
        return
    current_metrics = _average_metrics([b[2] for b in binaries])

    # Load baseline
    baseline_metrics = None
    base_vals = []
    for game, binary, _ in binaries:
        bm = _load_binary(game, binary, layers_path)
        if bm is not None:
            base_vals.append(bm)
    if base_vals:
        baseline_metrics = _average_metrics(base_vals)

    has_base = baseline_metrics is not None

    # instruction_loss: bytes flipped from CODE in baseline to DATA in current
    cur_ins_loss = np.zeros(N_BUCKETS, dtype=float)
    total_ins_lost = 0
    if has_base:
        for game, binary, _ in binaries:
            bp = layers_path(game, binary)
            if not os.path.exists(bp):
                continue
            try:
                base_df = pl.read_parquet(bp)
                base_col = base_df['squashed'].to_numpy().astype(np.int8)
            except Exception:
                continue
            try:
                cur_df = pl.read_parquet(layers_path(game, binary))
                cur_col = cur_df['squashed'].to_numpy().astype(np.int8)
            except Exception:
                continue
            n = len(base_col)
            edges = _bucket_boundaries(n)
            for d in range(N_BUCKETS):
                start = edges[d]
                end = min(edges[d + 1], n)
                mask = (base_col[start:end] == IS_CODE) & (cur_col[start:end] == IS_DATA)
                cur_ins_loss[d] += mask.sum()
            total_ins_lost += ((base_col == IS_CODE) & (cur_col == IS_DATA)).sum()
    total_div = max(total_ins_lost, 1)
    current_metrics['instruction_loss'] = cur_ins_loss / total_div

    # Warnings
    _check_and_print_warnings(scope, current_metrics, baseline_metrics)

    # ── CSV-first: write all data to CSVs before rendering ──
    csv_path = os.path.join(images_csv_dir(), f'{scope}.png.csv')

    byte_csv_path = None
    if byte_sources is not None and len(byte_sources) > 0:
        g, b = byte_sources[0]
        df = pl.read_parquet(layers_path(g, b))
        col_name = 'emit' if 'emit' in df.columns else 'squashed'
        col = df[col_name].to_numpy().astype(np.int8)
        base_col = None
        bp = layers_path(g, b)
        if os.path.exists(bp):
            try:
                bdf = pl.read_parquet(bp)
                bcn = 'emit' if 'emit' in bdf.columns else 'squashed'
                base_col = bdf[bcn].to_numpy().astype(np.int8)
            except Exception:
                pass
        byte_csv_path = os.path.join(images_csv_dir(), f'{scope}.png.bytes.csv')
        _write_byte_csv(byte_csv_path, col, base_col, len(df))

    # Write bucket CSV
    _write_flat_csv(csv_path, scope, current_metrics, baseline_metrics)

    # Reload from CSV so all charts read the same canonical data
    current_metrics, baseline_metrics = _load_flat_csv(csv_path)
    has_base = baseline_metrics is not None

    # PNG
    plt = _ensure_matplotlib()
    if plt is None:
        return

    n_metrics = len(METRICS)
    has_byte = byte_csv_path is not None

    # Single-column vertical sparkline list
    SPARK_W = 3.5
    SPARK_H = 0.50
    n_rows = n_metrics + (1 if has_byte else 0)
    fig, axes = plt.subplots(n_rows, 1, figsize=(SPARK_W, 0.3 + n_rows * SPARK_H))
    if n_rows == 1:
        axes = [axes]

    if '_' in scope:
        app, bin = scope.split('_', 1)
        fig.text(0.02, 0.96, app, fontsize=6, ha='left', va='center',
                 color='#555555', style='italic')
        fig.text(0.5, 0.96, f'{bin}.exe', fontsize=7, ha='center', va='center', color='#555555')
    else:
        fig.text(0.5, 0.96, scope, fontsize=7, ha='center', va='center', color='#555555')
    fig.text(0.5, 0.89, 'File Position', fontsize=5, ha='center', color='#888888')

    for i, metric in enumerate(METRICS):
        ax = axes[i]
        cur = current_metrics[metric]
        base = baseline_metrics[metric] if has_base else None
        of_metric = OF_FILE_MAP.get(metric)
        cur_of = current_metrics.get(of_metric) if of_metric else None
        base_of = baseline_metrics.get(of_metric) if of_metric and has_base else None
        _plot_sparkline(ax, cur, base, has_base, metric, cur_of, base_of)
        if i == 0:
            ax.legend(fontsize=3.5, loc='upper right', handlelength=1.5,
                      handletextpad=0.3)

    if has_byte:
        _render_byte_map(axes[-1], byte_csv_path)

    plt.subplots_adjust(hspace=0.25)
    out = os.path.join(images_dir(), f'{scope}.png')
    plt.savefig(out, dpi=150, bbox_inches='tight', pad_inches=0.08)
    plt.close(fig)


def generate_layers_scope(scope, binaries):
    """Generate images_layers/{scope}.png + images_layers/csv/{scope}.png.csv

    binaries: list of (game, binary, {phase: {metric: [N_BUCKETS]}}) tuples for current
    """
    if not binaries:
        return
    # Average per-phase across binaries
    current_all = {}
    for b in binaries:
        for phase in PHASE_COLS:
            if phase in b[2]:
                current_all.setdefault(phase, []).append(b[2][phase])

    current_avg = {}
    for phase, metrics_list in current_all.items():
        current_avg[phase] = _average_metrics(metrics_list)

    # Baseline
    baseline_avg = {}
    for game, binary, _ in binaries:
        bp = _load_all_phases(game, binary, layers_path)
        if bp is not None:
            for phase in PHASE_COLS:
                if phase in bp:
                    baseline_avg.setdefault(phase, []).append(bp[phase])
    baseline_all = {}
    if baseline_avg:
        for phase, metrics_list in baseline_avg.items():
            baseline_all[phase] = _average_metrics(metrics_list)

    # Warnings on the squashed layer only
    if 'squashed' in current_avg:
        _check_and_print_warnings(
            f'{scope} (layers)', current_avg['squashed'],
            baseline_all.get('squashed') if baseline_all else None)

    # CSV
    csv_path = os.path.join(layers_images_csv_dir(), f'{scope}.png.csv')
    _write_long_csv(csv_path, scope, current_avg, baseline_all)

    # PNG
    plt = _ensure_matplotlib()
    if plt is None:
        return

    n_metrics = len(METRICS)
    cols = 2
    rows = (n_metrics + cols - 1) // cols
    fig, axes = plt.subplots(rows, cols, figsize=(cols * 4, rows * 2.5))
    axes = axes.flatten()
    fig.suptitle(f'{scope} — per-phase layers', fontsize=12, y=1.01)

    for i, metric in enumerate(METRICS):
        ax = axes[i]
        _plot_layers_subplot(ax, current_avg, baseline_all, metric)
        if i == 0:
            ax.legend(fontsize=5, loc='upper right')

    for i in range(n_metrics, len(axes)):
        axes[i].set_visible(False)

    plt.tight_layout(rect=[0, 0.06, 1, 1])
    out = os.path.join(layers_images_dir(), f'{scope}.png')
    plt.savefig(out, dpi=150, bbox_inches='tight')
    plt.close(fig)


# ── entry points ──────────────────────────────────────────────────────────────

def charts(game):
    """Generate per-module + per-game charts for one game from existing stats."""
    # Per-module charts
    for g, binary in _binary_keys(game):
        cm = _load_binary(g, binary, layers_path)
        if cm is None:
            continue
        scope = f'{g}_{binary}'
        binaries = [(g, binary, cm)]
        byte_sources = [(g, binary)]
        generate_scope(scope, binaries, byte_sources=byte_sources)

        la = _load_all_phases(g, binary, layers_path)
        if la is not None:
            l_binaries = [(g, binary, la)]
            generate_layers_scope(scope, l_binaries)

    # Game-level aggregate
    all_c = []
    all_l = []
    for g, binary in _binary_keys(game):
        cm = _load_binary(g, binary, layers_path)
        if cm is not None:
            all_c.append((g, binary, cm))
        la = _load_all_phases(g, binary, layers_path)
        if la is not None:
            all_l.append((g, binary, la))
    if all_c:
        generate_scope(game, all_c)
    if all_l:
        generate_layers_scope(game, all_l)


def charts_all():
    """Generate all.png + per-game charts for every game with stats."""
    all_c = []
    all_l = []
    for game in list_game_dirs():
        charts(game)
        for g, binary in _binary_keys(game):
            cm = _load_binary(g, binary, layers_path)
            if cm is not None:
                all_c.append((g, binary, cm))
            la = _load_all_phases(g, binary, layers_path)
            if la is not None:
                all_l.append((g, binary, la))
    if all_c:
        generate_scope('all', all_c)
    if all_l:
        generate_layers_scope('all', all_l)
