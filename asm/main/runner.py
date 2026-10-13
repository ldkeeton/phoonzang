"""Core per-binary disassembly pipeline (:func:`process`)."""

import json
import os
import sys
import time

import polars as pl

from lib.trace import TraceWriter
from lib.diagnostics import begin as diag_begin, flush as diag_flush
from lib.diagnostics import phase as diag_phase, emit as diag_emit, enabled as diag_enabled

from lib.decode import disassemble
from lib.compare import (
    verify,
    clear_assemble_cache,
    find_db_with_comment_lines,
    UnencodedInstructionError,
    _function_roots,
    _compute_branch_ownership,
    _local_branch_targets,
)
from lib.verify.assemble import assemble_stats, reset_assemble_stats
from lib.struct_analysis import build_structs
from lib.match import match_patterns, match_trampolines, categorize_call_targets
from lib.phases import (
    SettlePhase, ForceCodePhase, ArbiterPhase,
)
from lib.model import PhaseContext, IS_CODE, IS_DATA
from lib.pipeline import run_functional, run_iterative, report_timings
from lib.pipeline.definition import PipelineDef, Stage
from lib.segments import (
    from_binary as build_segment_model,
    check_bss_boundary,
    SegmentError,
)
from lib.segdataflow import (
    analyze as analyze_segments,
    operand_space_counts,
)
from lib.cross_ref import overlay_host_aliases
from lib.names import (
    rename_generics, set_generic_prefix, startswith_stem,
)
from lib.report import write_report, write_layers, write_summary, print_short_report

from .aztec import _aztec_asm_annotations, _aztec_c_overrides
from lib.autogen import write_text
from .emit import _write_address_inventory, _write_render_context
from .options import (
    ASM_DIR,
    AZTEC_PREBUILD_ONLY,
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
    _label_app_functions,
    _load_known_funcs,
    _seed_aztec_stubs,
    _seed_csav_functions,
)


def process(name, orig_dir, rel_path, start_offset, exact_bytes=False, show_offsets=True, output_dir=None, project=None, sidecar_entry=None,
            foreign_label_map=None, export_labels=False, host_model=None,
            foreign_prefix=None, host_data_offsets=None):
    set_generic_prefix('')
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
    known_db = _load_known_funcs(project or os.path.basename(os.path.normpath(orig_dir)))
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

    # ── Build label map ──
    label_targets = ctx.label_target_set
    # Let the MZ entry participate in matching so a runtime signature (e.g.
    # Aztec's ``$begin`` startup) can name it instead of the generic label.
    if mz_entry_point is not None and mz_entry_point in ctx.code_targets:
        label_targets.add(mz_entry_point)
    label_map = match_patterns(data, label_targets, known_db, max_func_size)

    trampoline_map = match_trampolines(data, label_targets, known_db)
    for off, lbl in trampoline_map.items():
        if off not in label_map:
            label_map[off] = lbl

    if sidecar_entry:
        fn_offset = sidecar_entry.get('ghidra_base_offset', 0)
        for hex_off, info in sidecar_entry.get('function_names', {}).items():
            try:
                off = int(hex_off, 16) + start_offset + fn_offset
            except ValueError:
                continue
            if off in ctx.code_targets:
                label_map[off] = info.get('name', f'fn_{hex_off}')

    # The MZ header determines the executable entry point. Prefer a name
    # discovered by pattern matching or the sidecar; otherwise fall back to
    # the generic 'entry_point' label.
    if mz_entry_point is not None and mz_entry_point in ctx.code_targets:
        label_targets.add(mz_entry_point)
        label_map.setdefault(mz_entry_point, 'entry_point')

    # Aztec stack-checked application functions: name pure runtime wrappers
    # after the routine they forward to, and everything else with a callee
    # affinity tag (or a bare app_<addr>).
    _label_app_functions(label_map, ctx, instructions)

    direct_call_targets = {
        address for address, info in ctx.code_targets.items()
        if info.reason == 'direct_call'
    }
    label_map = categorize_call_targets(
        data, label_targets, label_map, instructions=instructions,
        function_roots=label_targets, bounded_targets=direct_call_targets,
        trace=ctx.trace,
    )
    function_roots = _function_roots(
        label_map, instructions,
        entry_points=(seed.address for seed in ctx.seeds),
        binary_size=len(data), start_offset=start_offset,
    )
    extra_flow_edges = {
        (table.jmp_addr, target)
        for table in ctx.jump_tables
        if table.validated and table.validation_ok
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
    # For the segment dataflow every recovered switch-table arm is a real
    # code entry whose default segment (DS/CS) should be known, even when the
    # table itself failed the strict terminator-based validation.
    segment_edges = set(extra_flow_edges) | set(ctx.branch_edges)
    for table in ctx.jump_tables:
        for target in table.targets:
            segment_edges.add((table.jmp_addr, target))
    ctx.segment_flow = analyze_segments(
        instructions, ctx.segments, binary_data=data,
        function_roots=set(function_roots),
        extra_edges=segment_edges,
    )
    ctx.report['segment_flow'] = operand_space_counts(
        instructions, ctx.segment_flow)
    local_branch_targets = _local_branch_targets(
        ctx.branch_targets | {target for _, target in direct_edges},
        owners, edge_sources, function_roots,
    )
    for target in local_branch_targets:
        label_targets.discard(target)
        if label_map.get(target) == f'loc_{target:04x}':
            del label_map[target]
    external_branch_targets = {
        target for target in ctx.branch_targets
        if target in ctx.code_targets
        and target not in local_branch_targets
    }
    label_targets |= external_branch_targets
    for off in external_branch_targets:
        label_map.setdefault(off, f'loc_{off:04x}')

    for off in label_targets:
        if off not in label_map:
            label_map[off] = f'loc_{off:04x}'

    # A sidecar ``entry_symbol`` names the true entry point for this binary
    # (project-specific; e.g. DSAVANT's ``aztec_begin``).  Make it
    # authoritative so the MZ header's ``e_ip`` renders symbolically
    # (``dw <entry_symbol> - IMAGE_BASE``) instead of freezing the original
    # constant or falling back to the generic ``entry_point`` label.
    entry_symbol = (ctx.sidecar_entry or {}).get('entry_symbol')
    if (entry_symbol and mz_entry_point is not None
            and mz_entry_point in ctx.code_targets):
        label_targets.add(mz_entry_point)
        label_map[mz_entry_point] = entry_symbol

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
        ctx.segment_flow = analyze_segments(
            instructions, ctx.segments, binary_data=data,
            function_roots=set(function_roots),
            extra_edges=segment_edges,
        )
        ctx.report['segment_flow'] = operand_space_counts(
            instructions, ctx.segment_flow)

    if diag_enabled() and _ITERATIVE:
        squashed_arr = ctx.layers['squashed'].to_numpy()
        diag_phase('post_refine')
        diag_emit('code_bytes', int((squashed_arr == IS_CODE).sum()))

    if diag_enabled():
        loc_count = sum(1 for v in label_map.values() if startswith_stem(v, 'loc_'))
        data_count = sum(1 for v in label_map.values() if startswith_stem(v, 'data_'))
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
    c_overrides, _entries = _aztec_c_overrides(
        project, name, data, ctx.label_map, out_dir)
    asm_annotations = _aztec_asm_annotations(_entries, ctx.label_map)
    t_aztec_end = time.perf_counter()

    if AZTEC_PREBUILD_ONLY:
        # `make prebuild`: the mux manifest is written; nothing downstream of
        # this point (emit/NASM/build_out) belongs to a prebuild.
        return ctx.bitmap, label_map

    structs = build_structs(instructions)

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
        and not startswith_stem(root_name, ('loc_', 'data_'))
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
    # Overlay near calls resolve to host functions: translate each recovered
    # out-of-range target to the host label map so it is symbolized by name
    # (the alias keeps the overlay-space value, so bytes round-trip).
    if foreign_label_map:
        foreign_label_map = overlay_host_aliases(
            foreign_label_map, ctx.segments, instructions,
            start_offset, len(data), foreign_prefix,
        )
    asm_text, stats, emit_bytes, label_positions, split_sources = verify(
        data, start_offset, instructions, name, ctx.label_map,
        bitmap=ctx.bitmap, code_targets=ctx.code_target_set,
        exact_bytes=exact_bytes, show_offsets=show_offsets,
        structs=structs,
        asm_dir=out_dir,
        carve_1=carve_1,
        trace=ctx.trace,
        foreign_label_map=foreign_label_map,
        immediate_labels=immediate_labels,
        split_functions=split_functions,
        hard_data=ctx.hard_data,
        function_roots=function_roots,
        branch_targets=ctx.branch_targets,
        branch_edges=ctx.branch_edges,
        extra_flow_edges=extra_flow_edges,
        label_comments=label_comments,
        c_overrides=c_overrides,
        asm_annotations=asm_annotations,
        jump_tables=ctx.jump_tables,
        jump_table_overrides=(ctx.sidecar_entry or {}).get('jump_tables', []),
        external_data=(ctx.sidecar_entry or {}).get('external_data', {}),
        segment_flow=ctx.segment_flow,
        segments=ctx.segments,
        entry_symbol=entry_symbol,
        data_pointers=(ctx.sidecar_entry or {}).get('data_pointers', []),
        not_pointers=(ctx.sidecar_entry or {}).get('not_pointers', []),
        host_data_offsets=host_data_offsets,
    )
    # D7.1: export the host-owned DS names this overlay references so the make
    # layer can hand the union to the host (which declares one recipe per
    # offset).  This is the data analogue of ``--export-labels``.
    if project and stats.get('host_data_refs'):
        from lib.cachedirs import labels_dir
        target_dir = labels_dir(project)
        os.makedirs(target_dir, exist_ok=True)
        with open(os.path.join(target_dir, f'{name}_hostdata.json'), 'w') as f:
            json.dump(stats['host_data_refs'], f, indent=1, sort_keys=True)
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

    os.makedirs(out_dir, exist_ok=True)
    for include_path, include_text in split_sources.items():
        path = os.path.join(out_dir, include_path)
        os.makedirs(os.path.dirname(path), exist_ok=True)
        write_text(path, include_text)
    spans = stats.get('aztec_spans') or {}
    if spans and project:
        from lib.cachedirs import spans_dir
        target_dir = spans_dir(project)
        os.makedirs(target_dir, exist_ok=True)
        with open(os.path.join(target_dir, f'{name}_aztec_spans.json'), 'w') as f:
            json.dump(spans, f, indent=1, sort_keys=True)
    asm_path = os.path.join(out_dir, f'{name}.asm')
    write_text(asm_path, asm_text)
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

    print(f'{name}: {len(instructions)} insns -> {asm_path}  '
          f'mnem={stats["mnemonic"]} db={stats["data"]} '
          f'dbc={dbc} blocks={stats["data_blocks"]} '
          f'lbl={stats["labels"]}  structs={stats["structs"]}  '
          f'code={code_bytes}({pct:.0f}%) data={data_bytes}  '
          f'bare=[mem:{stats["bare_mem"]} call:{stats["bare_call"]} dbc:{stats["bare_dbc"]}]  '
          f'loss={stats.get("code_loss", 0)}  '
          f'aztec={stats.get("aztec_labels", 0)}  '
          f'[{stats["status"]}]')
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
          f'nasm={a_stats["spawns"]}sp+{a_stats["hits"]}c/{a_stats["time"]:.1f}s '
          f'total: {t_end-t_total:.1f}s')
    print(f'  classify phases:')
    print(classify_timing)
    if ctx.report.get('iterative'):
        it = ctx.report['iterative']
        print(f'  iterative: {it["iterations"]} iters, converged={it["converged"]}')

    ctx.report['verify'] = {
        'status': stats['status'],
        'mnemonic': stats['mnemonic'],
        'data': stats['data'],
        'with_comment': stats.get('with_comment', 0),
        'data_blocks': stats['data_blocks'],
        'labels': stats['labels'],
        'structs': stats['structs'],
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
    if STATS:
        write_report(ctx, asm_text)
        write_layers(ctx)
        write_summary(ctx, asm_text)
    print_short_report(ctx)

    if export_labels and label_map and project:
        from lib.cachedirs import labels_dir
        from lib.cross_ref import write_label_json
        target_dir = labels_dir(project)
        os.makedirs(target_dir, exist_ok=True)
        json_path = os.path.join(target_dir, f'{name}_labels.json')
        from lib.compare.vendor import _vendor_named_tails
        renamed = _vendor_named_tails(label_map, asm_annotations)
        exported = {a: n for a, n in label_map.items() if a not in renamed}
        write_label_json(exported, json_path)

    if _DECOMPILE:
        from lib.decompile import decompile
        bin_data = ctx.binary_data
        c_text = decompile(bin_data, start_offset, instructions, label_map,
                          ctx.code_target_set, structs, name)
        c_path = os.path.join(out_dir, f'{name}.c')
        write_text(c_path, c_text)
        print(f'  decompile: {len(instructions)} insns -> {c_path}')

    if trace_writer:
        trace_writer.close()

    return ctx.bitmap, label_map
