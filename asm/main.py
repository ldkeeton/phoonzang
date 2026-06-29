#!/usr/bin/env python3
"""Disassemble Wizardry 7 (DSAVANT) binaries -> byte-exact NASM assembly (.asm).

This script generates .asm files in this directory from original
binaries.  The .asm files are NOT built here -- use the Makefile.

Standard workflow from a clean checkout:

    make            # Phase 1: generate .asm from originals
                    # Phase 2: assemble .asm -> build_out/
    make run        # play the game under dosbox
    make clean      # remove build_out/

For individual targets you can also call this script directly:

    python3 main.py vbase        # Single overlay only
    python3 main.py --verify     # Verify .asm assembles byte-exact
    python3 main.py --clean      # Remove generated .asm files

Never use this script in a loop -- that's what ``make all`` is for.
"""

import os
import subprocess
import sys
import tempfile
import time

ASM_DIR = os.path.dirname(os.path.abspath(__file__))
ORIG_DIR = os.path.join(os.path.dirname(ASM_DIR), 'DSAVANT')
KNOWN_FUNCS_PATH = os.path.join(ASM_DIR, 'lib', 'known_funcs.json')

from lib.decode import disassemble
from lib.verify.compare import verify, clear_assemble_cache
from lib.struct_analysis import build_structs
from lib.match import match_patterns, match_trampolines, categorize_call_targets
from lib.phases import (
    SeedPhase, SidecarPhase, CarvePhase,
    TrampolinePhase, ErrorHandlerPhase, RecursiveDescentPhase,
    PruneDeadPhase, PruneZeroPhase, CascadePhase,
    SettlePhase, ArbiterPhase, ForceCodePhase,
)
from lib.model import PhaseContext, IS_CODE, IS_DATA, IS_UNKNOWN
from lib.pipeline import run_functional, report_timings


def _crc16(data):
    crc = 0xFFFF
    for byte in data:
        crc ^= byte << 8
        for _ in range(8):
            if crc & 0x8000:
                crc = (crc << 1) ^ 0x1021
            else:
                crc <<= 1
        crc &= 0xFFFF
    return crc


def _load_known_funcs():
    """Load known_funcs.json if it exists."""
    if not os.path.exists(KNOWN_FUNCS_PATH):
        return {'signatures': []}
    import json
    with open(KNOWN_FUNCS_PATH) as f:
        return json.load(f)


def _build_classify_phases(ccr=False):
    """Build classification phases (run before pattern matching).

    These phases discover code/data boundaries and populate
    ``ctx.code_targets`` for pattern matching.
    """
    phases = [
        SeedPhase(),
        SidecarPhase(),
        CarvePhase(min_body=6, input_slot='sidecar', output_slot='carve_1'),
        TrampolinePhase(input_slot='carve_1'),
        ErrorHandlerPhase(),
        RecursiveDescentPhase(),
        PruneDeadPhase(),
        PruneZeroPhase(),
        CarvePhase(min_body=4, input_slot='prune_zero', output_slot='carve_2'),
    ]
    if ccr:
        phases.append(CascadePhase(input_slot='carve_2'))
    return phases


def _build_refine_phases(last_classify_slot):
    """Build refinement phases (post-pattern-matching).

    These phases use ``ctx.label_map`` to force-code missed functions
    and produce the final squashed column.
    """
    return [
        SettlePhase(input_slot=last_classify_slot, output_slot='settled'),
        ForceCodePhase(),
        ArbiterPhase(),
    ]


def _discover_binaries():
    """Scan ORIG_DIR for known binary types -> {name: (rel_path, start_offset)}."""
    bins = {}
    if not os.path.isdir(ORIG_DIR):
        return bins
    for entry in os.listdir(ORIG_DIR):
        lower = entry.lower()
        if lower.endswith('.ovr'):
            bins[lower[:-4]] = (entry, 8)
        elif lower.endswith('.drv'):
            bins[lower[:-4]] = (entry, 0)
        elif lower.endswith('.exe'):
            bins[lower[:-4]] = (entry, 0x200)
    return bins


BINARIES = _discover_binaries()

EXACT_BYTES = '--exact-bytes' in sys.argv
FEAT_CASCADE_SEARCH = '--feat-cascade-code-recovery' in sys.argv or '-ccr' in sys.argv
_MAX_FUNC_SIZE = None
for a in sys.argv:
    if a.startswith('--max-func-size='):
        try:
            _MAX_FUNC_SIZE = int(a.split('=', 1)[1])
        except ValueError:
            pass


def process(name, rel_path, start_offset, exact_bytes=False):
    path = os.path.join(ORIG_DIR, rel_path)
    if not os.path.exists(path):
        print(f'{name}: SKIP (file not found at {path})')
        return None

    with open(path, 'rb') as f:
        data = f.read()

    t_total = time.perf_counter()
    clear_assemble_cache()

    # --- Phase 1: Build context with initial seed layer ---
    ctx = PhaseContext(
        binary_data=data,
        start_offset=start_offset,
        name=name,
    )

    # --- Phase 2: Classification pipeline (discovers call_targets) ---
    ccr = FEAT_CASCADE_SEARCH
    classify_phases = _build_classify_phases(ccr=ccr)
    run_functional(ctx, classify_phases)
    t_classify = time.perf_counter()
    classify_timing = report_timings()

    # --- Phase 3: Pattern matching ---
    known_db = _load_known_funcs()
    max_func_size = _MAX_FUNC_SIZE if _MAX_FUNC_SIZE is not None else 256
    label_map = match_patterns(data, ctx.code_targets, known_db, max_func_size)

    trampoline_map = match_trampolines(data, ctx.code_targets, known_db)
    for off, lbl in trampoline_map.items():
        if off not in label_map:
            label_map[off] = lbl

    label_map = categorize_call_targets(data, ctx.code_targets, label_map)
    for off in ctx.code_targets:
        if off not in label_map:
            label_map[off] = f'loc_{off:04x}'

    ctx.label_map = label_map

    # --- Phase 4: Refinement pipeline (uses label_map) ---
    last_classify_slot = classify_phases[-1].output_slot
    refine_phases = _build_refine_phases(last_classify_slot)
    run_functional(ctx, refine_phases)
    refine_timing = report_timings()
    t_classify_end = time.perf_counter()

    # --- Phase 5: Stats from final squashed column ---
    squashed = ctx.layers['squashed'].to_numpy()
    code_bytes = int((squashed == IS_CODE).sum())
    data_bytes = int((squashed == IS_DATA).sum())
    total_cls = code_bytes + data_bytes
    pct = code_bytes / max(total_cls, 1) * 100

    # --- Phase 6: Disassemble ---
    instructions = list(disassemble(data, start_offset, bitmap=ctx.bitmap))
    t_disasm = time.perf_counter()

    # --- Phase 7: Struct analysis ---
    structs = build_structs(instructions)

    # --- Phase 8: Verify and emit .asm ---
    asm_text, stats = verify(
        data, start_offset, instructions, name, ctx.label_map,
        bitmap=ctx.bitmap, code_targets=ctx.code_targets,
        exact_bytes=exact_bytes,
        structs=structs,
        asm_dir=ASM_DIR,
    )

    asm_path = os.path.join(ASM_DIR, f'{name}.asm')
    with open(asm_path, 'w') as f:
        f.write(asm_text)
    t_end = time.perf_counter()

    print(f'{name}: {len(instructions)} insns -> {asm_path}  '
          f'mnem={stats["mnemonic"]} db={stats["data"]} '
          f'dbc={stats["with_comment"]} blocks={stats["data_blocks"]} '
          f'lbl={stats["labels"]}  structs={stats["structs"]}  '
          f'code={code_bytes}({pct:.0f}%) data={data_bytes}  '
          f'[{stats["status"]}]')
    print(f'  classify+match: {t_classify_end-t_classify:.1f}s  '
          f'disasm: {t_disasm-t_classify_end:.1f}s  '
          f'verify+emit: {t_end-t_disasm:.1f}s  total: {t_end-t_total:.1f}s')
    print(f'  classify phases:')
    print(classify_timing)
    print(f'  refine phases:')
    print(refine_timing)
    return ctx.bitmap


def byte_verify(name, exact_bytes=False, bitmap=None):
    if name not in BINARIES:
        print(f'{name}: SKIP (unknown target)')
        return False

    rel_path = BINARIES[name][0]
    asm_path = os.path.join(ASM_DIR, f'{name}.asm')
    orig_path = os.path.join(ORIG_DIR, rel_path)

    if not os.path.exists(asm_path):
        print(f'{name}: SKIP (no .asm)')
        return False

    with tempfile.NamedTemporaryFile(suffix='.bin') as tmp:
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-o', tmp.name, asm_path],
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
            start_offset = BINARIES[name][1]
            from lib.classify import classify
            bitmap, _ = classify(data, start_offset, entry_points=set())

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
                                o_insn = next(md.disasm(orig[test_off:test_off + 15],
                                                        test_off))
                                b_insn = next(md.disasm(built[test_off:test_off + 15],
                                                        test_off))
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
                                print(f'{name} -> {rel_path}  [FAIL]  semantic mismatch '
                                      f'at 0x{addr:04x}')
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
                    print(f'{name} -> {rel_path}  [FAIL]  alignment diverged at 0x{i:04x} '
                          f'vs 0x{b_insn.address:04x}')
                    print_warnings()
                    return False

                if o_insn.bytes == b_insn.bytes:
                    continue

                if not is_semantically_equivalent(bytes(o_insn.bytes),
                                                   bytes(b_insn.bytes), i):
                    print(f'{name} -> {rel_path}  [FAIL]  semantic mismatch at 0x{i:04x}')
                    print_warnings()
                    return False

    print(f'{name} -> {rel_path}  [OK]')
    print_warnings()
    return True


def verify_all():
    ok = 0
    fail = []
    for name, (rel_path, start_offset) in BINARIES.items():
        asm_path = os.path.join(ASM_DIR, f'{name}.asm')
        if not os.path.exists(asm_path):
            print(f'{name}: SKIP (no .asm)')
            continue
        if byte_verify(name, exact_bytes=EXACT_BYTES):
            ok += 1
        else:
            fail.append(name)
    print(f'\n{ok}/{ok + len(fail)} passed')
    if fail:
        sys.exit(1)


def main():
    if '--verify' in sys.argv:
        verify_all()
        return
    if '--clean' in sys.argv:
        for name in BINARIES:
            p = os.path.join(ASM_DIR, f'{name}.asm')
            bp = os.path.join(ASM_DIR, f'{name}.built')
            for fp in (p, bp):
                if os.path.exists(fp):
                    os.remove(fp)
        print('Cleaned.')
        return

    target = None
    for arg in sys.argv[1:]:
        if not arg.startswith('--') and arg != '-ccr':
            target = arg
            break

    if target:
        if target in BINARIES:
            bitmap = process(target, *BINARIES[target], exact_bytes=EXACT_BYTES)
            byte_verify(target, exact_bytes=EXACT_BYTES, bitmap=bitmap)
        else:
            print(f'Unknown target: {target}')
            print(f'Known: {", ".join(BINARIES)}')
            sys.exit(1)
    else:
        print(f'Usage: python3 main.py <{"|".join(BINARIES)}>')
        print('       Use `make all` to process every target.')
        sys.exit(1)


if __name__ == '__main__':
    main()
