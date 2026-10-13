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


def overlay_host_aliases(foreign_label_map, segments, instructions,
                         start_offset, file_size, prefix=None):
    """Rebuild a consumer's foreign-label map from real recovered flow targets.

    Overlay near call/jmp targets are computed by the disassembler in the
    overlay's *file-offset* space, but they resolve to host functions.  For each
    recovered out-of-range flow target, translate it to the host file offset
    (``SegmentModel.host_code_offset``) and reuse the host label's name.

    The returned map is keyed by the *overlay-space* target so the emitted
    ``equ`` keeps the original value and the encoding round-trips byte-exactly.
    A target whose translated host offset has no label falls back to a generic
    ``<prefix>dispatch_<target>`` alias.  Non-overlay models are returned
    unchanged.
    """
    if not foreign_label_map or segments is None or segments.kind != 'overlay':
        return foreign_label_map
    host = getattr(segments, 'host', None)
    if host is None:
        return foreign_label_map

    aliases = {}
    for insn in instructions:
        if insn.mnemonic not in _FLOW_OPS:
            continue
        for op in insn.operands:
            if op.type != 2:  # CS_OP_IMM
                continue
            target = op.imm & 0xFFFF
            if start_offset <= target < file_size:
                continue  # internal branch, resolved by the local label map
            host_off = segments.host_code_offset(target)
            if host_off is None or not (0 <= host_off < host.file_size):
                continue
            name = foreign_label_map.get(host_off)
            if name is None:
                name = (f'{prefix}_dispatch_{target:04x}' if prefix
                        else f'dispatch_{target:04x}')
            aliases[target] = name
    return aliases


def write_label_inc(label_map, path):
    """Write a NASM ``.inc`` file with ``equ`` definitions."""
    with open(path, 'w') as f:
        for addr in sorted(label_map):
            f.write(f'{label_map[addr]} equ 0x{addr:04x}\n')


def write_label_json(label_map, path):
    """Write a JSON-serialised label map (string keys for JSON)."""
    with open(path, 'w') as f:
        json.dump({str(k): v for k, v in label_map.items()}, f)


def read_label_json(path):
    """Read a JSON label map back to ``{int: str}``."""
    with open(path) as f:
        return {int(k): v for k, v in json.load(f).items()}
