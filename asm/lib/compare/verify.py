"""Byte-verification orchestration.

Each candidate mnemonic is round-trip verified at its original offset.
Lines that don't reassemble to the exact original bytes are kept as
``db`` with a comment.  Data blocks are grouped under block headers
when a classification bitmap is provided.

Inline data misdecoded as a **direct** far transfer (``EA``/``9A``) is
reclassified here: the compiler emits far calls only indirectly
(``call far [mem]``), so a direct far jump/call is table data.  Its bytes are
dropped from the code stream, marked DATA, and re-emitted as a literal ``dw``
table (no target resolution) so no bare ``far`` operand survives (7E.4).

Address spaces
--------------
See ``lib.format`` for the F/L/DATA/PSP model.  Within this module:

* ``label_map`` is F-keyed and holds code labels (and emitted ``data_``
  aliases for the data namespace).
* ``data_labels`` is the dedicated data namespace used for absolute memory
  displacements; a displacement is only drawn from here, never from the
  code map.
* ``immediate_labels`` is the sidecar namespace for proven address
  immediates.
* ``external_data`` is the sidecar namespace for fixed external-segment
  fields (e.g. the BIOS Data Area); such an operand is named only when its
  segment matches the sidecar entry.
* A C/compiler-recovered routine (``c_overrides``) owns exactly its
  original ``length`` bytes.  Its split range and its replacement span are
  both capped there so following non-C data (strings, jump tables, lookup
  tables) is not absorbed and mis-decoded as pseudo-instructions.
"""

import os
import struct
import time
from bisect import bisect_left, bisect_right

from capstone import (
    Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_MEM, CS_OP_IMM, CS_OP_REG,
)

from lib.model import IS_CODE, IS_DATA
from lib.mz import parse_relocs as _parse_mz_relocs
from lib.verify.assemble import (
    micro_assemble,
    assemble_batch,
    is_semantically_equivalent,
)
from lib.compare.analysis import (
    _compute_func_boundaries,
    _function_roots,
    _compute_branch_ownership,
    _local_branch_targets,
    _compute_local_labels,
    _direct_flow_targets,
)
from lib.compare.coverrides import _apply_c_overrides
from lib.compare.interrupts import _set_insn_fields, _annotate_interrupts
from lib.compare.jumptables import (
    _merge_jump_table_specs,
    _inject_jump_tables,
    _rewrite_jump_dispatchers,
    _ensure_global_label,
)
from lib.compare.postprocess import _postprocess_data_blocks
from lib.compare.records import (
    _flush_data_block,
    _emit_label_record,
    _count_bare_addrs,
    count_frozen_addrs,
)
from lib.compare.render import _build_source
from lib.compare.splitting import (
    _select_split_ranges,
    _extend_split_ranges_with_local_tails,
)
from lib.compare.symbols import (
    _resolve_mem_symbols,
    _resolve_imm_symbols,
    _build_address_records,
)


def _is_direct_far(insn):
    """True for a direct far transfer (``EA``/``9A`` immediate seg:off).

    The Aztec C compiler emits far calls only *indirectly* (``call far
    [mem]``); it never emits a direct far jump/call.  A decoded direct far
    transfer is therefore inline table/data misread by linear descent (its
    ``far`` operands are not real addresses).  Such bytes are reclassified as
    data and rendered as a small literal ``dw`` table so no bare ``far``
    operand survives.

    Note capstone names the *indirect* ``call far [mem]`` (``FF /3``)
    mnemonic ``lcall`` too, so the immediate-operand shape -- never a memory
    operand -- is what distinguishes a real transfer from inline data.
    """
    if insn.mnemonic not in ('ljmp', 'lcall'):
        return False
    for op in insn.operands:
        if op.type == CS_OP_MEM:
            return False
    return any(op.type == CS_OP_IMM for op in insn.operands)


def _looks_like_dispatch_trampoline(binary_data, target, total, window=48):
    """True when ``target`` is a ``pop``-then-``jmp reg`` dispatch helper.

    The Aztec switch lookup idiom is ``mov cx, N; call helper`` where the
    helper pops the return address (the inline table base) and ends in
    ``jmp cx``/``jmp reg`` -- it never returns, so the bytes after the call
    are table data, not fall-through code.
    """
    if not 0 <= target < total:
        return False
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    first = True
    for insn in md.disasm(binary_data[target:min(target + window, total)], target):
        if first:
            if insn.mnemonic != 'pop':
                return False
            first = False
        if insn.mnemonic in ('jmp', 'ljmp'):
            return any(op.type == CS_OP_REG for op in insn.operands)
        if insn.mnemonic in ('ret', 'retf', 'iret', 'hlt', 'call', 'lcall'):
            return False
    return False


def _find_trampoline_tables(instructions, binary_data, total):
    """Find inline lookup tables read by the ``mov cx, N; call helper`` idiom.

    Returns ``[(table_start, length, count), ...]``.  The table immediately
    follows the call (it is the return address the helper pops) and holds
    ``N + 1`` words.  Gated on the helper's proven non-returning dispatch
    shape so an ordinary ``mov cx, n; call`` is never reclassified.
    """
    by_addr = {insn.address: insn for insn in instructions}
    tables = []
    seen = set()
    for insn in instructions:
        if insn.mnemonic != 'mov' or len(insn.operands) != 2:
            continue
        op0, op1 = insn.operands
        if op0.type != CS_OP_REG or op1.type != CS_OP_IMM:
            continue
        if insn.reg_name(op0.reg) != 'cx':
            continue
        call = by_addr.get(insn.address + insn.size)
        if call is None or call.mnemonic != 'call' or len(call.operands) != 1:
            continue
        if call.operands[0].type != CS_OP_IMM or call.bytes[:1] != b'\xe8':
            continue
        target = call.operands[0].imm & 0xFFFF
        if not _looks_like_dispatch_trampoline(binary_data, target, total):
            continue
        count = (op1.imm & 0xFFFF) + 1
        table_start = call.address + call.size
        length = 2 * count
        if table_start + length > total or table_start in seen:
            continue
        seen.add(table_start)
        tables.append((table_start, length, count))
    return tables


def verify(binary_data, start_offset, instructions, name='', label_map=None,
           bitmap=None, code_targets=None, exact_bytes=False, show_offsets=True,
           structs=None, asm_dir=None, cascade_promoted=None,
           carve_1=None, trace=None,
           foreign_label_map=None,
           immediate_labels=None, split_functions=None, hard_data=None,
           function_roots=None, branch_targets=None, branch_edges=None,
           extra_flow_edges=None, label_comments=None, c_overrides=None,
           jump_tables=None, jump_table_overrides=None,
           segment_flow=None, segments=None, external_data=None,
           entry_symbol=None, data_pointers=(), not_pointers=()):
    """Produce NASM source text from *binary_data* and *instructions*.

    Parameters
    ----------
    binary_data : bytes
    start_offset : int
        Number of header bytes at the start of *binary_data*.
    instructions : iterable of capstone instructions
    name : str
    label_map : dict | None
    bitmap : bytearray | None
    code_targets : set | None
    hard_data : bytearray | None
        Explicit sidecar data bytes that may not be promoted or labeled as code.
    external_data : dict | None
        Sidecar ``external_data`` map (``{offset: {'name', 'segment'?}}``)
        naming fixed external-segment fields (e.g. the BIOS Data Area).  A
        field is named only when the operand's segment matches the entry's.
    structs : list | None
    asm_dir : str | None
    cascade_promoted : set | None

    Returns (asm_text, stats, emit_bytes, label_positions, split_sources).
    """
    from lib.format import format_instruction

    total = len(binary_data)
    if hard_data is None:
        hard_data = bytearray(total)
    else:
        hard_data = bytearray(hard_data[:total])
        hard_data.extend([0] * (total - len(hard_data)))
    # Direct far transfers are never real (see ``_is_direct_far``): their
    # bytes are inline data.  Collect them so they are dropped from the code
    # stream, marked DATA, and re-emitted as literal ``dw`` tables.
    far_insns = []
    for insn in instructions:
        if not _is_direct_far(insn):
            continue
        start = insn.address
        end = start + insn.size
        if 0 <= start and end <= total and not any(hard_data[start:end]):
            far_insns.append(insn)

    # ``mov cx, N; call <jmp-reg dispatch helper>`` introduces an inline
    # lookup table of N+1 words (7E.4).  It is data, even though linear
    # descent decodes it as instructions.
    tramp_tables = [
        (table_start, length, count)
        for table_start, length, count in _find_trampoline_tables(
            instructions, binary_data, total)
        if not any(hard_data[table_start:table_start + length])
    ]

    data_offsets = bytearray(total)
    for table_start, length, _ in tramp_tables:
        for off in range(table_start, table_start + length):
            if bitmap is not None:
                bitmap[off] = IS_DATA
            data_offsets[off] = 1
    for insn in far_insns:
        for off in range(insn.address, insn.address + insn.size):
            if bitmap is not None:
                bitmap[off] = IS_DATA
            data_offsets[off] = 1

    # Classification may be refined after the instruction list was decoded.
    # The final bitmap is authoritative for emission: stale instructions over
    # bytes now classified as DATA must be rendered as data, not mnemonics.
    insns = []
    for insn in instructions:
        start = insn.address
        end = start + insn.size
        if start < 0 or end > total or any(hard_data[start:end]):
            continue
        if data_offsets[start]:
            continue
        if bitmap is not None and any(
                bitmap[off] != IS_CODE for off in range(start, end)):
            continue
        insns.append(insn)
    if label_map is None:
        label_map = {}
    else:
        label_map = {
            off: label for off, label in label_map.items()
            if not (0 <= off < total and hard_data[off])
        }
    if code_targets:
        code_targets = {
            off for off in code_targets
            if not (0 <= off < total and hard_data[off])
        }
    classifier_code_targets = set(code_targets or ())
    branch_targets = {
        off for off in (branch_targets or ())
        if not (0 <= off < total and hard_data[off])
    }
    branch_edges = {
        (source, target) for source, target in (branch_edges or ())
        if not (0 <= source < total and hard_data[source])
        and not (0 <= target < total and hard_data[target])
    }
    extra_flow_edges = {
        (source, target) for source, target in (extra_flow_edges or ())
        if not (0 <= source < total and hard_data[source])
        and not (0 <= target < total and hard_data[target])
    }

    insn_by_addr = {insn.address: insn for insn in insns}
    initial_insn_addrs = set(insn_by_addr)

    known_addrs = set(label_map.keys()) if label_map else set()
    if code_targets:
        known_addrs |= code_targets

    t0 = time.perf_counter()

    # Discover hidden address references from MZ relocation table
    reloc_targets = _parse_mz_relocs(binary_data, start_offset)
    reloc_targets = {
        off for off in reloc_targets
        if not (0 <= off < total and hard_data[off])
    }
    if reloc_targets and code_targets is not None:
        code_targets |= reloc_targets

    func_boundaries = _compute_func_boundaries(label_map, binary_data)
    t1 = time.perf_counter()
    roots = function_roots or _function_roots(
        label_map, insns, binary_size=total, start_offset=start_offset,
    )
    if function_roots:
        roots = {
            off: root_name for off, root_name in function_roots.items()
            if off in insn_by_addr
            and not (0 <= off < total and hard_data[off])
        }
    owners, edge_sources, direct_edges, roots = _compute_branch_ownership(
        insns, roots, branch_edges, extra_flow_edges,
        binary_size=total, start_offset=start_offset,
    )
    branch_targets.update(target for _, target in direct_edges)
    local_targets = _local_branch_targets(
        branch_targets, owners, edge_sources, roots,
    )
    c_override_lengths = {}
    if c_overrides:
        override_name_to_addr = {}
        for off, nm in label_map.items():
            if isinstance(nm, str):
                override_name_to_addr.setdefault(nm, off)
        for label, override in c_overrides.items():
            off = override_name_to_addr.get(label)
            length = override.get('length')
            if off is not None and length:
                c_override_lengths[off] = length

    split_ranges = _select_split_ranges(
        label_map, split_functions, func_boundaries, binary_size=total,
        c_override_lengths=c_override_lengths,
    )
    fragment_names = {range_name for _, _, range_name in split_ranges}
    local_labels = _compute_local_labels(
        local_targets, owners, roots, label_map, fragment_names,
    )
    local_labels = {
        off: label for off, label in local_labels.items()
        if not (0 <= off < total and hard_data[off])
    }
    t2 = time.perf_counter()

    if label_map:
        insn_start_list = sorted(insn_by_addr)
        bad = set()
        for off in label_map:
            idx = bisect_right(insn_start_list, off) - 1
            if idx >= 0:
                addr = insn_start_list[idx]
                if addr < off < addr + insn_by_addr[addr].size:
                    bad.add(off)
        for off in bad:
            del label_map[off]
        known_addrs = set(label_map.keys())
        if code_targets:
            known_addrs |= code_targets
    else:
        insn_start_list = sorted(insn_by_addr)
    if local_labels:
        # Keep in-binary destinations even when current code/data classification
        # did not decode them as instruction starts. The emitted label still
        # resolves the reference; the byte-exact renderer can place it between
        # raw-data bytes or at an alternate instruction boundary.
        known_addrs |= local_labels.keys()
    known_addr_sorted = sorted(known_addrs)

    # Segment-aware symbols for absolute memory operands (Phase 4).  Operands
    # resolved here are rendered from the correct namespace and are excluded
    # from the generic ``data_`` fallback below.
    mem_symbols, mem_equ = _resolve_mem_symbols(
        insns, segment_flow, segments, label_map, start_offset)
    mem_symbols.update(_resolve_imm_symbols(
        insns, segment_flow, segments, label_map, mem_equ, start_offset))

    # ── Pre-collect data labels from insn operands, MZ relocs, and data gaps ──
    # ``data_refs`` maps each absolute displacement to the set of segment
    # registers that reached it, so a fixed external-segment field (e.g. the
    # BIOS Data Area at ``es:0x0410``) is named only when the operand's
    # segment matches the sidecar assertion.
    data_refs = {}
    if reloc_targets:
        for addr in reloc_targets:
            data_refs.setdefault(addr, set())
    for insn in insns:
        for idx, op in enumerate(insn.operands):
            if op.type == CS_OP_MEM and op.mem.base == 0 and op.mem.index == 0:
                if (insn.address, idx) in mem_symbols:
                    continue
                addr = op.mem.disp & 0xFFFF
                if addr != 0:
                    seg = insn.reg_name(op.mem.segment).lower() if op.mem.segment else 'ds'
                    data_refs.setdefault(addr, set()).add(seg)
    covered = bytearray(total)
    for addr, insn in insn_by_addr.items():
        for i in range(addr, addr + insn.size):
            if i < total:
                covered[i] = 1
    i = start_offset
    while i < total:
        if not covered[i]:
            s = i
            while i < total and not covered[i]:
                i += 1
            raw = binary_data[s:i]
            for off in range(0, len(raw) - 1, 2):
                val = struct.unpack_from('<H', raw, off)[0]
                if val in known_addrs and val != 0:
                    data_refs.setdefault(val, set())
        else:
            i += 1
    # A data reference is only symbolized when its data-space name is actually
    # emitted.  When a code label already owns the same file offset the two
    # spaces collide; emitting the data name too would be an undefined symbol,
    # and reusing the code label would conflate the spaces.  Fall back to a raw
    # displacement in that case.
    data_labels = {}
    from lib.segments import external_data_name
    for addr in sorted(data_refs):
        if addr == 0:
            continue
        segs = data_refs[addr]
        dname = None
        if external_data and len(segs) == 1:
            dname = external_data_name(addr, external_data, next(iter(segs)))
        dname = dname or f'data_{addr:04x}'
        if label_map is None:
            data_labels[addr] = dname
            continue
        if addr in label_map:
            if label_map[addr] == dname:
                data_labels[addr] = dname
            continue
        if code_targets is not None and addr in code_targets:
            continue
        label_map[addr] = dname
        data_labels[addr] = dname

    # ── Switch tables: merge auto-detection with sidecar overrides ──────────
    table_specs = _merge_jump_table_specs(
        jump_tables, jump_table_overrides, start_offset, total,
    )
    # Inline data misdecoded as instructions is emitted as literal ``dw``
    # tables (no target resolution -- the words are not code pointers).
    # Registering each range also stops the postprocessor from promoting the
    # bytes back to instructions.
    def _literal_spec(start, length, source, note):
        return {
            'table_addr': start,
            'table_end': start + length,
            'jmp_addr': -1,
            'count': length // 2,
            'entry_size': 2,
            'label': f'jumptable_{start:04x}',
            'source': source,
            'note': note,
            'literal': True,
        }

    covered = []
    for table_start, length, _ in tramp_tables:
        table_specs.append(_literal_spec(
            table_start, length, 'trampoline_lookup',
            'inline lookup table (mov cx; call dispatch)'))
        covered.append((table_start, table_start + length))
    for insn in far_insns:
        start = insn.address
        if any(s <= start < e for s, e in covered):
            continue
        table_specs.append(_literal_spec(
            start, insn.size, 'far_data',
            'inline data (direct far decode)'))
    if tramp_tables or far_insns:
        table_specs.sort(key=lambda spec: spec['table_addr'])
    table_ranges = [
        (spec['table_addr'], spec['table_end'])
        for spec in table_specs
        if spec.get('table_end', 0) > spec['table_addr']
    ]

    # ── Pre-collect data labels from insn operands, MZ relocs, and data gaps ──
    consumer_inc = None
    if foreign_label_map and asm_dir and name:
        from lib.cross_ref import write_label_inc
        labels_dir = os.path.join(asm_dir, 'inc', 'labels')
        os.makedirs(labels_dir, exist_ok=True)
        inc_name = f'{name}_foreign_labels.inc'
        write_label_inc(foreign_label_map, os.path.join(labels_dir, inc_name))
        consumer_inc = f'inc/labels/{inc_name}'

    # Assemble every candidate instruction in a single NASM round-trip rather
    # than spawning a subprocess per instruction.  Falls back to per-instruction
    # assembly when the batch cannot be processed structurally.
    t_pre0 = time.perf_counter()
    text_by_addr = {}
    batch_reqs = []
    for insn in insns:
        text = format_instruction(
            insn, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels, data_labels=data_labels,
            mem_symbols=mem_symbols,
        )
        text_by_addr[insn.address] = text
        if text:
            batch_reqs.append((text, insn.address))
    if batch_reqs:
        built_batch = assemble_batch(
            batch_reqs, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels, image_base=start_offset,
            mem_equ=mem_equ,
        )
        if built_batch is None:
            built_batch = [
                micro_assemble(
                    text, addr, label_map, local_labels,
                    foreign_label_map=foreign_label_map,
                    immediate_labels=immediate_labels, mem_equ=mem_equ,
                    image_base=start_offset,
                )
                for text, addr in batch_reqs
            ]
    else:
        built_batch = []
    built_by_addr = {
        addr: built for (_, addr), built in zip(batch_reqs, built_batch)
    }
    timing_format = time.perf_counter() - t_pre0

    records = []
    pending_data = []
    data_block_start = None

    off = start_offset
    while off < total:
        if off in known_addrs and (
                off in insn_by_addr
                or (label_map and off in label_map
                    and label_map[off].startswith('data_'))
                or (local_labels and off in local_labels)):
            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )
            _emit_label_record(records, off, label_map, local_labels,
                               insn_by_addr, label_comments)
        insn = insn_by_addr.get(off)

        if insn is not None:
            insn_end = off + insn.size

            inner_labels = [
                a for a in known_addr_sorted[
                    bisect_right(known_addr_sorted, off):
                    bisect_left(known_addr_sorted, insn_end)]
                if (a in insn_by_addr
                    or (label_map and a in label_map
                        and label_map[a].startswith('data_'))
                    or (local_labels and a in local_labels))
            ]

            if inner_labels:
                data_block_start, pending_data = _flush_data_block(
                    records, pending_data, data_block_start, off,
                )
                chunk_start = off
                for lab in inner_labels:
                    for b_off in range(chunk_start, lab):
                        records.append({
                            'type': 'db',
                            'text': f'0x{binary_data[b_off]:02x}',
                            'offset': b_off,
                            'size': 1,
                        })
                    _emit_label_record(records, lab, label_map, local_labels,
                                       insn_by_addr, label_comments)
                    chunk_start = lab
                for b_off in range(chunk_start, insn_end):
                    records.append({
                        'type': 'db',
                        'text': f'0x{binary_data[b_off]:02x}',
                        'offset': b_off,
                        'size': 1,
                    })
                off = insn_end
                continue

            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )

            bts = binary_data[off:insn_end]
            nasm_text = text_by_addr.get(off)

            if nasm_text:
                built = built_by_addr.get(off)
                exact_here = exact_bytes
                ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
                if not ok and not exact_here and built:
                    ok = is_semantically_equivalent(bts, built[:len(bts)], off)
                if ok:
                    rec = {
                        'type': 'mnem',
                        'text': nasm_text,
                        'offset': off,
                        'size': insn.size,
                    }
                    _set_insn_fields(rec, insn)
                    records.append(rec)
                else:
                    db_hex = ', '.join(f'0x{b:02x}' for b in bts)
                    rec = {
                        'type': 'db_with_comment',
                        'text': nasm_text,
                        'db_hex': db_hex,
                        'offset': off,
                        'size': insn.size,
                    }
                    _set_insn_fields(rec, insn)
                    records.append(rec)
            else:
                db_hex = ', '.join(f'0x{b:02x}' for b in bts)
                records.append({
                    'type': 'db',
                    'text': db_hex,
                    'offset': off,
                    'size': insn.size,
                })
            off = insn_end

        else:
            if data_block_start is None:
                data_block_start = off
            pending_data.append(f'0x{binary_data[off]:02x}')
            off += 1

    if pending_data:
        records.append({
            'type': 'data_block',
            'start': data_block_start,
            'end': total,
            'bytes': list(pending_data),
        })

    t3 = time.perf_counter()
    records = _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes, bitmap, carve_1, trace, local_labels,
                                       foreign_label_map=foreign_label_map,
                                       immediate_labels=immediate_labels,
                                       hard_data=hard_data,
                                       data_labels=data_labels,
                                       mem_symbols=mem_symbols, mem_equ=mem_equ,
                                       image_base=start_offset,
                                       table_ranges=table_ranges)

    # Data-block promotion can reveal instructions after the first local-label
    # pass. Give their in-binary direct-flow destinations symbols too, then
    # reformat those promoted instructions against the completed label map.
    for rec in records:
        if rec['type'] not in ('mnem', 'db_with_comment'):
            continue
        insn = rec.get('_insn')
        if insn is None:
            continue
        for target in _direct_flow_targets(insn, total):
            if trace is not None and (
                    trace.watches(insn.address) or trace.watches(target)):
                flow = ('call' if insn.mnemonic in ('call', 'lcall') else
                        'jump' if insn.mnemonic in ('jmp', 'ljmp') else
                        'conditional_jump')
                target_bitmap = (
                    int(bitmap[target]) if bitmap is not None
                    and 0 <= target < len(bitmap) else None
                )
                trace.event(
                    'verify', 'direct_flow_reference', addr=insn.address,
                    target=target, mnemonic=insn.mnemonic, flow=flow,
                    source_was_in_classifier_disassembly=(
                        insn.address in initial_insn_addrs
                    ),
                    source_record_type=rec['type'],
                    source_bitmap=(
                        int(bitmap[insn.address]) if bitmap is not None
                        and 0 <= insn.address < len(bitmap) else None
                    ),
                    target_bitmap=target_bitmap,
                    target_in_classifier_code_targets=(
                        target in classifier_code_targets
                    ),
                    target_hard_data=bool(hard_data[target]),
                    target_label=label_map.get(target)
                    or local_labels.get(target),
                )
            if hard_data[target]:
                continue
            if target < start_offset and target not in label_map:
                # Header destinations cannot be emitted as body labels, but a
                # global equ keeps direct-flow references symbolic without
                # making them local code labels.
                label_map[target] = f'loc_{target:04x}'
            elif target not in local_labels and target not in label_map:
                label_map[target] = f'loc_{target:04x}'
        formatted = format_instruction(
            insn, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels, data_labels=data_labels,
            mem_symbols=mem_symbols,
        )
        if formatted is not None:
            rec['text'] = formatted

    # Replace detected switch-table data blocks with readable jump_table
    # records, synthesizing case labels for otherwise-unlabeled targets.
    # Only tables that were actually emitted get a dispatcher rewrite, so a
    # false-positive detection (span overlapping real code) stays untouched.
    synthesized = {}
    o_corg = None
    if segments is not None and getattr(segments, 'overlay', None):
        o_corg = segments.overlay.get('o_corg')
    if table_specs:
        records, injected, synthesized = _inject_jump_tables(
            records, table_specs, binary_data, start_offset,
            label_map, local_labels, o_corg=o_corg,
        )
        disp_labels = {
            table_addr - start_offset: label
            for table_addr, label in injected.items()
            if 0 <= table_addr - start_offset < 0x10000
        }
        # Overlay dispatchers carry an o_corg-based displacement; the emitted
        # ``label - IMAGE_BASE`` form would not reproduce it, so leave those
        # raw.  MZ/driver dispatchers keep their load-image convention.
        if disp_labels and o_corg is None:
            records = _rewrite_jump_dispatchers(
                records, disp_labels, start_offset, label_map, local_labels,
                foreign_label_map, immediate_labels, data_labels=data_labels,
                mem_symbols=mem_symbols, mem_equ=mem_equ,
            )

    # ── Dynamic-address rewrite (plan.md F3) ───────────────────────────────
    # ``cseg_``/``data_`` and unreached ``loc_``-style symbols are emitted as
    # top-of-file ``equ 0x<offset>`` constants.  Where the target offset is a
    # real record boundary, place a label at the byte instead so the symbol
    # tracks a relocatable layout; mid-instruction or header offsets fall back
    # to the ``equ``.  ``org 0`` means a label at file offset *off* has value
    # *off*, so every reference re-encodes identically.
    label_defined = set()
    existing_labels = {r['text'] for r in records if r['type'] == 'label'}
    label_offsets_now = {r['offset'] for r in records if r['type'] == 'label'}
    # Symbols whose address falls inside the MZ code→data zero gap must stay
    # ``equ`` constants: a label there would split the dynamic pad.  Locate the
    # gap now, before any F3 label is inserted.
    gap_lo = gap_hi = None
    if (segments is not None and getattr(segments, 'kind', None) == 'mz'
            and getattr(segments, 'data_origin', None) is not None):
        do = segments.data_origin
        for rec in records:
            if rec['type'] != 'data_block':
                continue
            if rec['start'] < do <= rec['end']:
                if not any(binary_data[rec['start']:do]):
                    gap_lo, gap_hi = rec['start'], do
                break

    def _in_gap(addr):
        return gap_lo is not None and gap_lo <= addr < gap_hi

    f3_candidates = []
    for cname, caddr in (mem_equ or {}).items():
        if cname.startswith('cseg_') and not _in_gap(caddr):
            f3_candidates.append((cname, caddr))
    for caddr, cname in (label_map or {}).items():
        if _in_gap(caddr):
            continue
        if cname.startswith('data_'):
            f3_candidates.append((cname, caddr))
        elif (caddr not in label_offsets_now
              and not cname.startswith(('dseg_', 'bss_', 'psp_'))):
            # A stale flow target sitting in data must not become a code label.
            if (bitmap is not None and 0 <= caddr < len(bitmap)
                    and bitmap[caddr] != IS_CODE):
                continue
            f3_candidates.append((cname, caddr))
    for cname, caddr in sorted(f3_candidates, key=lambda t: (t[1], t[0])):
        if f'{cname}:' in existing_labels:
            label_defined.add(cname)
            continue
        if _ensure_global_label(records, binary_data, caddr, cname):
            label_defined.add(cname)

    if trace is not None and trace.watched_addresses:
        for addr in sorted(trace.watched_addresses):
            if not 0 <= addr < total:
                continue
            matching = None
            for preferred_type in ('mnem', 'db_with_comment', 'db',
                                   'data_block', 'label'):
                for rec in records:
                    if rec['type'] != preferred_type:
                        continue
                    if preferred_type == 'data_block':
                        covers = rec['start'] <= addr < rec['end']
                    elif preferred_type in ('mnem', 'db', 'db_with_comment'):
                        rec_start = rec.get('offset', -1)
                        covers = rec_start <= addr < rec_start + rec.get('size', 1)
                    else:
                        covers = rec.get('offset') == addr
                    if covers:
                        matching = rec
                        break
                if matching is not None:
                    break

            if matching is None:
                record_info = None
            else:
                rec_start = matching.get('start', matching.get('offset'))
                rec_end = matching.get(
                    'end', rec_start + matching.get('size', 0)
                    if rec_start is not None else None,
                )
                record_info = {
                    'type': matching['type'],
                    'start': rec_start,
                    'end': rec_end,
                    'format_hint': matching.get('format_hint'),
                    'text': matching.get('text'),
                }
            trace.event(
                'verify', 'address_emission', addr=addr,
                bitmap=(
                    int(bitmap[addr]) if bitmap is not None
                    and addr < len(bitmap) else None
                ),
                classifier_code_target=(addr in classifier_code_targets),
                hard_data=bool(hard_data[addr]),
                label=label_map.get(addr) or local_labels.get(addr),
                emitted_record=record_info,
            )

    if c_overrides:
        records = _apply_c_overrides(
            records, c_overrides, binary_data, label_map, local_labels,
            foreign_label_map, immediate_labels, exact_bytes=exact_bytes,
            data_labels=data_labels,
            mem_symbols=mem_symbols, mem_equ=mem_equ,
        )

    _annotate_interrupts(records)
    t4 = time.perf_counter()

    emit_class = bytearray(total)
    label_positions = bytearray(total)
    for rec in records:
        if rec['type'] == 'label':
            off = rec['offset']
            if off < total:
                label_positions[off] = 1
            continue
        if rec['type'] == 'mnem':
            off, sz = rec['offset'], rec['size']
            for i in range(off, off + sz):
                emit_class[i] = IS_CODE
        elif rec['type'] in ('data_block', 'db', 'db_with_comment', 'jump_table'):
            if rec['type'] in ('data_block', 'jump_table'):
                for i in range(rec['start'], rec['end']):
                    emit_class[i] = IS_DATA
            else:
                off, sz = rec['offset'], rec.get('size', 1)
                for i in range(off, off + sz):
                    emit_class[i] = IS_DATA

    t5 = time.perf_counter()

    # Resource/region carving pre-pass (plan.md D2): classify the image's byte
    # ranges so the data-pointer scorer (D4) can attach its "inside a
    # string/resource" soft negative.  Pure analysis — it never changes the
    # emitted source.
    from lib.compare.regions import (
        carve, deprioritised_bytes, iter_ranges, summarize_regions,
    )
    regions = carve(binary_data,
                    code_ranges=list(iter_ranges(emit_class, IS_CODE)))
    region_counts = summarize_regions(regions)

    # Data-pointer candidate scorer (plan.md D4/Sections 8-10): pure analysis,
    # it never changes the emitted source.  The accepted set would be promoted
    # in D5; here we only classify and measure precision against the corpus.
    from lib.compare.pointers import score_candidates as _score_candidates
    pointer_report = _score_candidates(
        binary_data, segments, emit_class,
        instructions=insns, segment_flow=segment_flow, known_addrs=known_addrs,
        regions=regions, reloc_targets=reloc_targets,
        data_pointers=data_pointers, not_pointers=not_pointers,
    )

    # D5 promotion (plan.md Section 13): the accepted set is emitted as symbolic
    # ``dw`` words.  The corpus is the authority (step 1/E0): an asserted word is
    # promoted even when the scorer found no anchor.  This changes records, not
    # ``emit_class`` (the scorer already ran on the raw bytes).
    from lib.compare.promote import merge_promotions, promote_data_pointers
    promoted_words = merge_promotions(pointer_report['promoted'], data_pointers)
    records, promotion_report = promote_data_pointers(
        records, binary_data, start_offset, segments, promoted_words,
        mem_equ, label_map=label_map,
    )

    bare_mem, bare_call, bare_dbc = _count_bare_addrs(records)

    split_ranges = _extend_split_ranges_with_local_tails(split_ranges, records)

    if trace is not None and trace.watched_addresses:
        for addr in sorted(trace.watched_addresses):
            if not 0 <= addr < total:
                continue
            nearby_boundaries = [
                {'start': start, 'end': end, 'name': boundary_name}
                for start, (end, boundary_name) in func_boundaries.items()
                if abs(start - addr) <= 1
            ]
            nearby_ranges = [
                {'start': start, 'end': end, 'name': range_name}
                for start, end, range_name in split_ranges
                if start - 1 <= addr <= end
            ]
            trace.event(
                'verify', 'split_range_context', addr=addr,
                label=label_map.get(addr),
                boundaries=nearby_boundaries,
                selected_ranges=nearby_ranges,
            )

    # Overlay entry: bind ``o_entry`` to a label at the entry's file offset when
    # one exists (value ``foff - IMAGE_BASE + o_corg`` reproduces ``o_entry``).
    source_entry_symbol = entry_symbol
    if (segments is not None and getattr(segments, 'kind', None) == 'overlay'
            and getattr(segments, 'overlay', None) and label_map):
        o_corg = segments.overlay.get('o_corg')
        o_entry = segments.overlay.get('o_entry')
        if o_corg is not None and o_entry is not None:
            foff = start_offset + (o_entry - o_corg)
            source_entry_symbol = label_map.get(foff) or entry_symbol

    src_lines, split_sources = _build_source(
        records, start_offset, binary_data, label_map,
        show_offsets=show_offsets, consumer_inc=consumer_inc,
        immediate_labels=immediate_labels, split_ranges=split_ranges,
        split_dir=name, mem_equ=mem_equ, image_base=start_offset,
        entry_symbol=source_entry_symbol, label_defined=label_defined,
    )
    t6 = time.perf_counter()

    frozen = count_frozen_addrs(
        src_lines + '\n' + '\n'.join(split_sources.values())
    )
    mnem_count = sum(1 for r in records if r['type'] == 'mnem')
    db_count = sum(1 for r in records if r['type'] == 'db')
    dbc_count = sum(1 for r in records if r['type'] == 'db_with_comment')
    data_blocks = sum(1 for r in records if r['type'] == 'data_block')
    label_count = sum(1 for r in records if r['type'] == 'label')

    code_loss = 0
    if label_map:
        for off, lname in label_map.items():
            if lname.startswith('loc_') and off < total and emit_class[off] == IS_DATA:
                code_loss += 1

    struct_count = 0
    if structs:
        from lib.struct_analysis import write_struct_inc_files
        if asm_dir is None:
            asm_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        structs_dir = os.path.join(asm_dir, 'inc', 'structs')
        inc_line = write_struct_inc_files(structs, name, structs_dir)
        if inc_line:
            src_lines = '%include "inc/structs/structs.inc"\n' + inc_line + '\n' + src_lines
            struct_count = len(structs)

    return src_lines, {
        'mnemonic': mnem_count,
        'data': db_count,
        'with_comment': dbc_count,
        'data_blocks': data_blocks,
        'labels': label_count,
        'structs': struct_count,
        'bare_mem': bare_mem,
        'bare_call': bare_call,
        'bare_dbc': bare_dbc,
        'frozen_addr': frozen['total'],
        'frozen_addr_detail': {k: v for k, v in frozen.items() if k != 'total'},
        'code_loss': code_loss,
        'aztec_spans': {
            name: [start, end] for start, end, name in split_ranges
            if isinstance(name, str) and name.startswith('aztec_')
        },
        'aztec_labels': (
            sum(1 for n in label_map.values()
                if isinstance(n, str) and n.startswith('aztec_'))
            if label_map else 0
        ),
        # Region carving pre-pass (D2): the byte map D4 scores candidates
        # against.  ``file`` offsets, gap-free.
        'regions': [
            {'start': r.start, 'end': r.end, 'kind': r.kind, 'note': r.note}
            for r in regions
        ],
        'region_counts': region_counts,
        'region_deprioritised_bytes': deprioritised_bytes(regions),
        # Data-pointer scorer (D4): the accepted set (which D5 will promote),
        # the backlog, and the precision/recall against the sidecar corpus.
        'pointer_counts': pointer_report['counts'],
        'pointer_precision': pointer_report['precision'],
        'pointer_recall': pointer_report['recall'],
        'promoted_pointers': pointer_report['promoted'],
        'unproven_data_words': pointer_report['unproven'],
        # D5: the words actually spliced into the emitted source, and anything
        # the promotion pass declined (with a reason) so the corpus can grow.
        'promoted_data_words': promotion_report['promoted'],
        'promotion_skipped': promotion_report['skipped'],
        'address_records': _build_address_records(
            insns, mem_symbols, mem_equ, segment_flow, label_map, start_offset,
            data_labels=data_labels, reloc_targets=reloc_targets,
            immediate_labels=immediate_labels),
        # Rendering context for ``make elf-rebuild``'s C-fragment resplice:
        # without these maps a recompiled fragment loses the resolved operand
        # symbols (e.g. ``bss_0d00``) and the binary's local-label numbering.
        'render_context': {
            'local_labels': local_labels,
            'mem_symbols': mem_symbols,
            'mem_equ': mem_equ,
            'data_labels': data_labels,
            'foreign_label_map': foreign_label_map,
            'immediate_labels': immediate_labels,
            'exact_bytes': bool(exact_bytes),
            'label_records': [(rec['offset'], rec['text'])
                              for rec in records if rec['type'] == 'label'],
        },
        'status': 'OK',
        'timing_func_boundaries': t1 - t0,
        'timing_local_labels': t2 - t1,
        'timing_main_loop': t3 - t2,
        'timing_format': timing_format,
        'timing_postprocess': t4 - t3,
        'timing_emit_class': t5 - t4,
        'timing_build_source': t6 - t5,
    }, emit_class, label_positions, split_sources
