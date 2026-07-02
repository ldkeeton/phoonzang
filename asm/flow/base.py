"""Shared utilities for flow graph generation."""

import json
import os
import re
import sys

ASM_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT_ROOT = os.path.dirname(ASM_DIR)
APPS_DIR = os.path.join(PROJECT_ROOT, 'apps')
STATS_DIR = os.path.join(ASM_DIR, 'stats')
DETAILED_DIR = os.path.join(STATS_DIR, 'detailed')
FLOW_DIR = os.path.dirname(os.path.abspath(__file__))
BUILD_OUT = os.path.join(FLOW_DIR, 'build_out')


def discover_binaries(project):
    project_dir = os.path.join(APPS_DIR, project)
    bins = {}
    if not os.path.isdir(project_dir):
        return bins
    for entry in os.listdir(project_dir):
        lower = entry.lower()
        if lower.endswith('.ovr'):
            bins[lower[:-4]] = (entry, 8)
        elif lower.endswith('.drv'):
            bins[lower[:-4]] = (entry, 0)
        elif lower.endswith('.exe'):
            path = os.path.join(project_dir, entry)
            with open(path, 'rb') as f:
                sig = f.read(2)
            if sig != b'MZ':
                continue
            bins[lower[:-4]] = (entry, 0x200)
    return bins


def get_projects():
    if not os.path.isdir(APPS_DIR):
        return []
    return sorted([
        d for d in os.listdir(APPS_DIR)
        if os.path.isdir(os.path.join(APPS_DIR, d))
    ])


def load_binary(project, binary_name, start_offset):
    project_dir = os.path.join(APPS_DIR, project)
    for entry in os.listdir(project_dir):
        lower = entry.lower()
        base = lower.replace('.exe', '').replace('.ovr', '').replace('.drv', '')
        if base == binary_name.lower():
            path = os.path.join(project_dir, entry)
            with open(path, 'rb') as f:
                return f.read()
    return None


def find_detailed_jsonl(project, binary_name):
    path = os.path.join(DETAILED_DIR, f'{project}_{binary_name}.jsonl')
    if os.path.exists(path):
        return path
    return None


def find_json_report(project, binary_name):
    path = os.path.join(STATS_DIR, project, f'{project}_{binary_name}.json')
    if os.path.exists(path):
        return path
    return None


def find_asm_file(project, binary_name):
    asm_dir = os.path.join(PROJECT_ROOT, f'asm_{project}')
    path = os.path.join(asm_dir, f'{binary_name}.asm')
    if os.path.exists(path):
        return path
    return None


def load_jsonl_blocks(jsonl_path):
    blocks = []
    if not os.path.exists(jsonl_path):
        return blocks
    with open(jsonl_path) as f:
        for line in f:
            try:
                ev = json.loads(line)
            except json.JSONDecodeError:
                continue
            if ev.get('event') == 'block_created':
                blocks.append({
                    'addr': ev.get('addr'),
                    'end': ev.get('end'),
                    'exit_type': ev.get('exit_type'),
                    'exit_targets': ev.get('exit_targets', []),
                    'provenance': ev.get('provenance'),
                    'confidence': ev.get('confidence'),
                    'iter': ev.get('iter', 0),
                })
            elif ev.get('event') == 'seeds_loaded':
                pass
        return blocks


def safe_id(name):
    safe = re.sub(r'[^a-zA-Z0-9_]', '_', str(name))
    if safe and safe[0].isdigit():
        safe = 'n' + safe
    if not safe:
        safe = 'n0'
    return safe


def format_offset(off):
    if off is None:
        return ''
    return f'0x{off:04x}'


def parse_asm_labels(asm_path):
    """Parse .asm file to extract {offset: label_name} from label definitions."""
    label_map = {}
    if not asm_path or not os.path.exists(asm_path):
        return label_map
    label_re = re.compile(r'^([a-zA-Z_][a-zA-Z_0-9]*):\s*$')
    with open(asm_path) as f:
        for line in f:
            m = label_re.match(line)
            if m:
                label = m.group(1)
                parts = label.split('_')
                for part in parts:
                    try:
                        if len(part) == 4:
                            off = int(part, 16)
                            if off not in label_map:
                                label_map[off] = label
                    except ValueError:
                        continue
    return label_map


def build_output_dirs():
    for sub in ('static', 'detailed'):
        os.makedirs(os.path.join(BUILD_OUT, sub), exist_ok=True)


class MermaidBuilder:
    def __init__(self, title='', direction='TD'):
        self.lines = [f'flowchart {direction}', f'  %% {title}']
        self.node_ids = {}

    def _nid(self, key):
        if key not in self.node_ids:
            self.node_ids[key] = safe_id(key)
        return self.node_ids[key]

    def node(self, key, label, shape='box'):
        nid = self._nid(key)
        shapes = {
            'box': f'["{label}"]',
            'round': f'(["{label}"])',
            'stadium': f'(["{label}"])',
            'subroutine': f'[["{label}"]]',
            'hex': f'{{"{label}"}}',
            'diamond': f'{{"{label}"}}',
            'circle': f'(("{label}"))',
            'terminator': f'(["{label}"])',
        }
        s = shapes.get(shape, f'["{label}"]')
        self.lines.append(f'  {nid}{s}')
        return nid

    def edge(self, src, dst, label=None, style='solid'):
        if src not in self.node_ids:
            self.node(src, str(src), 'box')
        if dst not in self.node_ids:
            self.node(dst, str(dst), 'box')
        src_id = self.node_ids[src]
        dst_id = self.node_ids[dst]
        arrows = {'solid': '-->', 'dotted': '-.->', 'thick': '==>'}
        arrow = arrows.get(style, '-->')
        if label:
            self.lines.append(f'  {src_id} {arrow}|{label}| {dst_id}')
        else:
            self.lines.append(f'  {src_id} {arrow} {dst_id}')

    def subgraph_start(self, key, title):
        self.lines.append(f'  subgraph {safe_id(key)}["{title}"]')

    def subgraph_end(self):
        self.lines.append('  end')

    def render(self):
        return '\n'.join(self.lines) + '\n'
