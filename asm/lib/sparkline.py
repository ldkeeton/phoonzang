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

    # code_loss_density: placeholder (computed as gain in generate_scope)
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
    'code_loss_density': 0.15,
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


def _plot_image_subplot(ax, cur, base, has_base, metric, cur_of=None, base_of=None):
    """One subplot for images/.

    Baseline = solid red, current = dashed blue.
    Of-file variants rendered as very light (alpha=0.2) lines, no legend entry.
    """
    from matplotlib.ticker import PercentFormatter
    x = list(range(N_BUCKETS))
    label = METRIC_LABELS.get(metric, metric)
    def _y(v):
        """Render value at 99.9 if it's ≥100 so the line stays visible at the top edge."""
        p = v * 100
        return 99.9 if p >= 100 else p
    # Baseline (solid red)
    if has_base:
        ax.plot(x, [_y(v) for v in base], 'r-', linewidth=1.5,
                label='baseline')
    # Current (dashed blue)
    ax.plot(x, [_y(v) for v in cur], 'b--', linewidth=1.5,
            label='current')
    # Baseline of-file (solid very light red, no legend)
    if base_of is not None and has_base:
        ax.plot(x, [_y(v) for v in base_of], 'r-', linewidth=1.5, alpha=0.2)
    # Current of-file (dashed very light blue, no legend)
    if cur_of is not None:
        ax.plot(x, [_y(v) for v in cur_of], 'b--', linewidth=1.5, alpha=0.2)
    ax.set_ylabel(label, fontsize=8)
    ax.yaxis.set_major_formatter(PercentFormatter(xmax=100))
    ax.set_ylim(0, 100)
    ax.tick_params(axis='both', labelsize=7)
    ax.set_xlim(0, N_BUCKETS - 1)
    step = 2
    ax.set_xticks(range(1, N_BUCKETS, step))
    ax.set_xticklabels([f'{BUCKET_PCTS[i]}%' for i in range(1, N_BUCKETS, step)], fontsize=7)


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

    # code_loss_density: gain in data block count over baseline
    cur_dbc = current_metrics.get('_data_block_count')
    base_dbc = baseline_metrics.get('_data_block_count') if has_base else None
    if cur_dbc is not None:
        if base_dbc is not None:
            gain = np.maximum(0, cur_dbc - base_dbc)
            total_gain = max(gain.sum(), 1)
            current_metrics['code_loss_density'] = gain / total_gain
        else:
            current_metrics['code_loss_density'] = np.zeros(N_BUCKETS, dtype=float)

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
        of_metric = OF_FILE_MAP.get(metric)
        cur_of = current_metrics.get(of_metric) if of_metric else None
        base_of = baseline_metrics.get(of_metric) if of_metric and has_base else None
        _plot_image_subplot(ax, cur, base, has_base, metric, cur_of, base_of)
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
