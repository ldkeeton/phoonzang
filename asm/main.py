#!/usr/bin/env python3
"""Disassemble DOS binaries -> byte-exact NASM assembly (.asm).

Scans ``apps/`` for game directories.  For each game:
  - Discovers binary files (.exe/.ovr/.drv)
  - Disassembles each to ``asm_<game>/<name>.asm``
  - Copies non-binary assets to ``asm_<game>/``
  - Creates ``asm_<game>/build_out/``
"""

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

from lib.decode import disassemble
from lib.verify.compare import verify, clear_assemble_cache
from lib.struct_analysis import build_structs
from lib.match import match_patterns, match_trampolines, categorize_call_targets
from lib.phases import (
    SeedPhase, SidecarPhase, CarvePhase,
    TrampolinePhase, ErrorHandlerPhase, RecursiveDescentPhase,
    PruneDeadPhase, PruneZeroPhase,
    SettlePhase, ArbiterPhase, ForceCodePhase,
)
from lib.model import PhaseContext, IS_CODE, IS_DATA, IS_UNKNOWN
from lib.pipeline import run_functional, report_timings
from lib.report import write_report, write_layers, print_compare


def _load_known_funcs():
    if not os.path.exists(KNOWN_FUNCS_PATH):
        return {'signatures': []}
    import json
    with open(KNOWN_FUNCS_PATH) as f:
        return json.load(f)


def _build_classify_phases():
    return [
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
DETAILED_TIMINGS = '--detailed-timings' in sys.argv
_MAX_FUNC_SIZE = None
for a in sys.argv:
    if a.startswith('--max-func-size='):
        try:
            _MAX_FUNC_SIZE = int(a.split('=', 1)[1])
        except ValueError:
            pass


def process(name, orig_dir, rel_path, start_offset, exact_bytes=False, output_dir=None, game_name=None, detailed_timings=False):
    path = os.path.join(orig_dir, rel_path)
    if not os.path.exists(path):
        print(f'{name}: SKIP (file not found at {path})')
        return None

    with open(path, 'rb') as f:
        data = f.read()

    t_total = time.perf_counter()
    clear_assemble_cache()

    ctx = PhaseContext(
        binary_data=data,
        start_offset=start_offset,
        name=name,
        detailed_timings=detailed_timings,
    )
    if game_name:
        ctx.report['game'] = game_name

    classify_phases = _build_classify_phases()
    run_functional(ctx, classify_phases)
    t_classify = time.perf_counter()
    classify_timing = report_timings()

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
    ctx.report['code_targets'] = {
        'total': len(ctx.code_targets),
        'by_seed': len(ctx.seeds & ctx.code_targets),
        'by_call': len(ctx.code_targets - ctx.seeds),
    }

    last_classify_slot = classify_phases[-1].output_slot
    refine_phases = _build_refine_phases(last_classify_slot)
    run_functional(ctx, refine_phases)
    refine_timing = report_timings()
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

    instructions = list(disassemble(data, start_offset, bitmap=ctx.bitmap))
    ctx.report['classification']['instructions'] = len(instructions)
    t_disasm = time.perf_counter()

    structs = build_structs(instructions)

    out_dir = output_dir or ASM_DIR

    asm_text, stats, emit_bytes, label_positions = verify(
        data, start_offset, instructions, name, ctx.label_map,
        bitmap=ctx.bitmap, code_targets=ctx.code_targets,
        exact_bytes=exact_bytes,
        structs=structs,
        asm_dir=out_dir,
    )
    ctx.layers = ctx.layers.with_columns(pl.Series('emit', emit_bytes, dtype=pl.UInt8))
    ctx.layers = ctx.layers.with_columns(pl.Series('label_positions', label_positions, dtype=pl.UInt8))
    os.makedirs(out_dir, exist_ok=True)
    asm_path = os.path.join(out_dir, f'{name}.asm')
    with open(asm_path, 'w') as f:
        f.write(asm_text)
    t_end = time.perf_counter()

    jts = ctx.report.get('jump_tables', [])
    jt_str = ''
    if jts:
        found = sum(1 for jt in jts if jt.get('targets_found', 0) >= 3)
        total = sum(jt.get('targets_found', 0) for jt in jts)
        jt_str = f'  jt_scans={len(jts)} jt_found={found} jt_targets={total}'

    print(f'{name}: {len(instructions)} insns -> {asm_path}  '
          f'mnem={stats["mnemonic"]} db={stats["data"]} '
          f'dbc={stats["with_comment"]} blocks={stats["data_blocks"]} '
          f'lbl={stats["labels"]}  structs={stats["structs"]}  '
          f'code={code_bytes}({pct:.0f}%) data={data_bytes}'
          f'{jt_str}  [{stats["status"]}]')
    if detailed_timings:
        print(f'  classify+match: {t_classify_end-t_classify:.1f}s  '
              f'disasm: {t_disasm-t_classify_end:.1f}s  '
              f'verify+emit: {t_end-t_disasm:.1f}s  total: {t_end-t_total:.1f}s')
        print(f'  classify phases:')
        print(classify_timing)
        print(f'  refine phases:')
        print(refine_timing)

    ctx.report['verify'] = {
        'status': stats['status'],
        'mnemonic': stats['mnemonic'],
        'data': stats['data'],
        'data_blocks': stats['data_blocks'],
        'labels': stats['labels'],
        'structs': stats['structs'],
    }
    report_path = write_report(ctx, asm_text)
    write_layers(ctx)

    return ctx.bitmap


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
    """Assemble each .asm with NASM into *out_dir* using the original binary filename."""
    os.makedirs(out_dir, exist_ok=True)
    all_ok = True
    for name, (rel_path, _start_offset) in sorted(bins.items()):
        asm_path = os.path.join(asm_dir, f'{name}.asm')
        bin_path = os.path.join(out_dir, rel_path)
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-o', bin_path, asm_path],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            print(f'  BUILD FAIL: {name}.asm -> {rel_path}')
            for line in r.stderr.strip().split('\n'):
                print(f'    {line}')
            all_ok = False
    return all_ok


def process_game(game_name):
    game_dir = os.path.join(APPS_DIR, game_name)
    if not os.path.isdir(game_dir):
        print(f'{game_name}: SKIP (not found in apps/)')
        return

    out_dir = os.path.join(PROJECT_ROOT, f'asm_{game_name}')
    os.makedirs(out_dir, exist_ok=True)

    bins = discover_binaries(game_dir)
    if not bins:
        print(f'{game_name}: no binaries found')
    else:
        print(f'\n=== {game_name} ({len(bins)} binaries) ===')
        for name, (rel_path, start_offset) in sorted(bins.items()):
            process(name, game_dir, rel_path, start_offset,
                    exact_bytes=EXACT_BYTES, output_dir=out_dir,
                    game_name=game_name,
                    detailed_timings=DETAILED_TIMINGS)

    processed = set(bins.keys())
    copy_assets(game_dir, out_dir, processed)

    build_out = os.path.join(out_dir, 'build_out')
    copy_assets(game_dir, build_out, set())
    build_binaries(out_dir, bins, build_out)


def get_games():
    if not os.path.isdir(APPS_DIR):
        return []
    return sorted([
        d for d in os.listdir(APPS_DIR)
        if os.path.isdir(os.path.join(APPS_DIR, d))
    ])


def byte_verify(name, orig_dir, rel_path, asm_dir, start_offset,
                exact_bytes=False, bitmap=None):
    asm_path = os.path.join(asm_dir, f'{name}.asm')
    orig_path = os.path.join(orig_dir, rel_path)

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


def verify_game(game_name):
    game_dir = os.path.join(APPS_DIR, game_name)
    if not os.path.isdir(game_dir):
        return 0, []

    out_dir = os.path.join(PROJECT_ROOT, f'asm_{game_name}')
    bins = discover_binaries(game_dir)
    ok = 0
    fail = []
    for name, (rel_path, start_offset) in sorted(bins.items()):
        if byte_verify(name, game_dir, rel_path, out_dir, start_offset,
                       exact_bytes=EXACT_BYTES):
            ok += 1
        else:
            fail.append(name)
    return ok, fail


def verify_all():
    total_ok = 0
    total_fail = []
    for game in get_games():
        ok, fail = verify_game(game)
        total_ok += ok
        total_fail.extend(f'{game}/{f}' for f in fail)
    print(f'\n{total_ok}/{total_ok + len(total_fail)} passed')
    if total_fail:
        sys.exit(1)


def clean_all():
    for game in get_games():
        out_dir = os.path.join(PROJECT_ROOT, f'asm_{game}')
        if os.path.isdir(out_dir):
            shutil.rmtree(out_dir)
            print(f'Removed {out_dir}')
    if not get_games():
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
    games = get_games()

    if len(args) >= 2:
        game = args[0]
        binary = args[1]
        if game not in games:
            print(f'Unknown game: {game}')
            sys.exit(1)
        game_dir = os.path.join(APPS_DIR, game)
        out_dir = os.path.join(PROJECT_ROOT, f'asm_{game}')
        bins = discover_binaries(game_dir)
        if binary not in bins:
            print(f'Unknown binary "{binary}" in {game}')
            print(f'Known: {", ".join(sorted(bins))}')
            sys.exit(1)
        rel_path, start_offset = bins[binary]
        process(binary, game_dir, rel_path, start_offset,
                exact_bytes=EXACT_BYTES, output_dir=out_dir,
                game_name=game,
                detailed_timings=DETAILED_TIMINGS)
        return

    target = args[0] if args else None

    if target:
        if target in games:
            process_game(target)
        else:
            print(f'Unknown target: {target}')
            print(f'Known games: {", ".join(games)}')
            sys.exit(1)
    else:
        if games:
            for game in games:
                process_game(game)
        else:
            print(f'Usage: python3 main.py <{"|".join(games)}>')
            print('       No args processes all games in apps/')
            sys.exit(1)


if __name__ == '__main__':
    main()
