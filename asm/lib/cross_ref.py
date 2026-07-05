"""Cross-binary reference detection and label file I/O.

Detects when one binary's call/jmp targets fall within another
binary's address range (shared-segment overlays).  The source
binary's label map is then exported as JSON (Python data exchange)
and NASM ``.inc`` (assembler resolution).
"""

import json
import os

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

_FLOW_OPS = frozenset((
    'jmp', 'call', 'je', 'jne', 'jl', 'jle', 'jg', 'jge',
    'ja', 'jb', 'jae', 'jbe', 'jz', 'jnz', 'js', 'jns',
    'jo', 'jno', 'jp', 'jnp', 'jcxz', 'jecxz',
    'loop', 'loope', 'loopne',
))


def detect(project_dir, bins):
    """Detect cross-binary near call/jmp references.

    For each binary, disassembles all bytes (fast, no bitmap needed)
    and collects immediate flow targets.  A target is "cross-binary"
    when it falls outside the current binary's flat address range
    but within another binary's.

    Returns
    -------
    dict of {consumer_name: [(target_addr, source_name), ...]}
    """
    ranges = {}
    for name, (rel_path, start_offset) in bins.items():
        path = os.path.join(project_dir, rel_path)
        if not os.path.exists(path):
            continue
        with open(path, 'rb') as f:
            data = f.read()
        flat_start = 0
        flat_end = len(data) - start_offset
        ranges[name] = (flat_start, flat_end, data, start_offset)

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    binary_targets = {}
    for name, (_, _, data, start_offset) in ranges.items():
        targets = set()
        for insn in md.disasm(data[start_offset:], 0):
            if insn.mnemonic in _FLOW_OPS:
                for op in insn.operands:
                    if op.type == 2:
                        targets.add(op.imm & 0xFFFF)
        binary_targets[name] = targets

    cross_refs = {}
    for name, targets in binary_targets.items():
        _, this_end, _, _ = ranges[name]
        seen_pairs = set()
        for target in targets:
            if 0 <= target < this_end:
                continue
            for other_name, (o_start, o_end, _, _) in ranges.items():
                if other_name == name:
                    continue
                if o_start <= target < o_end:
                    pair = (target, other_name)
                    if pair not in seen_pairs:
                        cross_refs.setdefault(name, []).append(pair)
                        seen_pairs.add(pair)
                    break

    return cross_refs


def write_label_inc(label_map, path, prefix=''):
    """Write a NASM ``.inc`` file with ``equ`` definitions.

    If *prefix* is given (e.g. ``"ds"``) each name is prefixed
    (``ds_loc_f40b equ 0xf40b``) to avoid collisions when the
    file is included by another binary.
    """
    with open(path, 'w') as f:
        for addr in sorted(label_map):
            name = label_map[addr]
            if prefix:
                name = f'{prefix}_{name}'
            f.write(f'{name} equ 0x{addr:04x}\n')


def write_label_json(label_map, path):
    """Write a JSON-serialised label map (string keys for JSON)."""
    with open(path, 'w') as f:
        json.dump({str(k): v for k, v in label_map.items()}, f)


def read_label_json(path):
    """Read a JSON label map back to ``{int: str}``."""
    with open(path) as f:
        return {int(k): v for k, v in json.load(f).items()}
