"""Core per-binary disassembly pipeline (:func:`process`)."""

import json
import os
import sys
import time
from types import SimpleNamespace

import polars as pl

from lib.trace import TraceWriter
from lib.diagnostics import begin as diag_begin, flush as diag_flush
from lib.diagnostics import phase as diag_phase, emit as diag_emit, enabled as diag_enabled

from lib.decode import disassemble
from lib.compare.verify import verify
from lib.verify.assemble import clear_assemble_cache
from lib.compare.records import (
    find_db_with_comment_lines,
    UnencodedInstructionError,
)
from lib.compare.analysis import (
    _function_roots,
    _compute_branch_ownership,
    _local_branch_targets,
)
from lib.verify.assemble import assemble_stats, reset_assemble_stats
from lib.match.pattern import match_patterns
from lib.match.trampoline import match_trampolines
from lib.match.driver_slots import (driver_thunk_entries, entry_handlers,
                                    thunk_name)
from lib.match.categorize import categorize_call_targets
from lib.phases.settle import SettlePhase
from lib.phases.forcecode import ForceCodePhase
from lib.phases.arbiter import ArbiterPhase
from lib.model import PhaseContext, IS_CODE, IS_DATA
from lib.pipeline.functional import (
    run_functional,
    report_timings,
)
from lib.pipeline.iterative import run_iterative
from lib.pipeline.definition import PipelineDef, Stage
from lib.segments import (
    from_binary as build_segment_model,
    check_bss_boundary,
    SegmentError,
)
from lib.segdataflow import (
    analyze as analyze_segments,
    operand_space_counts,
    _relocation_offsets,
)
from lib.phases.recursive import _code_off
from lib.compare.jumptables import _case_symbol
from lib.cross_ref import overlay_host_aliases
from lib.names import (
    is_data, is_label, rename_generics, set_generic_prefix, tag_generics,
)
from lib import symtab
from lib.symtab import GENERIC, Kind, Source, Space, Symbol
from lib.sidecar.usage import SidecarUse
from lib import stagelog
from lib.report import write_report, write_layers, write_summary, print_short_report

from .aztec import _aztec_asm_annotations, _aztec_c_overrides
from lib.autogen import is_generated, stamp, write_text
from .emit import _write_address_inventory, _write_render_context
from .options import (
    ALLOW_DIFF,
    ASM_DIR,
    AZTEC_PREBUILD_ONLY,
    DETAILED_TIMINGS,
    STATS,
    _DIAG,
    _ITERATIVE,
    _MAX_FUNC_SIZE,
    _TRACE,
    _TRACE_ADDRESSES,
    _DECOMPILE,
)
from .phases import _build_classify_phases, _build_refine_phases
from .seeding import (
    _retag_app_functions,
    _label_app_functions,
    _load_aztec_signatures,
    _seed_aztec_stubs,
    _seed_csav_functions,
)


def process(name, *args, **kwargs):
    """Run one binary through the pipeline, recording its stage ledger."""
    project = kwargs.get('project')
    ledger = stagelog.begin(f'{project}/{name}')
    try:
        return _process(name, *args, **kwargs)
    finally:
        stagelog.end(ledger, stagelog.ledger_path(project, name)
                     if project else None)


def _analyze(name, orig_dir, rel_path, start_offset, output_dir=None,
             project=None, sidecar_entry=None, foreign_label_map=None,
             export_labels=False, host_model=None, foreign_prefix=None):
    """Classify and name one binary: everything short of rendering it.

    Returns a ``SimpleNamespace`` of the results, or ``None`` when the binary
    is missing.  Nothing is written under the project's output directory.
    """
    path = os.path.join(orig_dir, rel_path)
    if not os.path.exists(path):
        print(f'{name}: SKIP (file not found at {path})')
        return None

    with open(path, 'rb') as f:
        data = f.read()

    t_total = time.perf_counter()
    clear_assemble_cache()
    reset_assemble_stats()

    if _DIAG and project:
        diag_begin(project, name)

    trace_writer = TraceWriter(project, name, _TRACE_ADDRESSES) if _TRACE else None

    ctx = PhaseContext(
        binary_data=data,
        start_offset=start_offset,
        name=name,
        trace=trace_writer,
        sidecar_entry=sidecar_entry,
        detailed_timings=DETAILED_TIMINGS,
    )

    binary_type = (sidecar_entry or {}).get('type')
    host = host_model if binary_type == 'aztec_overlay' else None
    try:
        ctx.segments = build_segment_model(data, binary_type, start_offset, host=host)
        crt_bss_range = check_bss_boundary(ctx.segments, data)
    except SegmentError as error:
        print(f'{name}: SEGMENT ERROR: {error}')
        raise
    if crt_bss_range is not None:
        ctx.report['segments'] = {
            'kind': ctx.segments.kind,
            'data_origin': ctx.segments.data_origin,
            'bss_boundary': ctx.segments.bss_boundary,
            'crt_bss_range': list(crt_bss_range),
        }

    mz_entry_point = next(
        (seed.address for seed in ctx.seeds
         if seed.source_phase == 'mz_entry'),
        None,
    )
    if project:
        ctx.report['project'] = project

    # orig_dir is apps/<project>, so the signature DB resolves even when the
    # caller did not name the project.
    known_db = _load_aztec_signatures(project or os.path.basename(os.path.normpath(orig_dir)))
    if sidecar_entry and sidecar_entry.get('api_dispatch'):
        known_db = dict(known_db)
        known_db.setdefault('api_dispatch', {}).update(sidecar_entry['api_dispatch'])
    max_func_size = _MAX_FUNC_SIZE if _MAX_FUNC_SIZE is not None else 256

    # Seed the program's own stack-checked application functions (csav) and
    # the runtime's indirectly-reached OS/interrupt veneer stubs.
    _seed_csav_functions(ctx)
    _seed_aztec_stubs(ctx)

    classify_phases = _build_classify_phases(known_db)
    last_classify_slot = classify_phases[-1].output_slot
    refine_phases = _build_refine_phases(last_classify_slot)

    if '--pipeline-report' in sys.argv:
        stages = [Stage('classify', phases=classify_phases, is_iterative=_ITERATIVE, max_iterations=3)]
        if not _ITERATIVE:
            stages.append(Stage('refine', phases=refine_phases))
        pipeline = PipelineDef(name=name, stages=stages)
        print(pipeline.print_report())

    if _ITERATIVE:
        all_iter_phases = classify_phases + [SettlePhase(input_slot=last_classify_slot, output_slot='settled')]
        run_iterative(ctx, all_iter_phases, arbiter_phase=ArbiterPhase(), max_iter=3)
    else:
        run_functional(ctx, classify_phases)
        run_functional(ctx, refine_phases)

    if diag_enabled():
        squashed_arr = ctx.layers['squashed'].to_numpy()
        diag_phase('pipeline')
        diag_emit('code_targets', len(ctx.code_targets))
        diag_emit('code_bytes', int((squashed_arr == IS_CODE).sum()))
        diag_emit('data_bytes', int((squashed_arr == IS_DATA).sum()))

    # Decode the classified code once before label selection. The CFG is used
    # to distinguish internal branches from function-entry transfers.
    t_flow_disasm_start = time.perf_counter()
    instructions = list(disassemble(data, start_offset, bitmap=ctx.bitmap))
    stagelog.step('flow.disassemble', 1, metrics={'insns': len(instructions)})

    # ── Build label map ──
    label_targets = ctx.label_target_set
    # Let the MZ entry participate in matching so a runtime signature (e.g.
    # Aztec's ``$begin`` startup) can name it instead of the generic label.
    if mz_entry_point is not None and mz_entry_point in ctx.code_targets:
        label_targets.add(mz_entry_point)
    label_map = match_patterns(data, label_targets, known_db, max_func_size)
    stagelog.step('label.match_patterns', 1, track={'label_map': label_map})

    trampoline_map = match_trampolines(data, label_targets, known_db)
    for off, lbl in trampoline_map.items():
        if off not in label_map:
            label_map[off] = lbl
    stagelog.step('label.trampolines', 1, track={'label_map': label_map})

    use = (sidecar_entry or {}).get('use') or SidecarUse('binaries.?')
    if sidecar_entry:
        fn_offset = sidecar_entry.get('ghidra_base_offset', 0)
        for hex_off, info in sidecar_entry.get('function_names', {}).items():
            try:
                off = int(hex_off, 16) + start_offset + fn_offset
            except ValueError:
                use.skipped('function_names', hex_off, 'not a hex offset')
                continue
            if off in ctx.code_targets:
                label_map[off] = (
                    _sidecar_routine(info['name'], off)
                    if 'name' in info else
                    Symbol.generated('fn', off, Kind.ROUTINE,
                                     text=f'fn_{hex_off}'))
                use.final_names[('function_names', hex_off)] = (
                    off, str(label_map[off]))
            else:
                use.skipped('function_names', hex_off,
                            f'file offset 0x{off:04x} is not a code target')
    stagelog.step('label.sidecar_names', 1, track={'label_map': label_map})

    # A driver names its jump-table entries' handlers (``dispatch_table``
    # ``names``), and a thunk that calls a driver's API through a declared slot
    # table is named by the entry its slot points at.
    table = (sidecar_entry or {}).get('dispatch_table') or {}
    handlers = entry_handlers(data, table) if table.get('names') else {}
    for key, entry_name in (table.get('names') or {}).items():
        off = handlers.get(int(key))
        if off is None or off not in ctx.code_targets:
            use.skipped('dispatch_table.names', key, 'no handler for the entry')
            continue
        label_map[off] = _sidecar_routine(entry_name, off)
        use.final_names[('dispatch_table.names', key)] = (off, entry_name)
    for slots in (sidecar_entry or {}).get('driver_slots') or ():
        entries = driver_thunk_entries(data, label_targets, slots, start_offset)
        for off, n in entries.items():
            label_map[off] = _sidecar_routine(
                thunk_name(n, slots), off)
            use.expect('driver_slots', f"{slots['offset']}[{n}]")
            use.final_names[('driver_slots', f"{slots['offset']}[{n}]")] = (
                off, str(label_map[off]))
        if entries:
            use.applied('driver_slots', slots['offset'])
        else:
            use.skipped('driver_slots', slots['offset'],
                        'no thunk calls through it')
    stagelog.step('label.driver_thunks', 1, track={'label_map': label_map})

    # The MZ header determines the executable entry point. Prefer a name
    # discovered by pattern matching or the sidecar; otherwise fall back to
    # the generic 'entry_point' label.
    if mz_entry_point is not None and mz_entry_point in ctx.code_targets:
        label_targets.add(mz_entry_point)
        label_map.setdefault(mz_entry_point, Symbol(
            'entry_point', kind=Kind.ROUTINE, source=Source.FIXED,
            offset=mz_entry_point))
    stagelog.step('label.entry_point', 1, track={'label_map': label_map})

    # Aztec stack-checked application functions: name pure runtime wrappers
    # after the routine they forward to, and everything else with a callee
    # affinity tag (or a bare app_<addr>).
    _label_app_functions(label_map, ctx, instructions)
    stagelog.step('label.app_functions', 1, track={'label_map': label_map})

    direct_call_targets = {
        address for address, info in ctx.code_targets.items()
        if info.reason == 'direct_call'
    }
    # A declared dispatch table's handlers are function entries by contract, so
    # their category must come from walking their own body.  Left to the fallback
    # they are read out of a raw 128-byte window that runs past the routine into
    # whatever bytes follow (play's `loc_0154` lost its `leaf_` name to a call in
    # the neighbouring data; `io_loc_016e`/`io_loc_0183` borrowed an `out` from a
    # data blob 100 bytes away).  D7.2c-2d.
    bounded_targets = direct_call_targets | ctx.dispatch_handlers
    label_map = categorize_call_targets(
        data, label_targets, label_map, instructions=instructions,
        function_roots=label_targets, bounded_targets=bounded_targets,
        trace=ctx.trace,
    )
    stagelog.step('label.categorize', 1, track={'label_map': label_map})
    function_roots = _function_roots(
        label_map, instructions,
        entry_points=(seed.address for seed in ctx.seeds),
        binary_size=len(data), start_offset=start_offset,
    )
    # A switch arm is a block of the function that dispatches it, not a function
    # entry: an address reached only through a ``jmp [table]`` loses the root a
    # generic category name (``string_loc_``, ``leaf_loc_``) gave it, so the
    # ownership pass below keeps the arm -- and the table and dispatcher -- in one
    # fragment.  A direct call target, a seed, a declared handler or a named
    # (signature/sidecar) routine stays a root.
    insn_at = {insn.address: insn for insn in instructions}
    # An Aztec inline switch (``call <dispatch>`` followed by its key/target
    # table, ``keys > 0``) never returns to the call: its arms are the
    # switch's blocks exactly like a ``jmp [table]``'s.
    switch_arms = {
        target
        for table in ctx.jump_tables
        if table.validated and table.validation_ok and table.jmp_addr >= 0
        and (table.keys > 0
             or getattr(insn_at.get(table.jmp_addr), 'mnemonic', '') == 'jmp')
        for target in table.targets
    }
    pinned = (direct_call_targets | ctx.dispatch_handlers
              | {seed.address for seed in ctx.seeds})
    for address in switch_arms - pinned:
        root_name = function_roots.get(address)
        if address in function_roots and (
                root_name is None
                or getattr(root_name, 'source', None) in GENERIC):
            del function_roots[address]
    stagelog.step('flow.function_roots', 1, track={'function_roots': function_roots})
    extra_flow_edges = {
        (table.jmp_addr, target)
        for table in ctx.jump_tables
        if table.validated and table.validation_ok and table.jmp_addr >= 0
        for target in table.targets
    }
    extra_flow_edges.update(
        (info.source_offset, address)
        for address, info in ctx.code_targets.items()
        if info.reason == 'indirect_jmp' and info.source_offset >= 0
    )
    owners, edge_sources, direct_edges, function_roots = _compute_branch_ownership(
        instructions, function_roots, ctx.branch_edges, extra_flow_edges,
        binary_size=len(data), start_offset=start_offset,
    )
    stagelog.step('flow.ownership', 1, 'repair', repairs='flow.function_roots',
                  why='ownership adds and drops roots the first scan guessed',
                  track={'function_roots': function_roots,
                         'owners': owners})
    # For the segment dataflow every recovered switch-table arm is a real
    # code entry whose default segment (DS/CS) should be known, even when the
    # table itself failed the strict terminator-based validation.
    segment_edges = set(extra_flow_edges) | set(ctx.branch_edges)
    for table in ctx.jump_tables:
        for target in table.targets:
            if table.jmp_addr >= 0:
                segment_edges.add((table.jmp_addr, target))
    # Addresses entered from outside the image keep the caller convention;
    # every other root starts in the state its callers hand it.
    segment_entries = (ctx.dispatch_handlers
                       | {seed.address for seed in ctx.seeds}
                       | {target for table in ctx.jump_tables
                          for target in table.targets})
    ctx.segment_flow = analyze_segments(
        instructions, ctx.segments, binary_data=data,
        function_roots=set(function_roots),
        extra_edges=segment_edges, entry_roots=segment_entries,
    )
    ctx.report['segment_flow'] = operand_space_counts(
        instructions, ctx.segment_flow)
    stagelog.step('flow.segments', 1)
    local_branch_targets = _local_branch_targets(
        ctx.branch_targets | {target for _, target in direct_edges},
        owners, edge_sources, function_roots,
    )
    for target in local_branch_targets:
        label_targets.discard(target)
        sym = label_map.get(target)
        if sym is not None and sym.kind is Kind.LABEL:
            del label_map[target]
    external_branch_targets = {
        target for target in ctx.branch_targets
        if target in ctx.code_targets
        and target not in local_branch_targets
    }
    label_targets |= external_branch_targets
    for off in external_branch_targets:
        label_map.setdefault(off, Symbol.generated('loc', off, Kind.LABEL))

    for off in label_targets:
        if off not in label_map:
            label_map[off] = Symbol.generated('loc', off, Kind.LABEL)
    stagelog.step('label.branch_targets', 1, 'repair', repairs='label.categorize',
        why='branch targets local to a routine are not labels; the rest get loc_',
        track={'label_map': label_map})
    # A switch arm is named after its table and first slot
    # (``jumptable_<table>_case_<n>``), not after the generic category its body
    # happened to get, and marked as a case so the file split does not start a
    # fragment there: the switch -- prologue, bodies, table, dispatcher -- is one
    # routine's file.
    first_slot = {}
    for table in sorted(ctx.jump_tables, key=lambda t: t.table_addr):
        if not (table.validated and table.validation_ok and table.jmp_addr >= 0):
            continue
        end = table.table_end or table.table_addr
        for index, word in enumerate(range(table.table_addr, end - 1, 2)):
            if index < table.keys:
                continue
            target = _code_off(ctx, int.from_bytes(data[word:word + 2], 'little'))
            first_slot.setdefault(target, (table.table_addr, index))
    for address in switch_arms - pinned:
        label = label_map.get(address)
        if (address not in function_roots and isinstance(label, Symbol)
                and label.source in GENERIC):
            if address in first_slot:
                # Only the text changes: kind and source still say what the
                # body is (``analysis._compute_func_boundaries`` skips an
                # address-sourced label, and an arm without a boundary lets the
                # zero gap before it decode as code).
                case = _case_symbol(*first_slot[address], address)
                label_map[address] = label.renamed(str(case), label.source,
                                                   base=case.base, role='case')
            else:
                label_map[address] = label.renamed(str(label), label.source,
                                                   role='case')

    # A sidecar ``entry_symbol`` names the true entry point for this binary
    # (project-specific; e.g. DSAVANT's ``aztec_begin``).  Make it
    # authoritative so the MZ header's ``e_ip`` renders symbolically
    # (``dw <entry_symbol> - IMAGE_BASE``) instead of freezing the original
    # constant or falling back to the generic ``entry_point`` label.
    entry_symbol = (ctx.sidecar_entry or {}).get('entry_symbol')
    if (entry_symbol and mz_entry_point is not None
            and mz_entry_point in ctx.code_targets):
        label_targets.add(mz_entry_point)
        label_map[mz_entry_point] = _sidecar_routine(entry_symbol,
                                                     mz_entry_point)
        use.final_names[('entry_symbol', entry_symbol)] = (
            mz_entry_point, entry_symbol)
    elif entry_symbol:
        use.skipped('entry_symbol', entry_symbol,
                    'no MZ entry point' if mz_entry_point is None
                    else 'the MZ entry point is not a code target')
    stagelog.step('label.entry_symbol', 1, 'repair', repairs='label.entry_point',
        why='sidecar entry_symbol is authoritative', track={'label_map': label_map})

    ctx.label_map = label_map

    if _ITERATIVE:
        last_slot = [c for c in ctx.layers.columns
                      if c not in ('raw_byte', 'seed')
                      and not c.startswith('squashed_iter_')][-1]
        post_phases = [
            SettlePhase(input_slot=last_slot, output_slot='settled'),
            ForceCodePhase(),
            ArbiterPhase(),
        ]
        run_functional(ctx, post_phases)
        # The post-phases can promote bytes to code.  Recompute the
        # instruction stream and the segment dataflow against the final
        # bitmap so symbolization/emission see the same code the verifier
        # will filter on (otherwise promoted instructions fall back to the
        # generic ``data_`` namespace).  ``analyze_segments`` seeds any
        # promoted island the walk does not reach.
        instructions = list(disassemble(data, start_offset, bitmap=ctx.bitmap))
        stagelog.step('flow.reflow', 1, 'recompute', repairs='flow.disassemble',
            why='post-refine phases promote bytes to code',
            metrics={'insns': len(instructions)})
        ctx.segment_flow = analyze_segments(
            instructions, ctx.segments, binary_data=data,
            function_roots=set(function_roots),
            extra_edges=segment_edges, entry_roots=segment_entries,
        )
        ctx.report['segment_flow'] = operand_space_counts(
            instructions, ctx.segment_flow)

    # Name each address-derived routine after its code (see lib.names): the
    # same name then means the same code in every binary.  Done on the final
    # instruction stream, before anything keys on a routine's name.
    tag_generics(
        label_map, function_roots, instructions, data, len(data),
        stubs={off for off, lbl in trampoline_map.items()
               if label_map.get(off) == lbl},
        relocs=_relocation_offsets(ctx.segments),
        code_off=lambda value: _code_off(ctx, value),
    )
    stagelog.step('names.tag_generics', 1, 'repair', repairs='label.categorize',
        why='address-derived names become content tags',
        track={'label_map': label_map, 'function_roots': function_roots})
    # A sidecar ``routines`` entry names code by its content tag, so one entry
    # covers every binary that carries that routine.  One with a ``role`` and
    # ``library`` points at a library routine, which the vendor compile proves.
    routines = (sidecar_entry or {}).get('routines') or {}
    for off, label in list(label_map.items()):
        if isinstance(label, str) and 'name' in routines.get(label, {}):
            entry = routines[label]
            label_map[off] = label.renamed(
                entry['name'], Source.SIDECAR,
                **{k: entry[k] for k in ('role', 'library') if k in entry})
            if function_roots.get(off) == label:
                function_roots[off] = label_map[off]
    _retag_app_functions(label_map, ctx, function_roots)
    stagelog.step('names.sidecar_routines', 1, 'repair', repairs='names.tag_generics',
        why='sidecar routines rename content tags',
        track={'label_map': label_map, 'function_roots': function_roots})

    if diag_enabled() and _ITERATIVE:
        squashed_arr = ctx.layers['squashed'].to_numpy()
        diag_phase('post_refine')
        diag_emit('code_bytes', int((squashed_arr == IS_CODE).sum()))

    if diag_enabled():
        loc_count = sum(1 for v in label_map.values() if is_label(v))
        data_count = sum(1 for v in label_map.values() if is_data(v))
        named = len(label_map) - loc_count - data_count
        diag_phase('label_map')
        diag_emit('total', len(label_map))
        diag_emit('loc', loc_count)
        diag_emit('data', data_count)
        diag_emit('named', named)

    t_classify = time.perf_counter()
    classify_timing = report_timings()

    seed_addrs = {s.address for s in ctx.seeds}
    total_ct = len(ctx.code_targets)
    by_seed = len(seed_addrs & set(ctx.code_targets.keys()))
    by_call = total_ct - by_seed
    ctx.report['code_targets'] = {
        'total': total_ct,
        'by_seed': by_seed,
        'by_call': by_call,
    }

    t_classify_end = time.perf_counter()

    squashed = ctx.layers['squashed'].to_numpy()
    code_bytes = int((squashed == IS_CODE).sum())
    data_bytes = int((squashed == IS_DATA).sum())
    total_cls = code_bytes + data_bytes
    pct = code_bytes / max(total_cls, 1) * 100
    ctx.report['classification'] = {
        'code_bytes': code_bytes,
        'data_bytes': data_bytes,
        'code_pct': round(pct, 1),
    }

    ctx.report['classification']['instructions'] = len(instructions)
    t_disasm = time.perf_counter()

    if diag_enabled():
        diag_phase('disasm')
        diag_emit('insns', len(instructions))

    # Resolve Aztec routines before the verify/emit window so the (potentially
    # slow) DOSBox work is reported separately instead of inflating it.
    out_dir = output_dir or ASM_DIR
    t_aztec = time.perf_counter()
    c_overrides, _entries, header_files = _aztec_c_overrides(
        project, name, data, ctx.label_map, out_dir, function_roots,
        start_offset)
    asm_annotations = _aztec_asm_annotations(_entries, ctx.label_map,
                                             c_overrides)
    stagelog.step('aztec.overrides', 1, metrics={'c': len(c_overrides),
                                         'asm': len(asm_annotations)})
    if project:
        # Named inside _aztec_c_overrides, with the callees, until stable.
        stagelog.step('aztec.siblings', 1, 'repair', repairs='names.tag_generics',
                      why='a matched vendor module names the publics beside '
                          'the routine the signatures found',
                      track={'label_map': ctx.label_map,
                             'function_roots': function_roots})
    if ctx.segments is not None:
        ctx.segments.data_names = _data_names(
            project, name, data, ctx.label_map, ctx.segments, foreign_prefix,
            _entries)
        _apply_sidecar_data_names(ctx.segments, ctx.sidecar_entry)
        _apply_sidecar_code_data_names(ctx.segments, ctx.sidecar_entry)
    t_aztec_end = time.perf_counter()

    if AZTEC_PREBUILD_ONLY:
        # `make prebuild`: the mux manifest is written; nothing downstream of
        # this point (emit/NASM/build_out) belongs to a prebuild.
        return SimpleNamespace(prebuild_only=True, ctx=ctx, label_map=label_map)

    carve_1 = ctx.layers['carve_1'].to_numpy() if 'carve_1' in ctx.layers.columns else None

    raw_imm = (ctx.sidecar_entry or {}).get('immediate_labels', {})
    immediate_labels = {int(k, 16): v for k, v in raw_imm.items()}
    label_comments = {
        off: f'; Aztec csav frame=0x{frame:04x}'
        for off, frame in ctx.csav_functions.items()
    }
    split_functions = {
        signature['name']
        for signature in known_db.get('signatures', [])
        if isinstance(signature, dict) and isinstance(signature.get('name'), str)
    }
    split_functions.update(
        root_name
        for root_name in function_roots.values()
        if isinstance(root_name, str)
        and not is_label(root_name) and not is_data(root_name)
    )
    # The exported host's address-derived names (``loc_08f2``) get its name as a
    # prefix (``ds_loc_08f2``): an overlay includes the host's symbols to call
    # into it, and would otherwise clash with its own ``loc_08f2``.  Named
    # routines keep their names.  Everything downstream (verify, the label
    # export, spans, the overlay's foreign map) sees the prefixed names.
    if export_labels:
        set_generic_prefix(f'{name}_')
        rename_generics(ctx.label_map, function_roots, split_functions,
                        prefix=f'{name}_')
        stagelog.step('names.export_prefix', 1, 'repair', repairs='names.tag_generics',
            why='exported host generics get the host name as a prefix',
            track={'label_map': ctx.label_map, 'function_roots': function_roots})
    # Overlay near calls resolve to host functions: translate each recovered
    # out-of-range target to the host label map so it is symbolized by name
    # (the alias keeps the overlay-space value, so bytes round-trip).
    if foreign_label_map:
        foreign_label_map = overlay_host_aliases(
            foreign_label_map, ctx.segments, instructions,
            start_offset, len(data), foreign_prefix,
        )

    return SimpleNamespace(
        prebuild_only=False, name=name, project=project, data=data,
        start_offset=start_offset, ctx=ctx, trace_writer=trace_writer,
        instructions=instructions, label_map=label_map,
        function_roots=function_roots, extra_flow_edges=extra_flow_edges,
        foreign_label_map=foreign_label_map, entry_symbol=entry_symbol,
        foreign_prefix=foreign_prefix, carve_1=carve_1, immediate_labels=immediate_labels,
        label_comments=label_comments, split_functions=split_functions,
        out_dir=out_dir, c_overrides=c_overrides, entries=_entries,
        header_files=header_files,
        asm_annotations=asm_annotations, classify_timing=classify_timing,
        code_bytes=code_bytes, data_bytes=data_bytes, pct=pct,
        t_total=t_total, t_classify=t_classify, t_classify_end=t_classify_end,
        t_flow_disasm_start=t_flow_disasm_start, t_disasm=t_disasm,
        t_aztec=t_aztec, t_aztec_end=t_aztec_end,
    )


def _sidecar_routine(name, offset):
    """A routine the sidecar names.

    The sidecar spells a runtime-library routine ``aztec_<C name>``
    (``aztec_flsh_``); this is the one place that reads that spelling, so
    everything downstream checks ``role``/``library`` instead.
    """
    role = library = None
    if name.startswith('aztec_'):
        role, library = 'aztec', name[len('aztec_'):]
    return Symbol(name, kind=Kind.ROUTINE, source=Source.SIDECAR,
                  offset=offset, role=role, library=library)


def _data_names(project, name, data, label_map, segments, host, entries):
    """Known names for data-segment offsets: the library's, and the host's.

    The library code in the binary names the data it uses.  An overlay runs in
    its host's data segment, so it also takes the names the host exported
    (:func:`_export_labels`); those win where both name an offset.  Its own
    library code still names the data the overlay brought along (``$ovbgn``'s
    ``save_ret``), which the host never sees.
    """
    if not project:
        return {}
    from lib.aztec import libnames
    names = libnames.data_symbols(project, name, data, label_map, segments,
                                  entries)
    if segments.kind == 'overlay' and host:
        from lib.cachedirs import labels_dir
        from lib.cross_ref import read_label_json
        names.update(read_label_json(os.path.join(labels_dir(project),
                                                  f'{host}_datanames.json')))
    return names


def _apply_sidecar_data_names(segments, sidecar_entry):
    """Name the data objects the sidecar's ``data_names`` names.

    The sidecar outranks the library's name at the same offset.  An overlay's
    entries go on top of the names it took from its host.
    """
    entries = (sidecar_entry or {}).get('data_names') or {}
    if not entries:
        return
    from lib.compare.symbols import _data_space
    use = sidecar_entry.get('use') or SidecarUse('binaries.?')
    for offset, info in entries.items():
        ident = f'{offset:04x}'
        if segments.data_space(offset) is None:
            use.skipped('data_names', ident,
                        f'DS offset 0x{offset:04x} is not in the data segment')
            continue
        segments.data_names[offset] = Symbol(
            info['name'], kind=Kind.DATA, source=Source.SIDECAR, offset=offset,
            space=_data_space(segments, offset))
        use.applied('data_names', ident)


def _apply_sidecar_code_data_names(segments, sidecar_entry):
    """Name the CS-reached data the sidecar's ``code_data_names`` names."""
    entries = (sidecar_entry or {}).get('code_data_names') or {}
    if not entries:
        return
    use = sidecar_entry.get('use') or SidecarUse('binaries.?')
    for offset, info in entries.items():
        ident = f'{offset:04x}'
        if not 0 <= offset < (segments.file_size or 0):
            use.skipped('code_data_names', ident,
                        f'file offset 0x{offset:04x} is not in the image')
            continue
        segments.cseg_names[offset] = Symbol(
            info['name'], kind=Kind.DATA, source=Source.SIDECAR, offset=offset,
            space=Space.CSEG)
        use.applied('code_data_names', ident)


def _foreign_pointer_params(project, host):
    """The host's pointer arguments, ``{routine: [argument, ...]}``.

    Written by the host's labels-only pass, which runs before any consumer.
    """
    if not project or not host:
        return {}
    from lib.cachedirs import labels_dir
    from lib.link import read_export
    path = os.path.join(labels_dir(project), f'{host}_ptrparams.json')
    return {name: frozenset(args) for name, args in read_export(path).items()}


def _render(a, exact_bytes, show_offsets, host_data_offsets,
            ds_starts=frozenset(), final=True):
    """Render an analysed binary to assembly text; still writes no sources.

    The host's DS declarations depend on ``host_data_offsets``, which exist only
    once its consumers are built.  The labels the consumers need do not, which
    is why rendering is a separate step from analysing.  *final* is the render
    that will be emitted (not a labels-only one).
    """
    (name, project, data, start_offset, ctx, instructions, label_map,
     function_roots, extra_flow_edges, foreign_label_map, entry_symbol,
     carve_1, immediate_labels, label_comments, split_functions,
     out_dir, c_overrides, asm_annotations) = (
        a.name, a.project, a.data, a.start_offset, a.ctx, a.instructions,
        a.label_map, a.function_roots, a.extra_flow_edges,
        a.foreign_label_map, a.entry_symbol, a.carve_1,
        a.immediate_labels, a.label_comments, a.split_functions, a.out_dir,
        a.c_overrides, a.asm_annotations)
    asm_text, stats, emit_bytes, label_positions, split_sources = verify(
        data, start_offset, instructions, name, ctx.label_map,
        bitmap=ctx.bitmap, code_targets=ctx.code_target_set,
        exact_bytes=exact_bytes, show_offsets=show_offsets,
        carve_1=carve_1,
        trace=ctx.trace,
        foreign_label_map=foreign_label_map,
        immediate_labels=immediate_labels,
        split_functions=split_functions,
        declared_roots=ctx.dispatch_handlers,
        hard_data=ctx.hard_data,
        function_roots=function_roots,
        branch_targets=ctx.branch_targets,
        branch_edges=ctx.branch_edges,
        extra_flow_edges=extra_flow_edges,
        label_comments=label_comments,
        c_overrides=c_overrides,
        allow_diff=ALLOW_DIFF,
        asm_annotations=asm_annotations,
        jump_tables=ctx.jump_tables,
        jump_table_overrides=(ctx.sidecar_entry or {}).get('jump_tables', []),
        external_data=(ctx.sidecar_entry or {}).get('external_data', {}),
        segment_flow=ctx.segment_flow,
        segments=ctx.segments,
        entry_symbol=entry_symbol,
        data_pointers=(ctx.sidecar_entry or {}).get('data_pointers', []),
        not_pointers=(ctx.sidecar_entry or {}).get('not_pointers', []),
        char_tables=(ctx.sidecar_entry or {}).get('char_tables', []),
        immediate_pointers=(ctx.sidecar_entry or {}).get(
            'immediate_pointers', []),
        host_data_offsets=host_data_offsets,
        ds_starts=ds_starts,
        foreign_pointer_params=_foreign_pointer_params(project, a.foreign_prefix),
        sidecar_use=(ctx.sidecar_entry or {}).get('use'),
        bands=(ctx.sidecar_entry or {}).get('bands') or (),
    )
    stagelog.step('verify', 1, metrics={'lines': asm_text.count('\\n')})
    # D7.1: export the host-owned DS names this overlay references so the make
    # layer can hand the union to the host (which declares one recipe per
    # offset).  This is the data analogue of ``--export-labels``.
    # The emitting render's refs are the ones the host's union is drawn from.
    if project and final:
        from lib.link import write_host_data_export
        write_host_data_export(project, name, {
            str(sym): symtab.encode(sym)
            for sym in stats.get('host_data_refs') or ()})
    # The arguments this binary's routines read memory through, by name: the
    # overlays call the host's routines, so they read the host's file
    # (``lib.argpointers``).
    if project:
        from lib.cachedirs import labels_dir
        from lib.link import write_export
        write_export(os.path.join(labels_dir(project), f'{name}_ptrparams.json'),
                     stats.get('pointer_params', {}))
    # The host-space DS starts this binary names; the build unites the host
    # family's exports so each binary can bind an indexed operand to an object
    # another binary names (``symbols._resolve_indexed_symbols``).
    if project:
        from lib.link import write_ds_starts_export
        write_ds_starts_export(project, name, stats.get('ds_starts', ()))
    # Hard gate: a decoded instruction that could not be re-encoded is emitted
    # as ``db 0x.. ; <disassembly>``.  In the default semantic mode every
    # instruction must encode (exactly or semantically); these fallbacks are
    # regressions, not acceptable output.  ``--exact-bytes`` may legitimately
    # keep a few (NASM has no byte-exact spelling for every form).
    if stats.get('with_comment') and not exact_bytes:
        combined = asm_text + '\n' + '\n'.join(split_sources.values())
        lines = find_db_with_comment_lines(combined)
        sample = '\n'.join(f'    {line.strip()}' for line in lines[:10])
        if len(lines) > 10:
            sample += f'\n    ... and {len(lines) - 10} more'
        raise UnencodedInstructionError(
            f'{name}: {stats["with_comment"]} instruction(s) could not be '
            f're-encoded and were emitted as raw db bytes:\n{sample}')

    ctx.layers = ctx.layers.with_columns(pl.Series('emit', emit_bytes, dtype=pl.UInt8))
    ctx.layers = ctx.layers.with_columns(pl.Series('label_positions', label_positions, dtype=pl.UInt8))

    if diag_enabled():
        diag_phase('verify')
        diag_emit('mnemonic', stats['mnemonic'])
        diag_emit('data_blocks', stats['data_blocks'])
        diag_emit('code_loss', stats.get('code_loss', 0))
        diag_emit('bare_mem', stats.get('bare_mem', 0))
        diag_emit('bare_call', stats.get('bare_call', 0))
        diag_flush()


    return SimpleNamespace(asm_text=asm_text, stats=stats,
                           split_sources=split_sources)


def _emit(a, r, exact_bytes):
    """Lay out the rendered sources and report them.

    Returns the binary's files under ``src_<project>/`` as ``{relative path:
    text}``, each stamped as generated.  Nothing is written there here: the
    build places the routines every binary shares (:mod:`lib.shared`) and then
    writes each file once (:func:`write_files`).
    """
    (name, project, ctx, instructions, label_map, out_dir, entries,
     immediate_labels, classify_timing, code_bytes, data_bytes, pct,
     t_total, t_flow_disasm_start, t_disasm, t_aztec, t_aztec_end,
     t_classify, t_classify_end, asm_annotations) = (
        a.name, a.project, a.ctx, a.instructions, a.label_map, a.out_dir,
        a.entries, a.immediate_labels, a.classify_timing, a.code_bytes,
        a.data_bytes, a.pct, a.t_total, a.t_flow_disasm_start, a.t_disasm,
        a.t_aztec, a.t_aztec_end, a.t_classify, a.t_classify_end,
        a.asm_annotations)
    asm_text, stats = r.asm_text, r.stats
    split_sources = dict(r.split_sources)
    # The new C seeds (main.aztec) are this binary's files too, with the text
    # the render left them (a pristine seed is relabelled there).
    seeds = {os.path.relpath(ov['path'], out_dir): ov['text']
             for ov in (a.c_overrides or {}).values() if ov.get('generated')}
    for include_path in list(split_sources):
        if include_path.endswith('.asm'):
            split_sources[include_path] = stamp(split_sources[include_path],
                                                include_path)
    files = {**a.header_files, **seeds,
             **split_sources}
    asm_path = os.path.join(out_dir, f'{name}.asm')
    files[f'{name}.asm'] = asm_text
    spans = stats.get('aztec_spans') or {}
    if spans and project:
        from lib.cachedirs import spans_dir
        target_dir = spans_dir(project)
        os.makedirs(target_dir, exist_ok=True)
        with open(os.path.join(target_dir, f'{name}_aztec_spans.json'), 'w') as f:
            json.dump(spans, f, indent=1, sort_keys=True)
    t_end = time.perf_counter()

    if immediate_labels:
        imm_fail = 0
        for line in asm_text.split('\n'):
            if line.startswith('    db ') and ';' in line:
                for lbl in immediate_labels.values():
                    if lbl in line:
                        imm_fail += 1
                        break
    else:
        imm_fail = 0
    dbc = stats['with_comment']
    if imm_fail:
        dbc = f'{stats["with_comment"]}[immfail={imm_fail}]'

    if DETAILED_TIMINGS:
        print(f'{name}: {len(instructions)} insns -> {asm_path}  '
              f'mnem={stats["mnemonic"]} db={stats["data"]} '
              f'dbc={dbc} blocks={stats["data_blocks"]} '
              f'lbl={stats["labels"]}  '
              f'code={code_bytes}({pct:.0f}%) data={data_bytes}  '
              f'bare=[mem:{stats["bare_mem"]} call:{stats["bare_call"]} '
              f'dbc:{stats["bare_dbc"]}]  '
              f'loss={stats.get("code_loss", 0)}  '
              f'aztec={stats.get("aztec_labels", 0)}  '
              f'[{stats["status"]}]')
    else:
        print(f'{name}: {stats["status"]}')
    if DETAILED_TIMINGS:
        a_stats = assemble_stats()
        print(f'  classify+match: {t_classify_end-t_classify:.1f}s  '
              f'disasm: {t_disasm-t_flow_disasm_start:.1f}s  '
              f'aztec: {t_aztec_end-t_aztec:.1f}s  '
              f'verify+emit: {t_end-t_aztec_end:.1f}s  '
              f'(func_bounds={stats.get("timing_func_boundaries",0):.3f}s '
              f'local_lbl={stats.get("timing_local_labels",0):.3f}s '
              f'main_loop={stats.get("timing_main_loop",0):.3f}s '
              f'format={stats.get("timing_format",0):.3f}s '
              f'postproc={stats.get("timing_postprocess",0):.3f}s '
              f'emit_class={stats.get("timing_emit_class",0):.3f}s '
              f'build_src={stats.get("timing_build_source",0):.3f}s) '
              f'nasm={a_stats["spawns"]}sp+{a_stats["hits"]}c/'
              f'{a_stats["time"]:.1f}s '
              f'total: {t_end-t_total:.1f}s')
        print(f'  classify phases:')
        print(classify_timing)
        if ctx.report.get('iterative'):
            it = ctx.report['iterative']
            print(f'  iterative: {it["iterations"]} iters, '
                  f'converged={it["converged"]}')

    ctx.report['verify'] = {
        'status': stats['status'],
        'mnemonic': stats['mnemonic'],
        'data': stats['data'],
        'with_comment': stats.get('with_comment', 0),
        'data_blocks': stats['data_blocks'],
        'labels': stats['labels'],
        'bare_mem': stats.get('bare_mem', 0),
        'bare_call': stats.get('bare_call', 0),
        'bare_dbc': stats.get('bare_dbc', 0),
        'frozen_addr': stats.get('frozen_addr', 0),
        'frozen_addr_detail': stats.get('frozen_addr_detail', {}),
        'region_counts': stats.get('region_counts', {}),
        'region_deprioritised_bytes': stats.get('region_deprioritised_bytes', 0),
        'regions': stats.get('regions', []),
        'pointer_counts': stats.get('pointer_counts', {}),
        'pointer_precision': stats.get('pointer_precision'),
        'pointer_recall': stats.get('pointer_recall'),
        'promoted_pointers': stats.get('promoted_pointers', []),
        'unproven_data_words': stats.get('unproven_data_words', []),
        'promoted_data_words': stats.get('promoted_data_words', []),
        'promotion_skipped': stats.get('promotion_skipped', []),
    }
    ctx.report['addresses'] = stats.get('address_records', [])
    _write_address_inventory(project, name, label_map, ctx.report['addresses'])
    render_context = stats.pop('render_context', None)
    if project and render_context:
        _write_render_context(project, name, render_context)
    symbols = stats.pop('symbols', None)
    if project and symbols is not None:
        from lib.cachedirs import symbols_dir
        from lib.symtab import write_table
        write_table(os.path.join(symbols_dir(project), f'{name}.json'),
                    symbols)
    if STATS:
        write_report(ctx, asm_text)
        write_layers(ctx)
        write_summary(ctx, asm_text)
    print_short_report(ctx)


    if _DECOMPILE:
        from lib.decompile.driver import decompile
        c_text = decompile(instructions, label_map, ctx.code_target_set, name)
        files[f'{name}.c'] = c_text
        print(f'  decompile: {len(instructions)} insns -> '
              f'{os.path.join(out_dir, name)}.c')
    return {rel: stamp(text, rel) for rel, text in files.items()}


def write_files(out_dir, files):
    """Write a build's ``{relative path: text}`` under *out_dir*, each once."""
    for rel, text in sorted(files.items()):
        path = os.path.join(out_dir, rel)
        os.makedirs(os.path.dirname(path), exist_ok=True)
        write_text(path, text)


def _export_labels(a):
    """Keep the binary's labels for its consumers and for resplice."""
    name, project, label_map = a.name, a.project, a.label_map
    asm_annotations = a.asm_annotations
    # Every binary's labels are kept (not only an exported host's): resplice
    # re-renders a binary's C routines against them.
    if label_map and project:
        from lib.cachedirs import labels_dir
        from lib.cross_ref import write_label_json
        target_dir = labels_dir(project)
        os.makedirs(target_dir, exist_ok=True)
        json_path = os.path.join(target_dir, f'{name}_labels.json')
        from lib.compare.vendor import _vendor_named_tails
        renamed = _vendor_named_tails(label_map, asm_annotations)
        exported = {a: n for a, n in label_map.items() if a not in renamed}
        stagelog.step('export.labels', 1, 'cleanup', repairs='verify',
            why='labels vendored into a C routine are not exported',
            metrics={'renamed': len(renamed), 'exported': len(exported)})
        write_label_json(exported, json_path)
        write_label_json(getattr(a.ctx.segments, 'data_names', None) or {},
                         os.path.join(target_dir, f'{name}_datanames.json'))


def _process(name, orig_dir, rel_path, start_offset, exact_bytes=False,
             show_offsets=True, output_dir=None, project=None,
             sidecar_entry=None, foreign_label_map=None, export_labels=False,
             host_model=None, foreign_prefix=None, host_data_offsets=None,
             emit=True, ds_starts=frozenset()):
    """Generate one binary: analyse, render, export its labels, then emit.

    ``emit=False`` is the labels phase: the same analysis and render (so the
    labels are the ones the emitting run will produce), but no source is
    written and no status is printed.  The build uses it for the host, whose
    emitted source must wait for its consumers' DS offsets.
    """
    a = analyze(name, orig_dir, rel_path, start_offset, output_dir=output_dir,
                project=project, sidecar_entry=sidecar_entry,
                foreign_label_map=foreign_label_map,
                export_labels=export_labels, host_model=host_model,
                foreign_prefix=foreign_prefix)
    if a is None:
        return None
    if a.prebuild_only:
        # `make prebuild`: the mux manifest is written; nothing downstream of
        # this point (emit/NASM/build_out) belongs to a prebuild.
        return a.ctx.bitmap, a.label_map
    try:
        files = step(a, exact_bytes, show_offsets, host_data_offsets,
                     ds_starts, emit)
    finally:
        finish(a)
    if files:
        write_files(a.out_dir, files)
    return a.ctx.bitmap, a.label_map


def analyze(name, *args, export_labels=False, **kwargs):
    """:func:`_analyze`, from a clean generic prefix; keep it for :func:`step`."""
    set_generic_prefix('')
    a = _analyze(name, *args, export_labels=export_labels, **kwargs)
    if a is not None:
        a.generic_prefix = f'{name}_' if export_labels else ''
    return a


def step(a, exact_bytes, show_offsets, host_data_offsets, ds_starts, emit):
    """One build step of an analysed binary: render, export, maybe emit.

    The build runs a binary's steps against one analysis (its labels-only
    render, then the emitting one), so nothing here changes *a*'s analysis.
    Returns the emitted files (:func:`_emit`), or ``None`` for a labels-only
    step.
    """
    set_generic_prefix(a.generic_prefix)
    r = _render(a, exact_bytes, show_offsets, host_data_offsets, ds_starts,
                final=emit)
    _export_labels(a)
    if not emit:
        return None
    _check_sidecar_use(a, a.project, a.name)
    return _emit(a, r, exact_bytes)


def finish(a):
    """Release what an analysis holds open once its last step has run."""
    if a.trace_writer:
        a.trace_writer.close()


def _check_sidecar_use(a, project, name):
    """Fail on a sidecar entry of this binary that applied to nothing.

    Runs on the emitting pass only: a labels-only pass repeats the same
    analysis.  The build-wide keys (one entry covers every binary) are
    exported for ``main.build`` to check across all of them.
    """
    from lib.link import write_sidecar_use_export
    sidecar = a.ctx.sidecar_entry or {}
    use = sidecar.get('use')
    if use is None:
        if project:
            write_sidecar_use_export(project, name, {})
        return
    use.check_names(a.label_map)
    use.check()
    if not project:
        return
    from lib.sidecar.compiler import matching_prefix
    names = {str(label) for label in a.label_map.values()}
    routines = sidecar.get('routines') or {}
    write_sidecar_use_export(project, name, {
        'routines': [key for key, entry in routines.items()
                     if entry.get('name') in names],
        'api_dispatch': [key for key, entry in
                         (sidecar.get('api_dispatch') or {}).items()
                         if entry.get('name') in names],
        'vendor_patches': [label for label in sidecar.get('vendor_patches', ())
                           if label in names],
        'compiler_flags': [p for p in (matching_prefix(project, label)
                                       for label in a.c_overrides or ())
                           if p is not None],
    })
