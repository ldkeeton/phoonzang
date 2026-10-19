"""Heuristic struct recovery from 16-bit x86 instruction streams.

Scans capstone instructions for ``[reg + offset]`` memory access patterns,
clusters adjacent offsets to infer struct field layouts, and emits both
NASM ``struc`` directives and a machine-readable ``.types.json`` for Ghidra.

No project-specific knowledge — everything is derived from the code itself.
"""

import json

from collections import defaultdict
from capstone import CS_OP_MEM
from capstone.x86 import X86_REG_BP, X86_REG_SP, X86_REG_BX, X86_REG_SI
from capstone.x86 import X86_REG_DI, X86_REG_AX, X86_REG_CX, X86_REG_DX


# Capstone register constants → NASM register names
_REG_NAMES = {
    X86_REG_BX: 'bx', X86_REG_SI: 'si', X86_REG_DI: 'di',
    X86_REG_AX: 'ax', X86_REG_CX: 'cx', X86_REG_DX: 'dx',
    X86_REG_BP: 'bp', X86_REG_SP: 'sp',
}

# Access sizes to C type names
_SIZE_TYPES = {
    1: 'uint8_t',
    2: 'uint16_t',
    4: 'uint32_t',
}

# Max gap between struct fields before splitting into separate structs
_MAX_FIELD_GAP = 8


def _reg_name(reg):
    return _REG_NAMES.get(reg, f'r{reg}')


def _size_of(size):
    return size


def _access_name(offset, size):
    if size not in _SIZE_TYPES:
        return f'f_{offset:02x}'
    return f'f_{offset:02x}'


def _is_array_pattern(pairs):
    """Check if a cluster of (disp, size) pairs is an array, not a struct.

    Arrays typically have many elements with uniform stride.
    Structs have fewer named fields.  Threshold: require ≥10 elements
    with identical stride before treating as array.
    """
    if len(pairs) < 10:
        return False
    strides = set()
    for i in range(1, len(pairs)):
        gap = pairs[i][0] - pairs[i - 1][0]
        strides.add(gap)
    return len(strides) == 1


def _fill_gaps(fields):
    """Insert padding fields for gaps between offsets."""
    if not fields:
        return fields
    result = []
    expected_end = 0
    for off, size, raw_disp in fields:
        if off > expected_end:
            gap = off - expected_end
            result.append((expected_end, gap, 'padding'))
        result.append((off, size, raw_disp))
        expected_end = off + _size_of(size)
    return result


def _nasm_struc_name(name):
    return name


def _nasm_field(offset, size, name):
    """Emit a single NASM .field directive."""
    if size == 'padding':
        return f'    .{name}: resb {offset}'
    if size <= 0:
        return None
    directives = {1: 'resb', 2: 'resw', 4: 'resd'}
    d = directives.get(size, 'resb')
    count = 1
    return f'    .{name}: {d} {count}'


def build_structs(instructions):
    """Analyze *instructions* for struct patterns.

    Parameters
    ----------
    instructions : list of capstone Instruction objects
        Must have been created with ``detail=True``.

    Returns
    -------
    list of dict
        Each entry::

            {
                'name': str,          # NASM-safe struct name
                'size': int,          # total struct size in bytes
                'fields': [(int offset, int size, str field_name), ...],
                'base_reg': str,      # NASM register name
                'base_disp': int,     # reference displacement
                'nasm': str,          # ready-to-emit NASM struc text
            }
    """
    # Step 1: Extract all memory accesses
    # (insn_addr, base_reg_int, disp, size)
    accesses = []
    for insn in instructions:
        for op in insn.operands:
            if op.type != CS_OP_MEM:
                continue
            base = op.mem.base
            idx = op.mem.index
            disp = op.mem.disp & 0xFFFF
            size = op.size

            # Skip stack frame
            if base in (X86_REG_BP, X86_REG_SP):
                continue

            # Skip indexed (likely array)
            if idx != 0:
                continue

            # Skip absolute (no base register)
            if base == 0:
                continue

            accesses.append((insn.address, base, disp, size))

    if len(accesses) < 4:
        return []

    # Step 2: Group by base register
    by_reg = defaultdict(list)
    for addr, reg, disp, size in accesses:
        by_reg[reg].append((addr, disp, size))

    # Step 3: For each register, cluster nearby displacements
    structs = []
    seen_patterns = set()

    for reg, items in by_reg.items():
        # Unique (disp, size) pairs sorted by displacement
        pairs = sorted(set((d, s) for _, d, s in items))
        if len(pairs) < 2:
            continue

        # Cluster: large gaps → separate structures
        clusters = []
        cur = [pairs[0]]
        for i in range(1, len(pairs)):
            gap = pairs[i][0] - pairs[i - 1][0] - _size_of(pairs[i - 1][1])
            if gap > _MAX_FIELD_GAP or gap < 0:
                clusters.append(cur)
                cur = []
            cur.append(pairs[i])
        clusters.append(cur)

        for cluster in clusters:
            if len(cluster) < 2:
                continue

            # Deduplicate by pattern hash
            pattern_key = (reg, tuple(cluster))
            if pattern_key in seen_patterns:
                continue
            seen_patterns.add(pattern_key)

            # Skip arrays (regular stride)
            if _is_array_pattern(cluster):
                continue

            # Build fields
            base_disp = cluster[0][0]
            raw_fields = []
            for disp, size in cluster:
                rel_off = disp - base_disp
                raw_fields.append((rel_off, size, disp))

            # Sort by relative offset
            raw_fields.sort(key=lambda x: x[0])

            # Fill gaps with padding
            filled = _fill_gaps(raw_fields)

            # Compute total size
            if filled:
                last_off, last_size, _ = filled[-1]
                if last_size == 'padding':
                    total_size = last_off
                else:
                    total_size = last_off + _size_of(last_size)
            else:
                total_size = 0

            # Generate NASM struc text
            reg_name = _reg_name(reg)
            sname = f's_{reg_name}_{base_disp:04x}'
            nasm_lines = [f'struc {sname}']
            for off, size, raw_disp in filled:
                if raw_disp == 'padding':
                    count = size
                    if count <= 0:
                        continue
                    fname = f'gap_{off:x}'
                    nasm_lines.append(f'    .{fname}: resb {count}')
                else:
                    fname = _access_name(off, size)
                    nasm_lines.append(f'    .{fname}: resb {size}')
            nasm_lines.append(f'endstruc')
            nasm_lines.append('')

            structs.append({
                'name': sname,
                'size': total_size,
                'fields': [(off, size, _access_name(off, size))
                           for off, size, raw_disp in filled if size != 'padding'],
                'all_fields': [(off, size, raw_disp) for off, size, raw_disp in filled],
                'base_reg': reg_name,
                'base_disp': base_disp,
                'nasm': '\n'.join(nasm_lines),
            })

    return structs


def format_types_json(structs, binary_path, overlay_name):
    """Build the ``.types.json`` content for Ghidra consumption.

    Parameters
    ----------
    structs : list of dict
        Output from :func:`build_structs`.
    binary_path : str
        Original binary path (unused, for metadata).
    overlay_name : str
        Overlay name for metadata.

    Returns
    -------
    str
        JSON string suitable for writing to ``<name>.types.json``.
    """
    entries = []
    for st in structs:
        entry = {
            'name': st['name'],
            'size': st['size'],
            'fields': [
                {'offset': off, 'size': sz, 'name': nm}
                for off, sz, nm in st['fields']
            ],
            'base_reg': st['base_reg'],
            'base_disp': st['base_disp'],
        }
        entries.append(entry)

    doc = {
        'overlay': overlay_name,
        'structs': entries,
    }
    return json.dumps(doc, indent=2)


#: Where the struct includes live, relative to the source tree.
STRUCTS_DIR = 'inc/structs'


def struct_inc_files(structs, name):
    """The struct include files for one binary, and the line that includes them.

    Returns ``({relative path: text}, include line)``: the auto-discovered
    struct definitions (``inc/structs/<name>.inc``) and the shared primitives
    (``inc/structs/structs.inc``, the same for every binary), or ``({}, None)``
    when there are no structs.  The caller writes them with the binary's other
    files.
    """
    if not structs:
        return {}, None
    primitives = '\n'.join([
        '; ── shared data layout primitives ───────────────────────────────',
        '',
        'struc BytePair',
        '    .a: resb 1',
        '    .b: resb 1',
        'endstruc',
        '',
        'struc Tag_Hdr',
        '    .tag: resb 1',
        '    .id:  resb 2',
        'endstruc',
        '',
        'struc DblW',
        '    .lo: resb 2',
        '    .hi: resb 2',
        'endstruc',
        '',
        'struc QuadW',
        '    .w0: resb 2',
        '    .w1: resb 2',
        '    .w2: resb 2',
        '    .w3: resb 2',
        'endstruc',
        '',
        'struc SparsePair',
        '    .a:   resb 1',
        '    .gap: resb 3',
        '    .b:   resb 1',
        'endstruc',
        '',
    ])
    struct_text = format_nasm_structs(structs)
    files = {
        f'{STRUCTS_DIR}/structs.inc': primitives,
        f'{STRUCTS_DIR}/{name}.inc': (struct_text if struct_text.endswith('\n')
                                      else struct_text + '\n'),
    }
    return files, f'%include "{STRUCTS_DIR}/{name}.inc"'


def format_nasm_structs(structs):
    """Render all discovered structs as NASM ``struc`` directives
    with annotated ``@struct`` / ``@field`` comment headers.

    Parameters
    ----------
    structs : list of dict
        Output from :func:`build_structs`.

    Returns
    -------
    str
        NASM source text.
    """
    if not structs:
        return ''
    out = []
    out.append('; ── auto-discovered structs ─────────────────────────────────────')
    out.append('')
    for st in structs:
        out.append(f'; @struct {st["name"]} size={st["size"]} '
                    f'reg={st["base_reg"]} disp=0x{st["base_disp"]:04x}')
        for off, sz, nm in st['fields']:
            out.append(f'; @field offset={off} size={sz} name={nm}')
        out.append(st['nasm'])
    return '\n'.join(out)
