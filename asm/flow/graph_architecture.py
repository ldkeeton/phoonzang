"""Pipeline architecture onboarding diagram.

Generates a single Mermaid flowchart showing how the disassembler
processes bytes from entry point to NASM output.
"""

import os

from flow.base import MermaidBuilder, BUILD_OUT, ASM_DIR


def generate_architecture_diagram(out_dir):
    m = MermaidBuilder(title='Disassembler pipeline architecture')

    # ── Phase data: (id, label, input_slot, output_slot) ──
    classify_phases = [
        ('seed', 'SeedPhase', 'raw_byte', 'seed'),
        ('sidecar', 'SidecarPhase', 'seed', 'sidecar'),
        ('pattern_seed', 'PatternSeedPhase', 'sidecar', 'pattern_seed'),
        ('carve_1', 'CarvePhase', 'pattern_seed/sidecar', 'carve_1'),
        ('trampoline', 'TrampolinePhase', 'carve_1', 'trampoline'),
        ('error_handler', 'ErrorHandlerPhase', 'trampoline', 'error_handler'),
        ('recursive', 'RecursiveDescentPhase', 'error_handler', 'recursive'),
        ('prune_dead', 'PruneDeadPhase', 'recursive', 'prune_dead'),
        ('prune_dead_before', 'PruneDeadBeforePhase', 'recursive', 'prune_dead_before'),
        ('prune_zero', 'PruneZeroPhase', 'recursive', 'prune_zero'),
        ('carve_2', 'CarvePhase', 'prune_zero', 'carve_2'),
    ]

    refine_phases = [
        ('settle', 'SettlePhase', 'carve_2', 'settled'),
        ('force_code', 'ForceCodePhase', 'settled', 'force_code'),
        ('arbiter', 'ArbiterPhase', '(none)', 'squashed'),
    ]

    # ── Entry point ──
    m.subgraph_start('entry', 'Entry: main/runner.py:process()')
    read_key = m.node('read_binary', 'Read binary\\ndata = f.read()', 'box')
    ctx_key = m.node('phase_ctx', 'PhaseContext(ctx)\\nwraps binary + layers DataFrame', 'box')
    m.edge(read_key, ctx_key, '', 'solid')
    m.subgraph_end()

    # ── Classify phases ──
    m.subgraph_start('classify', 'Classification phases')
    m.lines.append('  %% Each phase reads input_slot column, writes output_slot column')
    prev_key = ctx_key
    for pid, pname, pin, pout in classify_phases:
        label = f'{pname}\\n{pin} → {pout}'
        nkey = m.node(f'phase_{pid}', label, 'box')
        m.edge(prev_key, nkey, '', 'solid')
        prev_key = nkey
    last_classify = prev_key
    m.subgraph_end()

    # ── Iterative loop ──
    m.subgraph_start('iterative', 'Iterative loop (max 3 iterations)')
    settle_i_key = m.node('settle_i', 'SettlePhase\\ncarve_2 → settled', 'box')
    arbiter_i_key = m.node('arbiter_i', 'ArbiterPhase\\n(none) → squashed', 'box')
    m.edge(last_classify, settle_i_key, '', 'solid')
    m.edge(settle_i_key, arbiter_i_key, '', 'solid')

    check_key = m.node('converged', 'squashed\\nconverged?', 'diamond')
    m.edge(arbiter_i_key, check_key)

    loopback_key = m.node('loopback', 'squashed fed back\\nas boundaries', 'box')
    m.edge(check_key, loopback_key, 'no', 'dotted')
    recursive_nid = m.node_ids.get('phase_recursive')
    if recursive_nid:
        m.edge(loopback_key, recursive_nid)
    m.subgraph_end()

    # ── Post-refinement (only if converged) ──
    m.subgraph_start('refine', 'Post-iterative refinement')
    prev_ref = check_key
    for i, (pid, pname, pin, pout) in enumerate(refine_phases):
        label = f'{pname}\\n{pin} → {pout}'
        nkey = m.node(f'refine_{pid}', label, 'box')
        edge_label = 'yes' if i == 0 else None
        m.edge(prev_ref, nkey, edge_label, 'solid')
        prev_ref = nkey
    last_refine = prev_ref
    m.subgraph_end()

    # ── Label matching ──
    m.subgraph_start('matching', 'Label resolution')
    match_pat = m.node('match_patterns', 'match_patterns()', 'box')
    match_tramp = m.node('match_trampolines', 'match_trampolines()', 'box')
    cat_ct = m.node('categorize_call_targets', 'categorize_call_targets()', 'box')
    label_map = m.node('label_map', 'label_map', 'subroutine')
    m.edge(last_refine, match_pat, '', 'solid')
    m.edge(match_pat, match_tramp, '', 'solid')
    m.edge(match_tramp, cat_ct, '', 'solid')
    m.edge(cat_ct, label_map, '', 'solid')
    m.subgraph_end()

    # ── Disassemble & output ──
    m.subgraph_start('output', 'Disassembly & emission')
    bitmap_key = m.node('bitmap', 'ctx.bitmap\\nbytearray: UNKNOWN/CODE/DATA', 'subroutine')
    disasm_key = m.node('disassemble', 'disassemble()\\ncapstone instructions', 'box')
    structs_key = m.node('build_structs', 'build_structs()', 'box')
    verify_key = m.node('verify', 'verify()\\nNASM assembly text', 'box')
    asm_key = m.node('asm_file', 'name.asm\\nbyte-exact NASM output', 'subroutine')
    report_key = m.node('report', 'write_report()\\nwrite_layers()', 'box')

    m.edge(label_map, bitmap_key, '', 'solid')
    m.edge(last_refine, bitmap_key, '', 'solid')
    m.edge(bitmap_key, disasm_key, '', 'solid')
    m.edge(disasm_key, structs_key, '', 'solid')
    m.edge(structs_key, verify_key, '', 'solid')
    m.edge(verify_key, asm_key, '', 'solid')
    m.edge(verify_key, report_key, '', 'solid')

    # Also show that label_map feeds into verify
    m.edge(label_map, verify_key, '', 'dotted')
    m.subgraph_end()

    # ── Data flow annotation ──
    m.lines.append('')
    m.lines.append('  %% ── Data flow notes ──')
    m.lines.append('  %% ctx.layers is a Polars DataFrame with one column per phase output_slot')
    m.lines.append('  %% Each phase reads input_slot from ctx.layers and writes output_slot')
    m.lines.append('  %% The iterative loop feeds squashed back as boundary hints')

    path = os.path.join(out_dir, 'pipeline_arch.mmd')
    os.makedirs(out_dir, exist_ok=True)
    text = m.render()
    with open(path, 'w') as f:
        f.write(text)
    print(f'  wrote {path}')
    return path
