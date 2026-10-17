"""One-page pipeline health view: where work is thrown away or repeated.

Built from the aggregated stage ledger (``flow.graph_stages``).  Everything is
per-binary averages so numbers are comparable across projects of any size.

* :func:`scorecard` -- ranked plain-English problems with a fix pattern
* :func:`survival`  -- per artifact, per producing step: keys written vs keys a
  later step overwrote (the "fat bar" -- a mostly-red bar is wasted work)
* :func:`waterfall` -- stages in execution order, width = time
* :func:`dsm`       -- stage x stage matrix of who overwrote whose keys
* :func:`metrics`   -- the numbers ``pipeline.baseline.json`` ratchets
* :func:`render_html`

The matrix is a design structure matrix (DSM): the further a mark sits from the
diagonal, the longer ago the overwritten work was done.
"""

import html
import json
import os

from flow import graph_stages
from lib.cachedirs import pipeline_baseline_path

BASELINE_PATH = pipeline_baseline_path()
#: ms/binary above which a recompute is called out.
SLOW_MS = 500
#: a step that overwrote at least this many keys per binary is red / amber.
RED_KEYS, AMBER_KEYS = 100, 10
#: ms tolerance when comparing a run against the baseline (timing is noisy).
MS_TOLERANCE = 1.25
#: stages faster than this (ms/binary) collapse into one line in the waterfall.
QUICK_MS = 50


def _bins(row):
    return max(len(row['scopes']), 1)


def _own(rows):
    """Rows of levels 1-2 (the per-binary pipeline), in execution order."""
    return [r for r in rows.values() if r['level'] in (1, 2)]


def _rewritten_by_step(rows):
    """``{(artifact, creator): {rewriter: keys/binary}}``."""
    out = {}
    for row in rows.values():
        for (artifact, creator), keys in row['rewrites'].items():
            out.setdefault((artifact, creator), {})[row['name']] = keys / _bins(row)
    return out


def survival(rows):
    """``{artifact: [{step, written, lost, by}]}`` in pipeline order."""
    lost = _rewritten_by_step(rows)
    out = {}
    for row in _own(rows):
        for artifact, io in row['io'].items():
            written = (io['added'] + io['changed']) / _bins(row)
            if not written:
                continue
            by = lost.get((artifact, row['name']), {})
            out.setdefault(artifact, []).append({
                'step': row['name'], 'written': written,
                'lost': min(sum(by.values()), written), 'by': by,
            })
    return out


def _stage_waste(rows):
    """``{stage: (written, lost)}`` summed over artifacts, per binary."""
    waste = {}
    for steps in survival(rows).values():
        for item in steps:
            w, l = waste.get(item['step'], (0, 0))
            waste[item['step']] = (w + item['written'], l + item['lost'])
    return waste


def scorecard(rows):
    """Ranked ``[{severity, score, stage, text}]`` problems."""
    found = graph_stages.findings(rows)
    items = []
    for row in rows.values():
        if row['level'] == 0:
            continue
        rewritten = {}
        for (artifact, creator), keys in row['rewrites'].items():
            rewritten[creator] = rewritten.get(creator, 0) + keys / _bins(row)
        total = sum(rewritten.values())
        if total >= AMBER_KEYS:
            top = ', '.join(f'`{c}` ({n:,.0f})' for c, n in sorted(
                rewritten.items(), key=lambda kv: -kv[1])[:3])
            more = f' and {len(rewritten) - 3} more' if len(rewritten) > 3 else ''
            fix = {
                'repair': 'Decide this where the keys are first created, so '
                          'nothing is made and then redone.',
                'recompute': 'Compute once and pass the result down.',
                'cleanup': 'Stop the earlier step creating what this removes.',
            }.get(row['kind'], 'Declare it (repairs=, why=) or move the logic '
                  'into the step that owns these keys.')
            items.append({
                'severity': 'red' if total >= RED_KEYS else 'amber',
                'score': total, 'stage': row['name'],
                'text': f'`{row["name"]}` overwrites {total:,.0f} keys per '
                        f'binary made by {len(rewritten)} earlier step(s): '
                        f'{top}{more}. {fix}'})
        ms = row['ms'] / _bins(row)
        if row['kind'] == 'recompute' and ms >= SLOW_MS and '.iter' not in row['name']:
            disagree = total
            note = (f' and the two results differ on {disagree:,.0f} keys'
                    if disagree else '')
            items.append({
                'severity': 'red' if ms >= 2000 else 'amber',
                'score': ms / 10, 'stage': row['name'],
                'text': f'`{row["name"]}` re-derives `{row["repairs"]}`: '
                        f'{ms / 1000:.1f} s per binary{note}. Reuse the earlier '
                        f'result instead of computing it again.'})
        if row['undeclared_scopes']:
            items.append({
                'severity': 'red', 'score': 1e6, 'stage': row['name'],
                'text': f'`{row["name"]}` rewrites other steps\' output without '
                        f'declaring it a repair. Declare it or fold it into the '
                        f'step it rewrites.'})
    for artifact, writers in found['multi_writer'].items():
        if len(writers) >= 4:
            items.append({
                'severity': 'amber', 'score': len(writers) * 10, 'stage': artifact,
                'text': f'`{artifact}` has {len(writers)} writers '
                        f'({" -> ".join(w.split(".", 1)[-1] for w in writers)}). '
                        f'One owner per artifact is easier to reason about.'})
    return sorted(items, key=lambda i: -i['score'])


def waterfall(rows):
    """``[{name, kind, ms, start, level, severity}]``: L2 nested into 'verify'."""
    waste = _stage_waste(rows)
    order = []
    for row in _own(rows):
        if row['level'] == 1 and row['name'] == 'verify':
            order += [r for r in rows.values() if r['level'] == 2]
        elif row['level'] == 1:
            order.append(row)
    bars, clock = [], 0.0
    phases = {'classify phases': 0.0, 'classify re-runs': 0.0}
    for row in order:
        ms = row['ms'] / _bins(row)
        if row['name'].startswith('phase.'):
            phases['classify re-runs' if '.iter' in row['name'] else
                   'classify phases'] += ms
            continue
        written, lost = waste.get(row['name'], (0, 0))
        severity = _severity(row, written, lost, ms)
        bars.append({'name': row['name'], 'kind': row['kind'], 'ms': ms,
                     'level': row['level'], 'severity': severity})
    front = [{'name': name, 'kind': 'recompute' if 're-runs' in name else 'produce',
              'ms': ms, 'level': 1, 'severity': 'green'}
             for name, ms in phases.items() if ms]
    bars = front + bars
    for bar in bars:
        bar['start'] = clock
        clock += bar['ms']
    return bars


def _severity(row, written, lost, ms):
    if row['undeclared_scopes']:
        return 'red'
    if (written and lost / written >= 0.5 and lost >= AMBER_KEYS) or (
            row['kind'] == 'recompute' and ms >= SLOW_MS):
        return 'red'
    if row['kind'] in ('repair', 'recompute', 'cleanup') or lost >= AMBER_KEYS:
        return 'amber'
    return 'green'


def dsm(rows):
    """``(stages, {(creator, rewriter): keys/binary})`` over involved stages."""
    cells = {}
    for row in rows.values():
        for (artifact, creator), keys in row['rewrites'].items():
            key = (creator, row['name'])
            cells[key] = cells.get(key, 0) + keys / _bins(row)
    involved = {n for pair in cells for n in pair}
    stages = [r['name'] for r in _own(rows) if r['name'] in involved]
    return stages, cells


def metrics(rows):
    """The numbers ``pipeline.baseline.json`` ratchets (per-binary averages)."""
    wasted = sum(sum(keys.values()) for keys in _rewritten_by_step(rows).values())
    recompute_ms = sum(r['ms'] / _bins(r) for r in _own(rows)
                       if r['kind'] == 'recompute' and '.iter' not in r['name'])
    found = graph_stages.findings(rows)
    return {
        'wasted_keys': round(wasted),
        'recompute_ms': round(recompute_ms),
        'undeclared': len(found['undeclared']),
        'writers': {a: len(w) for a, w in found['multi_writer'].items()},
    }


def read_baseline(path=BASELINE_PATH):
    if not os.path.exists(path):
        return None
    with open(path) as f:
        return json.load(f)


def write_baseline(rows, path=BASELINE_PATH):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        json.dump(metrics(rows), f, indent=1, sort_keys=True)
        f.write('\n')


def compare_baseline(rows, baseline):
    """Human-readable regressions of *rows* against *baseline* (empty = ok)."""
    now, bad = metrics(rows), []
    if now['wasted_keys'] > baseline['wasted_keys']:
        bad.append(f'wasted keys/binary rose {baseline["wasted_keys"]} -> '
                   f'{now["wasted_keys"]}')
    if now['recompute_ms'] > baseline['recompute_ms'] * MS_TOLERANCE:
        bad.append(f'recompute time/binary rose {baseline["recompute_ms"]} -> '
                   f'{now["recompute_ms"]} ms')
    if now['undeclared'] > baseline['undeclared']:
        bad.append('undeclared rewrites rose')
    for artifact, count in now['writers'].items():
        if count > baseline['writers'].get(artifact, count):
            bad.append(f'{artifact} writers rose {baseline["writers"][artifact]}'
                       f' -> {count}')
    return bad


# ───────────────────────────── HTML ─────────────────────────────

_CSS = """
:root{--bg:#fff;--fg:#1c1f23;--mute:#6b7280;--line:#e5e7eb;--card:#f8f9fb;
--green:#2f9e63;--amber:#e08a1e;--red:#d4372c;--blue:#4c78a8}
@media (prefers-color-scheme:dark){:root:not([data-theme=light]){--bg:#14161a;
--fg:#e6e8eb;--mute:#9aa3ad;--line:#2a2e35;--card:#1b1e23;--green:#49c585;
--amber:#f0a443;--red:#ff6b5e;--blue:#78a6d6}}
*{box-sizing:border-box}body{margin:0;background:var(--bg);color:var(--fg);
font:15px/1.5 system-ui,sans-serif}main{max-width:1100px;margin:0 auto;padding:24px 16px 64px}
h1{font-size:22px;margin:0 0 4px}h2{font-size:17px;margin:36px 0 4px}
p.sub{color:var(--mute);margin:0 0 12px}code{font:13px ui-monospace,monospace}
.score{display:grid;gap:8px}.item{display:flex;gap:10px;padding:10px 12px;
background:var(--card);border:1px solid var(--line);border-radius:8px}
.dot{flex:none;width:10px;height:10px;border-radius:50%;margin-top:7px}
.red{background:var(--red)}.amber{background:var(--amber)}.green{background:var(--green)}
.row{display:grid;grid-template-columns:200px 1fr;gap:10px;align-items:center;margin:6px 0}
.row .n{font-size:13px;overflow-wrap:anywhere}
.bar{display:flex;height:26px;gap:2px}.seg{position:relative;min-width:2px;
background:var(--blue);border-radius:3px;overflow:hidden}
.seg .lost{position:absolute;inset:0 0 0 auto;
background:repeating-linear-gradient(45deg,var(--red),var(--red) 3px,transparent 3px,transparent 6px)}
.seg span{position:absolute;left:4px;top:3px;font-size:11px;color:#fff;white-space:nowrap}
.wf{position:relative;height:22px;border-bottom:1px solid var(--line)}
.wf i{position:absolute;top:3px;height:16px;border-radius:3px;min-width:2px}
.wf b{position:absolute;top:2px;font:12px ui-monospace,monospace;color:var(--mute);white-space:nowrap}
table.dsm{border-collapse:collapse;font-size:12px}table.dsm td,table.dsm th{
border:1px solid var(--line);padding:3px 6px;text-align:center}
table.dsm th.r{text-align:right;font-weight:400}th.c{writing-mode:vertical-rl;
transform:rotate(180deg);font-weight:400;vertical-align:bottom;white-space:nowrap}
td.far{outline:2px solid var(--red);outline-offset:-2px}td.dg{background:var(--card)}
details{border:1px solid var(--line);border-radius:8px;margin:6px 0;padding:6px 12px}
summary{cursor:pointer}table.d{width:100%;border-collapse:collapse;font-size:13px}
table.d td,table.d th{border-top:1px solid var(--line);padding:4px 6px;text-align:left;
vertical-align:top}.key{color:var(--mute);font-size:13px}
.key i{display:inline-block;width:12px;height:12px;border-radius:3px;margin:0 4px 0 12px;vertical-align:-2px}
.scroll{overflow-x:auto}
@media(max-width:640px){.row{grid-template-columns:1fr}}
"""


def _e(text):
    return html.escape(str(text))


def _md(text):
    """Backtick spans -> <code>."""
    parts = html.escape(text).split('`')
    return ''.join(f'<code>{p}</code>' if i % 2 else p for i, p in enumerate(parts))


def _score_html(items):
    if not items:
        return '<p class="sub">Nothing flagged.</p>'
    out = ['<div class="score">']
    for item in items[:8]:
        out.append(f'<div class="item"><span class="dot {item["severity"]}"></span>'
                   f'<div>{_md(item["text"])}</div></div>')
    out.append('</div>')
    if len(items) > 8:
        out.append(f'<p class="sub">+ {len(items) - 8} smaller items in the details below.</p>')
    return ''.join(out)


def _survival_html(surv):
    out = []
    for artifact, steps in surv.items():
        total = sum(s['written'] for s in steps) or 1
        lost = sum(s['lost'] for s in steps)
        segs = []
        for s in steps:
            pct = s['written'] / total * 100
            share = s['lost'] / s['written'] * 100 if s['written'] else 0
            by = ', '.join(f'{k} {v:,.0f}' for k, v in s['by'].items())
            tip = (f'{s["step"]}: wrote {s["written"]:,.0f} keys/binary, '
                   f'{s["lost"]:,.0f} overwritten later' + (f' by {by}' if by else ''))
            label = s['step'].split('.', 1)[-1] if pct > 9 else ''
            segs.append(
                f'<div class="seg" style="width:{pct:.2f}%" title="{_e(tip)}">'
                f'<div class="lost" style="width:{share:.1f}%"></div>'
                f'<span>{_e(label)}</span></div>')
        out.append(f'<div class="row"><div class="n"><b>{_e(artifact)}</b><br>'
                   f'<span class="key">{total:,.0f} written, {lost:,.0f} overwritten'
                   f'</span></div><div class="bar">{"".join(segs)}</div></div>')
    return ''.join(out)


def _waterfall_html(bars):
    """Slow or red stages get a row; the quick rest are summed into one."""
    total = sum(b['ms'] for b in bars) or 1
    shown = [b for b in bars if b['ms'] >= QUICK_MS or b['severity'] == 'red']
    quick = [b for b in bars if b not in shown]
    out = []
    for bar in shown:
        left = bar['start'] / total * 100
        width = max(bar['ms'] / total * 100, 0.4)
        color = f'var(--{bar["severity"]})'
        text = f'{bar["ms"] / 1000:.2f} s'
        if left + width > 80:       # no room on the right: label left of the bar
            label = f'<b style="right:{100 - left + 0.5:.2f}%">{text}</b>'
        else:
            label = f'<b style="left:{left + width + 0.5:.2f}%">{text}</b>'
        indent = ' &nbsp;&nbsp;' if bar['level'] == 2 else ''
        out.append(
            f'<div class="row"><div class="n">{indent}{_e(bar["name"])}'
            f'<span class="key"> {bar["kind"]}</span></div>'
            f'<div class="wf"><i style="left:{left:.2f}%;width:{width:.2f}%;'
            f'background:{color}" title="{bar["ms"]:,.0f} ms"></i>{label}</div></div>')
    if quick:
        names = ', '.join(b['name'] for b in quick)
        out.append(f'<p class="sub" title="{_e(names)}">+ {len(quick)} quick stages '
                   f'({sum(b["ms"] for b in quick) / 1000:.2f} s together; hover for '
                   f'names, all are in the details below)</p>')
    return ''.join(out)


def _dsm_html(stages, cells):
    if not stages:
        return '<p class="sub">No stage overwrote another stage\'s output.</p>'
    peak = max(cells.values()) or 1
    out = ['<div class="scroll"><table class="dsm"><tr><th></th>']
    out += [f'<th class="c">{_e(s)}</th>' for s in stages]
    out.append('</tr>')
    for r, creator in enumerate(stages):
        out.append(f'<tr><th class="r">{_e(creator)}</th>')
        for c, rewriter in enumerate(stages):
            keys = cells.get((creator, rewriter), 0)
            if r == c:
                out.append('<td class="dg"></td>')
            elif not keys:
                out.append('<td></td>')
            else:
                alpha = 0.15 + 0.85 * (keys / peak) ** 0.5
                far = ' far' if abs(c - r) >= 5 else ''
                tip = f'{rewriter} overwrote {keys:,.0f} keys made by {creator}'
                out.append(f'<td class="{far.strip()}" title="{_e(tip)}" '
                           f'style="background:rgba(212,55,44,{alpha:.2f})">'
                           f'{keys:,.0f}</td>')
        out.append('</tr>')
    out.append('</table></div>')
    return ''.join(out)


def _details_html(rows):
    out = []
    for level, level_rows in graph_stages.by_level(rows).items():
        body = []
        for row in level_rows:
            body.append(
                f'<tr><td><code>{_e(row["name"])}</code></td><td>{row["kind"]}</td>'
                f'<td>{_e(row["repairs"] or "")}</td>'
                f'<td>{graph_stages._churn(row)}</td>'
                f'<td>{graph_stages._rewrote(row)}</td>'
                f'<td>{_e(row["why"] or "")}</td></tr>')
        out.append(
            f'<details><summary>L{level} {graph_stages.LEVEL_TITLES[level]} - '
            f'{len(level_rows)} stages</summary><table class="d"><tr><th>stage</th>'
            f'<th>kind</th><th>repairs</th><th>churn</th><th>rewrote</th>'
            f'<th>why</th></tr>{"".join(body)}</table></details>')
    return ''.join(out)


def render_html(project, rows):
    m = metrics(rows)
    stages, cells = dsm(rows)
    surv = survival(rows)
    body = f"""
<h1>{_e(project)} pipeline health</h1>
<p class="sub">{len(rows)} stages. Per-binary averages. Per binary,
{m['wasted_keys']:,} keys are overwritten after being written, and
{m['recompute_ms'] / 1000:.1f} s goes on recomputing earlier results.</p>

<h2>What to fix first</h2>
<p class="sub">Ranked by wasted work. Each line says which step and what to do.</p>
{_score_html(scorecard(rows))}

<h2>Work that survived vs work thrown away</h2>
<p class="sub">One bar per artifact, one segment per step that wrote it (width = keys
written). The <span style="color:var(--red)">red hatching</span> is the part a later
step overwrote. A mostly-hatched segment is wasted work; hover for who overwrote it.</p>
{_survival_html(surv)}

<h2>Where the time goes</h2>
<p class="sub">Stages in run order; bar position and width are time.
<span class="key"><i class="green"></i>ok<i class="amber"></i>repair or recompute
<i class="red"></i>wasteful or slow</span></p>
{_waterfall_html(waterfall(rows))}

<h2>Who overwrites whom</h2>
<p class="sub">Row = step that made the keys, column = step that overwrote them.
Darker = more keys. A red outline marks work undone five or more steps later.</p>
{_dsm_html(stages, cells)}

<h2>Every stage</h2>
{_details_html(rows)}
"""
    return ('<!doctype html><html lang="en"><head><meta charset="utf-8">'
            '<meta name="viewport" content="width=device-width,initial-scale=1">'
            f'<title>{_e(project)} Pipeline Health</title><style>{_CSS}</style></head>'
            f'<body><main>{body}</main></body></html>')


def write_html(project):
    """Write ``<project>_health.html``; return its path or None."""
    ledgers = graph_stages.load(project)
    if not ledgers:
        return None
    rows = graph_stages.aggregate(ledgers)
    out_dir = os.path.join(graph_stages.BUILD_OUT, 'stages')
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, f'{project}_health.html')
    with open(path, 'w', encoding='utf-8') as f:
        f.write(render_html(project, rows))
    return path
