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
SIDECAR_PATH = os.path.join(ASM_DIR, 'sidecar.json')
KNOWN_FUNCS_PATH = os.path.join(os.path.dirname(ASM_DIR), 'decompiled2', 'lib', 'known_funcs.json')

from lib.decode import disassemble
from lib.verify import verify
from lib.classify import classify, _load_sidecar
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


def _identify_func(data):
    """Simple pattern matching for common library functions."""
    if data.find(b'\xf2\xae') >= 0 and data.find(b'\xf7\xd1') >= 0:
        if 0 < data.find(b'\xf7\xd1') - data.find(b'\xf2\xae') < 20:
            return 'strlen'
    if data.find(b'\xf3\xa4') >= 0 or data.find(b'\xf3\xa5') >= 0:
        if data.find(b'\xfc') >= 0:
            return 'memcpy'
    if data.find(b'\xf3\xaa') >= 0 or data.find(b'\xf3\xab') >= 0:
        if data.find(b'\xfc') >= 0:
            return 'memset'
    if data.find(b'\x99') >= 0:
        if data.find(b'\x31\xd0') >= 0 or data.find(b'\x29\xd0') >= 0:
            return 'abs'
    for ah, name in [(0x4A, 'dos_resize_mem'), (0x48, 'dos_alloc_mem'),
                     (0x49, 'dos_free_mem'), (0x3D, 'dos_open_file'),
                     (0x3E, 'dos_close_file'), (0x3F, 'dos_read_file'),
                     (0x40, 'dos_write_file'), (0x42, 'dos_seek_file'),
                     (0x35, 'dos_get_intvec'), (0x09, 'dos_print_str')]:
        if data.find(bytes([0xB4, ah])) >= 0 and data.find(b'\xcd\x21') >= 0:
            return name
    if data.find(b'\xf3\xa6') >= 0 or data.find(b'\xf3\xa7') >= 0:
        return 'strcmp'
    return None


def _load_known_funcs():
    """Load known_funcs.json if it exists."""
    if not os.path.exists(KNOWN_FUNCS_PATH):
        return {'signatures': []}
    import json
    with open(KNOWN_FUNCS_PATH) as f:
        return json.load(f)

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


def process(name, rel_path, start_offset, exact_bytes=False):
    path = os.path.join(ORIG_DIR, rel_path)
    if not os.path.exists(path):
        print(f'{name}: SKIP (file not found at {path})')
        return None

    with open(path, 'rb') as f:
        data = f.read()

    # Build label map — loaded from .names.json sidecar, then heuristics
    label_map = {}

    # Load sidecar overrides
    sidecar_data = _load_sidecar(SIDECAR_PATH)
    sidecar_entry = sidecar_data.get(name, {})

    # Also load .names.json sidecar for this overlay (if it exists)
    names_path = os.path.join(ASM_DIR, f'{name}.names.json')
    if os.path.exists(names_path):
        import json
        with open(names_path) as f:
            names_data = json.load(f)
        for key, func_name in sorted(names_data.get('names', {}).items(),
                                     key=lambda x: int(x[0])):
            try:
                off = int(key)
                if off not in label_map:
                    label_map[off] = func_name
            except ValueError:
                pass

    # Dedup: ensure unique labels (same name at different offsets → _1, _2, ...)
    name_count = {}
    deduped = {}
    for off in sorted(label_map.keys()):
        base = label_map[off]
        n = name_count.get(base, 0) + 1
        name_count[base] = n
        deduped[off] = f'{base}_{n}' if n > 1 else base
    label_map.clear()
    label_map.update(deduped)

    # Build classification bitmap
    from lib.verify import clear_assemble_cache
    clear_assemble_cache()

    entry_points = set()
    bitmap, info = classify(
        data, start_offset,
        entry_points=entry_points,
        sidecar_entry=sidecar_entry,
    )

    # Only call targets and jump-table entries get labels
    # (intra-function branch targets are excluded to reduce noise)
    code_targets = info['call_targets']

    # Pattern-match call targets against known_funcs db + runtime patterns
    known_db = _load_known_funcs()
    for off in sorted(info.get('call_targets', set())):
        if off in label_map:
            continue
        sz = min(256, len(data) - off)
        if sz < 4:
            continue
        chunk = data[off:off + sz]
        crc = _crc16(chunk)
        found = None
        for s in known_db.get('signatures', []):
            for entry in s.get('entries', []):
                if entry['crc'] == crc and entry['size'] == sz:
                    found = s['name']
                    break
            if found:
                break
        if found:
            base = found
            n = name_count.get(base, 0) + 1
            name_count[base] = n
            label_map[off] = f'{base}_{n}' if n > 1 else base

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
        if bitmap[off] != 2:  # not IS_DATA → already handled
            continue
        # Decode from this offset until a terminator, mark as IS_CODE
        end = min(off + 512, len(data))
        try:
            for insn in md_code.disasm(data[off:end], off):
                if insn.mnemonic in _TERMINATORS:
                    end = insn.address + insn.size
                    break
                end = insn.address + insn.size
        except Exception:
            pass
        for i in range(off, min(end, len(data))):
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
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
        md = Cs(CS_ARCH_X86, CS_MODE_16)
        i = 0
        while i < len(orig):
            if orig[i] == built[i]:
                i += 1
                continue
            try:
                insn = next(md.disasm(orig[i:], i))
            except StopIteration:
                print(f'{name} → {rel_path}  [FAIL]  mismatch at 0x{i:04x}')
                print_warnings()
                return False
            orig_chunk = orig[i:i + insn.size]
            built_chunk = built[i:i + insn.size]
            if not _is_semantically_equivalent(orig_chunk, built_chunk, i):
                print(f'{name} → {rel_path}  [FAIL]  semantic mismatch at 0x{i:04x}')
                print_warnings()
                return False
            i += insn.size

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
