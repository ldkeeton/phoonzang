"""Pipeline execution flow graphs from stats/detailed/*.jsonl traces.

The JSONL trace records the disassembler pipeline's own execution events:
phase names, iterations, seeds loaded, worklist processing, block
discovery, arbiter results.  This module renders those as a Mermaid
flowchart showing how the pipeline itself executed.
"""

import json
import os
from collections import defaultdict, Counter

from flow.base import (
    MermaidBuilder, BUILD_OUT, format_offset, safe_id,
    find_detailed_jsonl, ASM_DIR,
)


def _load_jsonl(jsonl_path):
    traces = []
    with open(jsonl_path) as f:
        for line in f:
            try:
                traces.append(json.loads(line))
            except json.JSONDecodeError:
                continue
    return traces


def _summary(traces):
    phases = defaultdict(list)
    iters = set()
    event_types = Counter()
    phase_events = defaultdict(Counter)

    for ev in traces:
        phase = ev.get('phase', '?')
        event = ev.get('event', '?')
        it = ev.get('iter', 0)
        phases[phase].append(ev)
        iters.add(it)
        event_types[event] += 1
        phase_events[phase][event] += 1

    return {
        'total_events': len(traces),
        'phases': dict(phases),
        'iterations': sorted(iters),
        'event_types': dict(event_types),
        'phase_events': {p: dict(c) for p, c in phase_events.items()},
    }


PHASE_ORDER = [
    'seed', 'sidecar', 'pattern_seed', 'carve', 'trampoline',
    'error_handler', 'recursive', 'prune_dead', 'prune_dead_before',
    'prune_zero', 'settle', 'force_code', 'arbiter',
]


def generate_trace_flow(jsonl_path, binary_name, out_dir):
    traces = _load_jsonl(jsonl_path)
    if not traces:
        m = MermaidBuilder(title=f'{binary_name} — empty trace')
        path = os.path.join(out_dir, f'{binary_name}.mmd')
        os.makedirs(out_dir, exist_ok=True)
        with open(path, 'w') as f:
            f.write(m.render())
        return path

    info = _summary(traces)
    m = MermaidBuilder(title=f'{binary_name} — pipeline trace ({info["total_events"]} events)')

    # Stats line
    m.lines.append(f'  %% iterations: {info["iterations"]}')
    m.lines.append(f'  %% events: {info["total_events"]}')
    m.lines.append(f'  %% phases: {len(info["phases"])}')

    # Phase order from the data (in order first seen)
    seen_phases = []
    for ev in traces:
        p = ev.get('phase', '?')
        if p not in seen_phases:
            seen_phases.append(p)

    phase_map = {}
    for phase in seen_phases:
        events = info['phases'][phase]
        ev_counts = info['phase_events'].get(phase, {})
        total = len(events)
        first_ts = events[0].get('ts', 0)
        last_ts = events[-1].get('ts', 0)

        display = f'{phase}\\n{total} events\\n{first_ts:.1f}s–{last_ts:.1f}s'
        pkey = f'phase_{safe_id(phase)}'
        phase_map[phase] = pkey
        m.node(pkey, display, 'subroutine')

        # Event breakdown inside phase
        if len(ev_counts) > 1:
            m.subgraph_start(f'{pkey}_detail', phase)
            for ev_type, count in sorted(ev_counts.items()):
                ek = f'{pkey}_{safe_id(ev_type)}'
                m.node(ek, f'{ev_type}: {count}', 'box')
            m.subgraph_end()

    # Connect phases in order
    for i in range(len(seen_phases) - 1):
        src = phase_map.get(seen_phases[i])
        dst = phase_map.get(seen_phases[i + 1])
        if src and dst:
            m.edge(src, dst, '', 'solid')

    # Show iteration info
    if len(info['iterations']) > 1:
        m.lines.append('')
        for it in info['iterations']:
            m.node(f'iter_{it}', f'Iteration {it}', 'hex')

    path = os.path.join(out_dir, f'{binary_name}.mmd')
    os.makedirs(out_dir, exist_ok=True)
    text = m.render()
    with open(path, 'w') as f:
        f.write(text)
    print(f'  wrote {path}')
    return path


def generate_trace_per_phase_cfgs(jsonl_path, binary_name, out_dir):
    traces = _load_jsonl(jsonl_path)
    if not traces:
        return []

    info = _summary(traces)
    written = []

    for phase in info['phases']:
        events = info['phases'][phase]
        ev_counts = info['phase_events'].get(phase, {})

        m = MermaidBuilder(title=f'{phase} ({binary_name})')

        ev_keys = {}
        for i, ev in enumerate(events):
            event = ev.get('event', '?')
            ts = ev.get('ts', 0)
            it = ev.get('iter', 0)
            addr = ev.get('addr')

            label = f'{event}'
            if addr is not None:
                label += f'\\n{format_offset(addr)}'
            label += f'\\n{ts:.3f}s'
            if it > 0:
                label += f' iter{it}'

            ek = f'e{i}'
            shape = 'box'
            if event in ('phase_done', 'seeds_loaded'):
                shape = 'subroutine'
            elif event == 'chunk_result':
                shape = 'hex'

            ev_keys[i] = m.node(ek, label, shape)

        for i in range(len(events) - 1):
            src = ev_keys.get(i)
            dst = ev_keys.get(i + 1)
            if src and dst:
                m.edge(src, dst, '', 'dotted')

        phase_dir = os.path.join(out_dir, 'phases')
        os.makedirs(phase_dir, exist_ok=True)
        path = os.path.join(phase_dir, f'{safe_id(phase)}.mmd')
        with open(path, 'w') as f:
            f.write(m.render())
        written.append(path)

    if written:
        print(f'  wrote {len(written)} per-phase trace flows to {os.path.join(out_dir, "phases")}')
    return written
