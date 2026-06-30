"""File-position decile charts — final classification + per-phase layers."""

import csv
import os
import warnings

import numpy as np
import polars as pl

from lib.model import IS_CODE, IS_DATA, IS_UNKNOWN
from lib.report import (
    STATS_DIR, BASELINE_DIR,
    layers_path, baseline_layers_path, list_game_dirs,
    images_dir, images_csv_dir,
    layers_images_dir, layers_images_csv_dir,
)

N_BUCKETS = 20
BUCKET_PCTS = [(i + 1) * 5 for i in range(N_BUCKETS)]  # 5, 10, ..., 100
CODE_FRAGMENT_MAX = 12
PHASE_COLS = [
    'seed', 'sidecar', 'carve_1', 'trampoline', 'error_handler',
    'recursive', 'prune_dead', 'prune_zero', 'carve_2',
    'settled', 'force_code', 'squashed',
]
METRICS = ['code_pct', 'data_pct', 'unknown_pct',
           'label_density', 'data_block_density', 'code_loss_density']
METRIC_LABELS = {
    'code_pct': 'Code %',
    'data_pct': 'Data %',
    'unknown_pct': 'Unknown %',
    'label_density': 'Label density',
    'data_block_density': 'Data block density',
    'code_loss_density': 'Code loss density',
}
PHASE_COLORS = [
    '#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd',
    '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf',
    '#aec7e8', '#ffbb78',
]


# ── bucket helpers ─────────────────────────────────────────────────────────────

def _bucket_boundaries(n):
    return [int(n * i // N_BUCKETS) for i in range(N_BUCKETS + 1)]


def _bucket_metrics_for_column(col, n):
    """Return dict of 6 per-bucket metric arrays for a single classification column.

    col: numpy array of ints (0=unknown, 1=code, 2=data)
    n: total byte count of the binary
    """
    edges = _bucket_boundaries(n)
    result = {}
    for m in METRICS:
        result[m] = np.zeros(N_BUCKETS, dtype=float)

    for d in range(N_BUCKETS):
        start = edges[d]
        end = min(edges[d + 1], n)
        chunk = col[start:end]
        sz = len(chunk)
        result['code_pct'][d] = (chunk == IS_CODE).sum() / max(sz, 1)
        result['data_pct'][d] = (chunk == IS_DATA).sum() / max(sz, 1)
        result['unknown_pct'][d] = (chunk == IS_UNKNOWN).sum() / max(sz, 1)

    # label_density: transitions from !=CODE to ==CODE
    code_starts = np.where((col[1:] == IS_CODE) & (col[:-1] != IS_CODE))[0] + 1
    n_cs = len(code_starts)
    if n_cs > 0:
        for d in range(N_BUCKETS):
            start = edges[d]
            end = min(edges[d + 1], n)
            result['label_density'][d] = ((code_starts >= start) & (code_starts < end)).sum() / n_cs

    # data_block_density: transitions from !=DATA to ==DATA
    data_starts = np.where((col[1:] == IS_DATA) & (col[:-1] != IS_DATA))[0] + 1
    n_ds = len(data_starts)
    if n_ds > 0:
        for d in range(N_BUCKETS):
            start = edges[d]
            end = min(edges[d + 1], n)
            result['data_block_density'][d] = ((data_starts >= start) & (data_starts < end)).sum() / n_ds

    # code_loss_density: small contiguous DATA runs (<=12 bytes)
    data_mask = (col == IS_DATA).astype(np.int8)
    padded = np.concatenate([[0], data_mask, [0]])
    diff = np.diff(padded)
    run_starts = np.where(diff == 1)[0]
    run_ends = np.where(diff == -1)[0]
    run_lens = run_ends - run_starts
    small_mask = run_lens <= CODE_FRAGMENT_MAX
    total_small = small_mask.sum()
    if total_small > 0:
        small_starts = run_starts[small_mask]
        for d in range(N_BUCKETS):
            start = edges[d]
            end = min(edges[d + 1], n)
            result['code_loss_density'][d] = ((small_starts >= start) & (small_starts < end)).sum() / total_small

    # Zero out anything that's 0/0
    for m in METRICS:
        result[m] = np.nan_to_num(result[m], nan=0.0)

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
    return _bucket_metrics_for_column(col, n)


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
    with open(path, 'w', newline='') as f:
        cols = ['bucket']
        for m in METRICS:
            cols.append(m)
            cols.append(f'{m}_baseline')
            cols.append(f'{m}_delta')
        w = csv.writer(f)
        w.writerow(cols)
        for d in range(N_BUCKETS):
            row = [BUCKET_PCTS[d]]
            for m in METRICS:
                cur = float(current_metrics[m][d]) if current_metrics else 0
                base = float(baseline_metrics[m][d]) if baseline_metrics else ''
                delta = cur - base if isinstance(base, (int, float)) else ''
                row.extend([cur, base, delta])
            w.writerow(row)


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
    'label_density': 0.15,
    'data_block_density': 0.15,
    'code_loss_density': 0.15,
}


def _override_thresholds():
    env = os.environ.get('STATS_WARN_THRESHOLD', '')
    if env:
        try:
            val = float(env)
            return {m: val for m in METRICS}
        except ValueError:
            pass
    return dict(WARN_THRESHOLDS)


def _check_and_print_warnings(scope, current, baseline):
    if baseline is None:
        return
    thresholds = _override_thresholds()
    for m in METRICS:
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


def _plot_image_subplot(ax, cur, base, has_base, metric):
    """One subplot for images/ — red solid vs blue dashed baseline."""
    from matplotlib.ticker import PercentFormatter
    x = list(range(N_BUCKETS))
    label = METRIC_LABELS.get(metric, metric)
    ax.plot(x, [v * 100 for v in cur], 'r-', linewidth=1.5,
            label=f'{label} (current)')
    if has_base:
        ax.plot(x, [v * 100 for v in base], 'b--', linewidth=1.2,
                label=f'{label} (baseline)', alpha=0.7)
    ax.set_ylabel(label, fontsize=8)
    ax.yaxis.set_major_formatter(PercentFormatter(xmax=100))
    ax.set_ylim(bottom=0)
    ax.tick_params(axis='both', labelsize=6)
    ax.set_xticks(range(N_BUCKETS))
    ax.set_xticklabels([f'{p}%' for p in BUCKET_PCTS], rotation=45, ha='right', fontsize=5)


def _plot_layers_subplot(ax, all_phases, baseline_all_phases, metric):
    """One subplot for images_layers/ — 12 colored phase lines."""
    from matplotlib.ticker import PercentFormatter
    label = METRIC_LABELS.get(metric, metric)
    x = list(range(N_BUCKETS))
    has_base = baseline_all_phases is not None
    for i, phase in enumerate(PHASE_COLS):
        if phase not in all_phases:
            continue
        cur = all_phases[phase][metric]
        color = PHASE_COLORS[i % len(PHASE_COLORS)]
        ax.plot(x, [v * 100 for v in cur], color=color, linewidth=1.2, label=phase)
        if has_base and phase in baseline_all_phases:
            base = baseline_all_phases[phase][metric]
            ax.plot(x, [v * 100 for v in base], color=color, linewidth=0.8,
                    linestyle='--', alpha=0.4)
    ax.set_ylabel(label, fontsize=8)
    ax.yaxis.set_major_formatter(PercentFormatter(xmax=100))
    ax.set_ylim(bottom=0)
    ax.tick_params(axis='both', labelsize=6)
    ax.set_xticks(range(N_BUCKETS))
    ax.set_xticklabels([f'{p}%' for p in BUCKET_PCTS], rotation=45, ha='right', fontsize=5)


def _legend_outside(fig, ax_list):
    """Place legend below the last subplot."""
    handles, labels = ax_list[0].get_legend_handles_labels()
    if handles:
        fig.legend(handles, labels, loc='lower center',
                   ncol=min(len(handles), 6), fontsize=6,
                   bbox_to_anchor=(0.5, -0.02))


def generate_scope(scope, binaries):
    """Generate images/{scope}.png + images/csv/{scope}.png.csv.

    binaries: list of (game, binary, {metric: [N_BUCKETS]}) tuples for current
    """
    if not binaries:
        return
    current_metrics = _average_metrics([b[2] for b in binaries])

    # Load baseline
    baseline_metrics = None
    base_vals = []
    for game, binary, _ in binaries:
        bm = _load_binary(game, binary, baseline_layers_path)
        if bm is not None:
            base_vals.append(bm)
    if base_vals:
        baseline_metrics = _average_metrics(base_vals)

    has_base = baseline_metrics is not None

    # Warnings
    _check_and_print_warnings(scope, current_metrics, baseline_metrics)

    # CSV
    csv_path = os.path.join(images_csv_dir(), f'{scope}.png.csv')
    _write_flat_csv(csv_path, scope, current_metrics, baseline_metrics)

    # PNG
    plt = _ensure_matplotlib()
    if plt is None:
        return

    n_metrics = len(METRICS)
    cols = 2
    rows = (n_metrics + cols - 1) // cols
    fig, axes = plt.subplots(rows, cols, figsize=(cols * 4, rows * 2.5))
    axes = axes.flatten()
    fig.suptitle(scope, fontsize=12, y=1.01)

    for i, metric in enumerate(METRICS):
        ax = axes[i]
        cur = current_metrics[metric]
        base = baseline_metrics[metric] if has_base else None
        _plot_image_subplot(ax, cur, base, has_base, metric)
        if i == 0:
            ax.legend(fontsize=6, loc='upper right')

    for i in range(n_metrics, len(axes)):
        axes[i].set_visible(False)

    plt.tight_layout()
    out = os.path.join(images_dir(), f'{scope}.png')
    plt.savefig(out, dpi=150, bbox_inches='tight')
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
        bp = _load_all_phases(game, binary, baseline_layers_path)
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
        generate_scope(scope, binaries)

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
