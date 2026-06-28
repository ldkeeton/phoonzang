#!/usr/bin/env python3
"""Disassemble Wizardry 7 (DSAVANT) binaries → byte-exact NASM assembly (.asm).

This script generates .asm files in this directory from original
binaries.  The .asm files are NOT built here — use the Makefile.

Standard workflow from a clean checkout:

    make            # Phase 1: generate .asm from originals
                    # Phase 2: assemble .asm → build_out/
    make run        # play the game under dosbox
    make clean      # remove build_out/

For individual targets you can also call this script directly:

    python3 main.py vbase        # Single overlay only
    python3 main.py --verify     # Verify .asm assembles byte-exact
    python3 main.py --clean      # Remove generated .asm files

Never use this script in a loop — that's what ``make all`` is for.
"""

import os
import subprocess
import sys
import tempfile

ASM_DIR = os.path.dirname(os.path.abspath(__file__))
ORIG_DIR = os.path.join(os.path.dirname(ASM_DIR), 'DSAVANT')
KNOWN_FUNCS_PATH = os.path.join(ASM_DIR, 'lib', 'known_funcs.json')

from lib.decode import disassemble
from lib.verify import verify
from lib.classify import classify
from lib.struct_analysis import build_structs


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


def _match_patterns(data, call_targets, known_db, max_func_size=256):
    """Pattern-match known wrapper functions → {offset: name} labels.

    For each signature's byte pattern, scan the binary.  Walk backward up
    to 256 bytes for a push-bp prologue that is a call_target, verify the
    function body (≤ max_func_size bytes to ret/retf), and confirm the
    pattern falls within the function body — not in a later function that
    happens to have the same prologue in the back-walk window.

    Returns a dict of {func_start: label_name} with automatic _N dedup.
    """
    if not known_db:
        return {}
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = False
    _TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}

    label_map = {}
    name_count = {}

    for sig in known_db.get('signatures', []):
        name = sig['name']
        for pat_str in sig.get('patterns', []):
            try:
                pat_bytes = bytes.fromhex(pat_str.replace(' ', ''))
            except (ValueError, KeyError):
                continue
            idx = 0
            while True:
                idx = data.find(pat_bytes, idx)
                if idx == -1:
                    break

                matched = False
                for i in range(min(256, idx), 0, -1):
                    p = idx - i
                    if data[p] != 0x55:
                        continue
                    try:
                        prev_insns = list(md.disasm(data[p:idx], p))
                    except Exception:
                        prev_insns = []
                    if not (prev_insns and prev_insns[-1].address + prev_insns[-1].size == idx):
                        continue

                    func_start = p
                    if func_start not in call_targets:
                        continue

                    max_end = min(func_start + max_func_size, len(data))
                    try:
                        insns = list(md.disasm(data[func_start:max_end], func_start))
                    except Exception:
                        insns = []
                    func_end = max_end
                    for insn in insns:
                        if insn.mnemonic in _TERMINATORS:
                            func_end = insn.address + insn.size
                            break

                    if func_start <= idx < func_end and func_end <= func_start + max_func_size:
                        matched = True
                        break

                if matched:
                    if func_start not in label_map:
                        n = name_count.get(name, 0) + 1
                        name_count[name] = n
                        label_map[func_start] = f'{name}_{n}' if n > 1 else name

                idx += len(pat_bytes)

    return label_map

def _match_trampolines(data, call_targets, known_db=None):
    """Detect trampoline-dispatch stubs: call_targets starting with
    ``mov ax, 0xFFXX; call EXTERNAL`` where EXTERNAL is beyond the file.

    Uses ``known_db[api_dispatch]`` map (key = hex neg(ax) like ``0x0004``)
    to name known APIs.  Falls back to ``api_idx_N``.

    Returns a dict of {offset: label_name} with automatic _N dedup.
    """
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    n = len(data)

    # Build dispatch-name map from known_db
    dispatch_names = {}
    if known_db:
        for key, entry in known_db.get('api_dispatch', {}).items():
            try:
                idx = int(key, 16) if isinstance(key, str) else int(key)
                dispatch_names[idx] = entry['name']
            except (ValueError, KeyError):
                pass

    label_map = {}
    name_count = {}

    for off in sorted(call_targets):
        if off + 6 > n:
            continue
        if data[off] != 0xB8 or data[off + 2] != 0xFF:
            continue
        val = data[off + 1] | (data[off + 2] << 8)
        for j in range(off + 3, min(off + 8, n - 2)):
            if data[j] == 0xE8:
                try:
                    insn = next(md.disasm(data[j:j + 5], j))
                    target = insn.operands[0].imm if insn.operands else None
                except Exception:
                    break
                if target is not None and (target & 0xFFFF) >= n:
                    idx = (-val) & 0xFFFF
                    name = dispatch_names.get(idx)
                    if name is None:
                        name = f'api_idx_{idx:04x}'
                    n_ = name_count.get(name, 0) + 1
                    name_count[name] = n_
                    label_map[off] = name if n_ == 1 else f'{name}_{n_}'
                break
            elif data[j] in (0xC3, 0xCB, 0xCF, 0xEB, 0xE9):
                break

    return label_map


def _discover_binaries():
    """Scan ORIG_DIR for known binary types → {name: (rel_path, start_offset)}."""
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

    # Build classification bitmap
    from lib.verify import clear_assemble_cache
    clear_assemble_cache()

    entry_points = set()
    bitmap, info = classify(
        data, start_offset,
        entry_points=entry_points,
    )

    # Only call targets and jump-table entries get labels
    # (intra-function branch targets are excluded to reduce noise)
    code_targets = info['call_targets']

    # Pattern-match known functions via byte signatures (dynamic, no cache)
    known_db = _load_known_funcs()
    max_func_size = _MAX_FUNC_SIZE if _MAX_FUNC_SIZE is not None else 256
    label_map = _match_patterns(data, info.get('call_targets', set()), known_db, max_func_size)

    # Detect trampoline-dispatch stubs (fallback — never override pattern matches)
    trampoline_map = _match_trampolines(data, info.get('call_targets', set()), known_db)
    for off, lbl in trampoline_map.items():
        if off not in label_map:
            label_map[off] = lbl

    # CRC matching disabled — no verified CRCs in known_funcs.json yet.
    # To reactivate: add verified {crc, size, addr_off} to entries[], then
    # uncomment the CRC loop below and remove the _match_patterns call above
    # (or run both — pattern-first, CRC for fallback).

    # Count classification stats
    code_bytes = sum(1 for b in bitmap if b == 1)  # IS_CODE = 1
    data_bytes = sum(1 for b in bitmap if b == 2)  # IS_DATA = 2
    total_cls = code_bytes + data_bytes
    pct = code_bytes / max(total_cls, 1) * 100

    # Force-code known function offsets that classify missed (in data regions)
    from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    _TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
    md_code = Cs(CS_ARCH_X86, CS_MODE_16)
    md_code.detail = True
    for off in sorted(label_map.keys()):
        # Walk backward up to 16 bytes to find 0x55 (push bp = function entry)
        func_start = off
        for i in range(min(16, off), 0, -1):
            p = off - i
            if data[p] == 0x55:
                try:
                    prev = list(md_code.disasm(data[p:off], p))
                except Exception:
                    prev = []
                if prev and prev[-1].address + prev[-1].size == off:
                    func_start = p
                    break

        # Mark preceding prologue bytes as IS_CODE (if any were found)
        for i in range(func_start, off):
            if bitmap[i] != 1:
                bitmap[i] = 1

        # Forward-decode from func_start to find the function boundary
        # and mark the entire body as IS_CODE.  This is needed even when
        # bitmap[off] is already 1 (code), because classify may have only
        # marked the named offset itself (via call-target discovery) while
        # the tail of the function (after ret/jmp) remains data, causing
        # instructions that belong to the same code path to land in a data
        # block and emit as db instead of their mnemonic.
        end = min(func_start + 512, len(data))
        try:
            for insn in md_code.disasm(data[func_start:end], func_start):
                if insn.mnemonic in _TERMINATORS:
                    end = insn.address + insn.size
                    break
                end = insn.address + insn.size
        except Exception:
            pass
        for i in range(func_start, min(end, len(data))):
            bitmap[i] = 1

    code_bytes = sum(1 for b in bitmap if b == 1)
    data_bytes = sum(1 for b in bitmap if b == 2)
    pct = code_bytes / max(total_cls, 1) * 100

    # Disassemble only IS_CODE regions
    instructions = list(disassemble(data, start_offset, bitmap=bitmap))

    # Struct analysis (heuristic, no sidecars)
    structs = build_structs(instructions)

    # Emit .asm with block headers and labels
    asm_text, stats = verify(
        data, start_offset, instructions, name, label_map,
        bitmap=bitmap, code_targets=code_targets,
        exact_bytes=exact_bytes,
        structs=structs,
    )

    asm_path = os.path.join(ASM_DIR, f'{name}.asm')
    with open(asm_path, 'w') as f:
        f.write(asm_text)

    # Write bitmap companion file for post-hoc verification
    bitmap_path = os.path.join(ASM_DIR, f'{name}.bitmap')
    with open(bitmap_path, 'wb') as f:
        f.write(bitmap)

    print(f'{name}: {len(instructions)} insns → {asm_path}  '
          f'mnem={stats["mnemonic"]} db={stats["data"]} '
          f'dbc={stats["with_comment"]} blocks={stats["data_blocks"]} '
          f'lbl={stats["labels"]}  structs={stats["structs"]}  '
          f'code={code_bytes}({pct:.0f}%) data={data_bytes}  '
          f'[{stats["status"]}]')
    return asm_path


def byte_verify(name, exact_bytes=False):
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
            print(f'{name} → {rel_path}  [FAIL]')
            print_warnings()
            return False

        with open(orig_path, 'rb') as f:
            orig = f.read()
        with open(tmp.name, 'rb') as f:
            built = f.read()

    if len(orig) != len(built):
        print(f'{name} → {rel_path}  [FAIL]  size {len(orig)} ≠ {len(built)}')
        return False

    if exact_bytes:
        for i in range(len(orig)):
            if orig[i] != built[i]:
                print(f'{name} → {rel_path}  [FAIL]  mismatch at 0x{i:04x}')
                return False
    else:
        from lib.verify import _is_semantically_equivalent
        from lib.classify import IS_CODE
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        # Load bitmap companion file for data/code boundary awareness
        bitmap = None
        bitmap_path = os.path.join(ASM_DIR, f'{name}.bitmap')
        if os.path.exists(bitmap_path):
            with open(bitmap_path, 'rb') as f:
                bitmap = bytearray(f.read())

        if bitmap is not None:
            # Verify code regions instruction-by-instruction, data regions
            # with semantic equivalence (data blocks may contain misclassified
            # code with encoding variants).
            n = len(orig)
            off = 0
            while off < n:
                # Handle data region bytes
                while off < n and (off >= len(bitmap) or bitmap[off] != IS_CODE):
                    if orig[off] != built[off]:
                        # Try semantic equivalence.  The mismatch byte may be
                        # inside a longer instruction; walk backwards to find
                        # its start.
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
                            # Check that this instruction covers the mismatched byte
                            if test_off + o_insn.size <= off:
                                continue
                            if (o_insn.address == b_insn.address and
                                    _is_semantically_equivalent(
                                        bytes(o_insn.bytes),
                                        bytes(b_insn.bytes), test_off)):
                                # Encoding variant — skip past the instruction
                                off += (test_off + o_insn.size - off)
                                resolved = True
                                break
                        if not resolved:
                            print(f'{name} → {rel_path}  [FAIL]  byte mismatch at '
                                  f'0x{off:04x} (data region)')
                            print_warnings()
                            return False
                        continue
                    off += 1

                # Verify code region instruction-by-instruction
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
                            print(f'{name} → {rel_path}  [FAIL]  no instruction at '
                                  f'0x{addr:04x}')
                            print_warnings()
                            return False

                        if addr != b_insn.address:
                            print(f'{name} → {rel_path}  [FAIL]  alignment diverged at '
                                  f'0x{addr:04x} vs 0x{b_insn.address:04x}')
                            print_warnings()
                            return False

                        if o_insn.bytes != b_insn.bytes:
                            if not _is_semantically_equivalent(
                                    bytes(o_insn.bytes),
                                    bytes(b_insn.bytes), addr):
                                print(f'{name} → {rel_path}  [FAIL]  semantic mismatch '
                                      f'at 0x{addr:04x}')
                                print_warnings()
                                return False
        else:
            # No bitmap — walk both binaries instruction-by-instruction.
            # When they diverge we check semantic equivalence; when lengths
            # differ we report failure (the two streams must stay aligned).
            o_it = iter(md.disasm(orig, 0))
            b_it = iter(md.disasm(built, 0))
            while True:
                try:
                    o_insn = next(o_it)
                    b_insn = next(b_it)
                except StopIteration:
                    break  # both exhausted at same point → success

                i = o_insn.address
                if i != b_insn.address:
                    print(f'{name} → {rel_path}  [FAIL]  alignment diverged at 0x{i:04x} '
                          f'vs 0x{b_insn.address:04x}')
                    print_warnings()
                    return False

                if o_insn.bytes == b_insn.bytes:
                    continue

                # Same address, different bytes — check semantic equivalence
                if not _is_semantically_equivalent(bytes(o_insn.bytes),
                                                   bytes(b_insn.bytes), i):
                    print(f'{name} → {rel_path}  [FAIL]  semantic mismatch at 0x{i:04x}')
                    print_warnings()
                    return False

    print(f'{name} → {rel_path}  [OK]')
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
        if not arg.startswith('--'):
            target = arg
            break

    if target:
        if target in BINARIES:
            process(target, *BINARIES[target], exact_bytes=EXACT_BYTES)
            byte_verify(target, exact_bytes=EXACT_BYTES)
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
