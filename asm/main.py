#!/usr/bin/env python3
"""Disassemble DOS binaries -> byte-exact NASM assembly (.asm).

Scans ``apps/`` for app directories.  For each app:
  - Discovers binary files (.exe/.ovr/.drv)
  - Disassembles each to ``asm_<project>/<name>.asm``
  - Copies non-binary assets to ``asm_<project>/``
  - Creates ``asm_<project>/build_out/``
"""

import json
import os
import polars as pl
import shutil
import subprocess
import sys
import tempfile
import time

ASM_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.dirname(ASM_DIR)
APPS_DIR = os.path.join(PROJECT_ROOT, 'apps')
KNOWN_FUNCS_PATH = os.path.join(ASM_DIR, 'lib', 'known_funcs.json')

from lib.trace import TraceWriter
from lib.diagnostics import begin as diag_begin, flush as diag_flush
from lib.diagnostics import phase as diag_phase, emit as diag_emit, enabled as diag_enabled

from lib.decode import disassemble
from lib.verify.compare import (
    verify,
    clear_assemble_cache,
    _compute_func_boundaries,
    _function_roots,
    _compute_branch_ownership,
    _local_branch_targets,
)
from lib.struct_analysis import build_structs
from lib.match import match_patterns, match_trampolines, categorize_call_targets
from lib.phases import (
    SeedPhase, SidecarPhase, CarvePhase,
    TrampolinePhase, ErrorHandlerPhase, RecursiveDescentPhase,
    PruneDeadPhase, PruneDeadBeforePhase, PruneZeroPhase,
    SettlePhase, ArbiterPhase, ForceCodePhase, PatternSeedPhase,
    BorlandOverlayPhase, DispatchTablePhase,
    CascadeTargetPhase,
)
from lib.model import PhaseContext, IS_CODE, IS_DATA, IS_UNKNOWN
from lib.pipeline import run_functional, run_iterative, report_timings
from lib.pipeline.definition import PipelineDef, Stage
from lib.sidecar import (
    SidecarError,
    load as load_sidecar,
    per_binary as sidecar_per_binary,
)
from lib.report import write_report, write_layers, print_short_report, print_compare


def _load_known_funcs():
    if not os.path.exists(KNOWN_FUNCS_PATH):
        return {'signatures': []}
    import json
    with open(KNOWN_FUNCS_PATH) as f:
        return json.load(f)


def _build_classify_phases(known_db=None):
    phases = [
        SeedPhase(),
        SidecarPhase(),
        BorlandOverlayPhase(),
        DispatchTablePhase(),
    ]
    if known_db and known_db.get('signatures'):
        phases.append(PatternSeedPhase(
            known_db=known_db,
            input_slot='sidecar',
            output_slot='pattern_seed',
        ))
    phases.extend([
        CarvePhase(min_body=6, input_slot='pattern_seed' if known_db and known_db.get('signatures') else 'sidecar',
                    output_slot='carve_1'),
        TrampolinePhase(input_slot='carve_1'),
        ErrorHandlerPhase(),
        RecursiveDescentPhase(input_slot='error_handler', output_slot='recursive'),
        PruneDeadPhase(),
        PruneDeadBeforePhase(),
        PruneZeroPhase(),
        CarvePhase(min_body=4, input_slot='prune_zero', output_slot='carve_2'),
        CascadeTargetPhase(),
    ])
    return phases


def _build_refine_phases(last_classify_slot):
    return [
        SettlePhase(input_slot=last_classify_slot, output_slot='settled'),
        ForceCodePhase(),
        ArbiterPhase(),
    ]


def discover_binaries(directory):
    bins = {}
    if not os.path.isdir(directory):
        return bins
    for entry in os.listdir(directory):
        lower = entry.lower()
        if lower.endswith('.ovr'):
            bins[lower[:-4]] = (entry, 8)
        elif lower.endswith('.drv'):
            bins[lower[:-4]] = (entry, 0)
        elif lower.endswith('.exe'):
            path = os.path.join(directory, entry)
            with open(path, 'rb') as f:
                sig = f.read(2)
            if sig != b'MZ':
                continue
            bins[lower[:-4]] = (entry, 0x200)
    return bins


EXACT_BYTES = '--exact-bytes' in sys.argv
EXPORT_LABELS = '--export-labels' in sys.argv
FOREIGN_LABELS_PATH = None
FOREIGN_PREFIX = None
_MAX_FUNC_SIZE = None
for a in sys.argv:
    if a.startswith('--foreign-labels='):
        FOREIGN_LABELS_PATH = a.split('=', 1)[1]
    elif a.startswith('--foreign-prefix='):
        FOREIGN_PREFIX = a.split('=', 1)[1]
    elif a.startswith('--max-func-size='):
        try:
            _MAX_FUNC_SIZE = int(a.split('=', 1)[1])
        except ValueError:
            pass

_ITERATIVE = '--no-iterate' not in sys.argv
_TRACE = '--trace' in sys.argv
_TRACE_ADDRESSES = set()
for arg in sys.argv:
    if arg.startswith('--trace-address='):
        value = arg.split('=', 1)[1]
        try:
            _TRACE_ADDRESSES.add(int(value, 0))
        except ValueError:
            try:
                _TRACE_ADDRESSES.add(int(value, 16))
            except ValueError:
                print(f'Ignoring invalid trace address: {value}', file=sys.stderr)
_DIAG = '--diag' in sys.argv
# Instruction offsets are shown by default; this flag suppresses the comments.
_SHOW_OFFSETS = '--no-show-offsets' not in sys.argv
_DECOMPILE = '--decompile' in sys.argv

def process(name, orig_dir, rel_path, start_offset, exact_bytes=False, show_offsets=True, output_dir=None, project=None, sidecar_entry=None,
            foreign_label_map=None, export_labels=False):
    path = os.path.join(orig_dir, rel_path)
    if not os.path.exists(path):
        print(f'{name}: SKIP (file not found at {path})')
        return None

    with open(path, 'rb') as f:
        data = f.read()

    t_total = time.perf_counter()
    clear_assemble_cache()

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
    mz_entry_point = next(
        (seed.address for seed in ctx.seeds
         if seed.source_phase == 'mz_entry'),
        None,
    )
    if project:
        ctx.report['project'] = project

    known_db = _load_known_funcs()
    if sidecar_entry and sidecar_entry.get('api_dispatch'):
        known_db = dict(known_db)
        known_db.setdefault('api_dispatch', {}).update(sidecar_entry['api_dispatch'])
    max_func_size = _MAX_FUNC_SIZE if _MAX_FUNC_SIZE is not None else 256

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

    # The MZ header determines the executable entry point. Keep its public
    # label stable even when pattern matching or sidecar names identify it.
    if mz_entry_point is not None and mz_entry_point in ctx.code_targets:
        label_targets.add(mz_entry_point)
        label_map[mz_entry_point] = 'entry_point'

    direct_call_targets = {
        address for address, info in ctx.code_targets.items()
        if info.reason == 'direct_call'
    }
    label_map = categorize_call_targets(
        data, label_targets, label_map, instructions=instructions,
        function_roots=label_targets, bounded_targets=direct_call_targets,
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

    if diag_enabled() and _ITERATIVE:
        squashed_arr = ctx.layers['squashed'].to_numpy()
        diag_phase('post_refine')
        diag_emit('code_bytes', int((squashed_arr == IS_CODE).sum()))

    if diag_enabled():
        loc_count = sum(1 for v in label_map.values() if v.startswith('loc_'))
        data_count = sum(1 for v in label_map.values() if v.startswith('data_'))
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

    structs = build_structs(instructions)

    out_dir = output_dir or ASM_DIR

    carve_1 = ctx.layers['carve_1'].to_numpy() if 'carve_1' in ctx.layers.columns else None

    raw_imm = (ctx.sidecar_entry or {}).get('immediate_labels', {})
    immediate_labels = {int(k, 16): v for k, v in raw_imm.items()}
    split_functions = {
        signature['name']
        for signature in known_db.get('signatures', [])
        if isinstance(signature, dict) and isinstance(signature.get('name'), str)
    }
    split_functions.update(
        root_name
        for root_name in function_roots.values()
        if isinstance(root_name, str)
        and not root_name.startswith(('loc_', 'data_'))
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
    )
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
        with open(path, 'w') as f:
            f.write(include_text)
    asm_path = os.path.join(out_dir, f'{name}.asm')
    with open(asm_path, 'w') as f:
        f.write(asm_text)
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
          f'[{stats["status"]}]')
    print(f'  classify+match: {t_classify_end-t_classify:.1f}s  '
          f'disasm: {t_disasm-t_flow_disasm_start:.1f}s  '
          f'verify+emit: {t_end-t_disasm:.1f}s  '
          f'(func_bounds={stats.get("timing_func_boundaries",0):.3f}s '
          f'local_lbl={stats.get("timing_local_labels",0):.3f}s '
          f'main_loop={stats.get("timing_main_loop",0):.3f}s '
          f'postproc={stats.get("timing_postprocess",0):.3f}s '
          f'emit_class={stats.get("timing_emit_class",0):.3f}s '
          f'build_src={stats.get("timing_build_source",0):.3f}s) '
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
    }
    report_path = write_report(ctx, asm_text)
    write_layers(ctx)
    print_short_report(ctx)

    if export_labels and label_map:
        from lib.cross_ref import write_label_json, write_label_inc
        json_path = os.path.join(out_dir, f'{name}_labels.json')
        labels_dir = os.path.join(out_dir, 'labels')
        os.makedirs(labels_dir, exist_ok=True)
        inc_path = os.path.join(labels_dir, f'{name}_labels.inc')
        write_label_json(label_map, json_path)
        write_label_inc(label_map, inc_path, prefix=name)

    if _DECOMPILE:
        from lib.decompile import decompile
        bin_data = ctx.binary_data
        c_text = decompile(bin_data, start_offset, instructions, label_map,
                          ctx.code_target_set, structs, name)
        c_path = os.path.join(out_dir, f'{name}.c')
        with open(c_path, 'w') as f:
            f.write(c_text)
        print(f'  decompile: {len(instructions)} insns -> {c_path}')

    if trace_writer:
        trace_writer.close()

    return ctx.bitmap, label_map


def copy_assets(orig_dir, output_dir, processed_names):
    os.makedirs(output_dir, exist_ok=True)
    for entry in os.listdir(orig_dir):
        src = os.path.join(orig_dir, entry)
        dst = os.path.join(output_dir, entry)
        name_only, _ = os.path.splitext(entry.lower())
        if name_only in processed_names:
            continue
        if os.path.isfile(src):
            shutil.copy2(src, dst)
        elif os.path.isdir(src):
            shutil.copytree(src, dst, dirs_exist_ok=True)


def build_binaries(asm_dir, bins, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    all_ok = True
    for name, (rel_path, _start_offset) in sorted(bins.items()):
        asm_path = os.path.join(asm_dir, f'{name}.asm')
        bin_path = os.path.join(out_dir, rel_path)
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', f'-I{asm_dir}/', '-o', bin_path, asm_path],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            print(f'  BUILD FAIL: {name}.asm -> {rel_path}')
            for line in r.stderr.strip().split('\n'):
                print(f'    {line}')
            all_ok = False
    return all_ok


def process_project(project_name):
    project_dir = os.path.join(APPS_DIR, project_name)
    if not os.path.isdir(project_dir):
        print(f'{project_name}: SKIP (not found in apps/)')
        return

    sidecar = load_sidecar(project_name)

    out_dir = os.path.join(PROJECT_ROOT, f'asm_{project_name}')
    os.makedirs(out_dir, exist_ok=True)

    bins = discover_binaries(project_dir)
    if not bins:
        print(f'{project_name}: no binaries found')
        return

    print(f'\n=== {project_name} ({len(bins)} binaries) ===')

    from lib.cross_ref import detect as detect_cross_refs
    cross_refs = detect_cross_refs(project_dir, bins)

    source_names = {src for refs in cross_refs.values() for _, src in refs}
    source_label_maps = {}

    for name in sorted(source_names & set(bins.keys())):
        sc_entry = sidecar_per_binary(sidecar, name) if sidecar else None
        _, lm = process(name, project_dir, bins[name][0], bins[name][1],
                        exact_bytes=EXACT_BYTES, show_offsets=_SHOW_OFFSETS,
                        output_dir=out_dir,
                        project=project_name, sidecar_entry=sc_entry,
                        export_labels=True)
        source_label_maps[name] = lm

    # inject synthetic dispatch labels for cross-binary targets
    if cross_refs:
        for src_name in source_names & set(bins.keys()):
            if src_name not in source_label_maps:
                continue
            src_path = os.path.join(project_dir, bins[src_name][0])
            try:
                with open(src_path, 'rb') as f:
                    src_data = f.read()
            except OSError:
                continue
            lm = source_label_maps[src_name]
            for consumer_name, refs in cross_refs.items():
                consumer_start = bins[consumer_name][1] if consumer_name in bins else 0
                for t, src in refs:
                    if src == src_name:
                        abs_t = t + consumer_start
                        if abs_t not in lm and abs_t < len(src_data):
                            lm[abs_t] = f'dispatch_{abs_t:04x}'

    for name, (rel_path, start_offset) in sorted(bins.items()):
        if name in source_names:
            continue
        sc_entry = sidecar_per_binary(sidecar, name) if sidecar else None

        foreign_label_map = None
        if name in cross_refs:
            foreign_label_map = {}
            for _, src_name in cross_refs[name]:
                if src_name in source_label_maps:
                    for addr, lbl in source_label_maps[src_name].items():
                        foreign_label_map[addr] = f'{src_name}_{lbl}'

        process(name, project_dir, rel_path, start_offset,
                exact_bytes=EXACT_BYTES, show_offsets=_SHOW_OFFSETS,
                output_dir=out_dir,
                project=project_name, sidecar_entry=sc_entry,
                foreign_label_map=foreign_label_map)

    processed = set(bins.keys())

    build_out = os.path.join(out_dir, 'build_out')
    copy_assets(project_dir, build_out, set())
    build_binaries(out_dir, bins, build_out)


def load_whitelist():
    path = os.path.join(APPS_DIR, 'apps.json')
    if not os.path.exists(path):
        return None
    with open(path) as f:
        return json.load(f)


def get_projects():
    if not os.path.isdir(APPS_DIR):
        return []
    return sorted([
        d for d in os.listdir(APPS_DIR)
        if os.path.isdir(os.path.join(APPS_DIR, d))
    ])


def byte_verify(name, orig_dir, rel_path, asm_dir, start_offset,
                exact_bytes=False, bitmap=None, sidecar_entry=None):
    asm_path = os.path.join(asm_dir, f'{name}.asm')
    orig_path = os.path.join(orig_dir, rel_path)

    if not os.path.exists(asm_path):
        print(f'{name}: SKIP (no .asm)')
        return False

    with tempfile.NamedTemporaryFile(suffix='.bin') as tmp:
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', f'-I{asm_dir}/', '-o', tmp.name, asm_path],
            capture_output=True, text=True,
        )

        def print_warnings():
            if r.stderr.strip():
                for line in r.stderr.strip().split('\n'):
                    print(line.replace(asm_path, f'{name}.asm'))

        if r.returncode != 0:
            print(f'{name} -> {rel_path}  [FAIL]')
            print_warnings()
            return False

        with open(orig_path, 'rb') as f:
            orig = f.read()
        with open(tmp.name, 'rb') as f:
            built = f.read()

    if len(orig) != len(built):
        print(f'{name} -> {rel_path}  [FAIL]  size {len(orig)} != {len(built)}')
        return False

    if exact_bytes:
        for i in range(len(orig)):
            if orig[i] != built[i]:
                print(f'{name} -> {rel_path}  [FAIL]  mismatch at 0x{i:04x}')
                return False
    else:
        from lib.verify.assemble import is_semantically_equivalent
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        if bitmap is None:
            with open(orig_path, 'rb') as f:
                data = f.read()
            from lib.classify import classify
            bitmap, _ = classify(
                data, start_offset, entry_points=set(),
                sidecar_entry=sidecar_entry,
            )

        if bitmap is not None:
            n = len(orig)
            off = 0
            while off < n:
                while off < n and (off >= len(bitmap) or bitmap[off] != IS_CODE):
                    if orig[off] != built[off]:
                        resolved = False
                        for delta in range(0, 8):
                            test_off = off - delta
                            if test_off < 0:
                                continue
                            try:
                                o_insn = next(md.disasm(
                                    orig[test_off:test_off + 15], test_off))
                                b_insn = next(md.disasm(
                                    built[test_off:test_off + 15], test_off))
                            except StopIteration:
                                continue
                            if test_off + o_insn.size <= off:
                                continue
                            if (o_insn.address == b_insn.address and
                                    is_semantically_equivalent(
                                        bytes(o_insn.bytes),
                                        bytes(b_insn.bytes), test_off)):
                                off += (test_off + o_insn.size - off)
                                resolved = True
                                break
                        if not resolved:
                            print(f'{name} -> {rel_path}  [FAIL]  byte mismatch at '
                                  f'0x{off:04x} (data region)')
                            print_warnings()
                            return False
                        continue
                    off += 1

                code_start = off
                while off < n and off < len(bitmap) and bitmap[off] == IS_CODE:
                    off += 1
                code_end = off

                if code_start < code_end:
                    for o_insn in md.disasm(orig[code_start:code_end], code_start):
                        addr = o_insn.address
                        try:
                            b_insn = next(md.disasm(built[addr:addr + 15], addr))
                        except StopIteration:
                            print(f'{name} -> {rel_path}  [FAIL]  no instruction at '
                                  f'0x{addr:04x}')
                            print_warnings()
                            return False

                        if addr != b_insn.address:
                            print(f'{name} -> {rel_path}  [FAIL]  alignment diverged at '
                                  f'0x{addr:04x} vs 0x{b_insn.address:04x}')
                            print_warnings()
                            return False

                        if o_insn.bytes != b_insn.bytes:
                            if not is_semantically_equivalent(
                                    bytes(o_insn.bytes),
                                    bytes(b_insn.bytes), addr):
                                print(f'{name} -> {rel_path}  [FAIL]  semantic '
                                      f'mismatch at 0x{addr:04x}')
                                print_warnings()
                                return False
        else:
            o_it = iter(md.disasm(orig, 0))
            b_it = iter(md.disasm(built, 0))
            while True:
                try:
                    o_insn = next(o_it)
                    b_insn = next(b_it)
                except StopIteration:
                    break

                i = o_insn.address
                if i != b_insn.address:
                    print(f'{name} -> {rel_path}  [FAIL]  alignment diverged at '
                          f'0x{i:04x} vs 0x{b_insn.address:04x}')
                    print_warnings()
                    return False

                if o_insn.bytes == b_insn.bytes:
                    continue

                if not is_semantically_equivalent(bytes(o_insn.bytes),
                                                   bytes(b_insn.bytes), i):
                    print(f'{name} -> {rel_path}  [FAIL]  semantic mismatch '
                          f'at 0x{i:04x}')
                    print_warnings()
                    return False

    print(f'{name} -> {rel_path}  [OK]')
    print_warnings()
    return True


def verify_project(project_name):
    project_dir = os.path.join(APPS_DIR, project_name)
    if not os.path.isdir(project_dir):
        return 0, []

    out_dir = os.path.join(PROJECT_ROOT, f'asm_{project_name}')
    sidecar = load_sidecar(project_name)
    bins = discover_binaries(project_dir)
    ok = 0
    fail = []
    for name, (rel_path, start_offset) in sorted(bins.items()):
        sidecar_entry = sidecar_per_binary(sidecar, name) if sidecar else None
        if byte_verify(name, project_dir, rel_path, out_dir, start_offset,
                       exact_bytes=EXACT_BYTES,
                       sidecar_entry=sidecar_entry):
            ok += 1
        else:
            fail.append(name)
    return ok, fail


def verify_all():
    total_ok = 0
    total_fail = []
    for pname in get_projects():
        ok, fail = verify_project(pname)
        total_ok += ok
        total_fail.extend(f'{pname}/{f}' for f in fail)
    print(f'\n{total_ok}/{total_ok + len(total_fail)} passed')
    if total_fail:
        sys.exit(1)


def clean_all():
    for p in get_projects():
        out_dir = os.path.join(PROJECT_ROOT, f'asm_{p}')
        if os.path.isdir(out_dir):
            shutil.rmtree(out_dir)
            print(f'Removed {out_dir}')
    if not get_projects():
        print('Cleaned.')


def main():
    if '--verify' in sys.argv:
        verify_all()
        return
    if '--clean' in sys.argv:
        clean_all()
        return
    if '--compare' in sys.argv:
        idx = sys.argv.index('--compare')
        if idx + 2 < len(sys.argv):
            print_compare(sys.argv[idx + 1], sys.argv[idx + 2])
        else:
            print('Usage: --compare <report_a.json> <report_b.json>')
        return

    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    projects = get_projects()

    if len(args) >= 2:
        p = args[0]
        binary = args[1]
        if p not in projects:
            print(f'Unknown project: {p}')
            sys.exit(1)
        project_dir = os.path.join(APPS_DIR, p)
        sidecar = load_sidecar(p)
        out_dir = os.path.join(PROJECT_ROOT, f'asm_{p}')
        bins = discover_binaries(project_dir)
        if binary not in bins:
            print(f'Unknown binary "{binary}" in {p}')
            print(f'Known: {", ".join(sorted(bins))}')
            sys.exit(1)
        rel_path, start_offset = bins[binary]
        sc_entry = sidecar_per_binary(sidecar, binary) if sidecar else None
        foreign_label_map = None
        if FOREIGN_LABELS_PATH:
            from lib.cross_ref import read_label_json
            raw = read_label_json(FOREIGN_LABELS_PATH)
            prefix = FOREIGN_PREFIX or ''
            foreign_label_map = {
                addr: f'{prefix}_{name}' if prefix else name
                for addr, name in raw.items()
            }
        process(binary, project_dir, rel_path, start_offset,
                exact_bytes=EXACT_BYTES, show_offsets=_SHOW_OFFSETS,
                output_dir=out_dir,
                project=p, sidecar_entry=sc_entry,
                foreign_label_map=foreign_label_map,
                export_labels=EXPORT_LABELS)
        return

    target = args[0] if args else None

    if target:
        if target in projects:
            process_project(target)
        else:
            print(f'Unknown target: {target}')
            print(f'Known projects: {", ".join(projects)}')
            sys.exit(1)
    else:
        if projects:
            for p in projects:
                process_project(p)
        else:
            print(f'Usage: python3 main.py <{"|".join(projects)}>')
            print('       No args processes all projects in apps/')
            sys.exit(1)


if __name__ == '__main__':
    try:
        main()
    except SidecarError as exc:
        print(f'Sidecar configuration error: {exc}', file=sys.stderr)
        sys.exit(2)
