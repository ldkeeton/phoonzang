#!/usr/bin/env python3
"""Inventory all IS_DATA blocks across all 17 binaries.

For each data block, reports:
  - offset & size
  - ASCII content ratio (if ≥50%)
  - Jump table detection
  - File-format magic match
  - CODE-LIKE flag: decodes fully as 16-bit x86 WITH control flow
  - First bytes (hex dump)
"""

import os, struct, sys

ASM_DIR = os.path.dirname(os.path.abspath(__file__))
ORIG_DIR = os.path.join(os.path.dirname(ASM_DIR), 'DSAVANT')
SIDECAR_PATH = os.path.join(ASM_DIR, 'sidecar.json')

sys.path.insert(0, ASM_DIR)
from lib.classify import classify, _load_sidecar
from lib.verify import _try_decode_block, _detect_jump_table, _detect_file_format

BINARIES = {
    'ds':     ('DS.EXE',    0x200),
    'vinit':  ('VINIT.OVR',    8),
    'vbase':  ('VBASE.OVR',    8),
    'vdopt':  ('VDOPT.OVR',    8),
    'vmele':  ('VMELE.OVR',    8),
    'vmexe':  ('VMEXE.OVR',    8),
    'vmaze':  ('VMAZE.OVR',    8),
    'vmnpc':  ('VMNPC.OVR',    8),
    'vpcvw':  ('VPCVW.OVR',    8),
    'vpclv':  ('VPCLV.OVR',    8),
    'vpcmk':  ('VPCMK.OVR',    8),
    'vpops':  ('VPOPS.OVR',    8),
    'vtrea':  ('VTREA.OVR',    8),
    'vmext':  ('VMEXT.OVR',    8),
    'vga':    ('VGA.DRV',      0),
    'ega':    ('EGA.DRV',      0),
    'play':   ('PLAY.DRV',     0),
}

ANSI_RED = '\033[91m'
ANSI_GREEN = '\033[92m'
ANSI_YELLOW = '\033[93m'
ANSI_CYAN = '\033[96m'
ANSI_RESET = '\033[0m'

_ascii_cache = {}
def _ascii_ratio(raw):
    k = (raw[:64], len(raw))
    if k in _ascii_cache:
        return _ascii_cache[k]
    total = min(len(raw), 64)
    ascii_c = sum(1 for b in raw[:64] if 0x20 <= b < 0x7f)
    r = ascii_c / max(total, 1)
    _ascii_cache[k] = r
    return r

def _is_all_same(raw):
    if len(raw) < 4:
        return False
    b0 = raw[0]
    return all(b == b0 for b in raw[:32]) if len(raw) > 32 else all(b == b0 for b in raw)

def _hex_preview(raw, n=8):
    return ' '.join(f'{b:02x}' for b in raw[:n])

def _ascii_preview(raw, n=16):
    return ''.join(chr(b) if 0x20 <= b < 0x7f else '.' for b in raw[:n])

def main():
    for name, (rel_path, start_offset) in BINARIES.items():
        path = os.path.join(ORIG_DIR, rel_path)
        if not os.path.exists(path):
            continue
        with open(path, 'rb') as f:
            data = f.read()

        sidecar_data = _load_sidecar(SIDECAR_PATH)
        sidecar_entry = sidecar_data.get(name, {})

        entry_points = set()
        bitmap, info = classify(data, start_offset, entry_points=entry_points, sidecar_entry=sidecar_entry)
        known_addrs = info['discovered']

        code_bytes = sum(1 for b in bitmap if b == 1)
        data_bytes = sum(1 for b in bitmap if b == 2)

        # Enumerate IS_DATA regions
        regions = []
        i = 0
        n = len(data)
        while i < n:
            if bitmap[i] == 2:
                start = i
                while i < n and bitmap[i] == 2:
                    i += 1
                regions.append((start, i))
            else:
                i += 1

        # Print binary header
        total = code_bytes + data_bytes
        pct = code_bytes / max(total, 1) * 100
        sep = '=' * 60
        print(f'\n{ANSI_CYAN}{sep}')
        print(f'{name} ({rel_path})  {len(regions)} data blocks')
        print(f'  Code: {code_bytes} ({pct:.0f}%)  Data: {data_bytes}  Total: {total}')
        print(f'{sep}{ANSI_RESET}')

        code_like_total = 0
        code_like_found = []

        for start, end in regions:
            size = end - start
            raw = data[start:end]
            ascii_ratio = _ascii_ratio(raw)
            same = _is_all_same(raw)

            tags = []

            # Check for file format
            fmt = _detect_file_format(raw)
            if fmt:
                tags.append(f'FORMAT={fmt}')

            # Check for jump table
            jt = _detect_jump_table(raw, start, n, known_addrs)
            if jt is not None:
                tags.append(f'JT={jt}')

            # Check if code-like
            insns, all_decoded, has_ctrl = _try_decode_block(raw, start)
            if insns and all_decoded and has_ctrl:
                tags.append(f'CODE-LIKE')
                code_like_total += 1
                code_like_found.append((start, end, size))
            elif insns and all_decoded and not has_ctrl:
                tags.append(f'DECODES (no ctrl)')
            elif insns and not all_decoded and has_ctrl:
                partial = sum(i.size for i in insns)
                tags.append(f'PARTIAL({partial}/{size})')

            if ascii_ratio >= 0.5:
                tags.append(f'ASCII({ascii_ratio:.0%})')
            if same:
                tags.append(f'CONST({raw[0]:#04x})')

            # Determine category line
            if tags:
                tag_str = '  '.join(tags)
            else:
                tag_str = 'plain'

            # Color code by category
            if any(t.startswith('CODE-LIKE') for t in tags):
                color = ANSI_RED
            elif any(t.startswith('PARTIAL') for t in tags):
                color = ANSI_YELLOW
            elif any(t.startswith('FORMAT') or t.startswith('JT') for t in tags):
                color = ANSI_GREEN
            elif any(t.startswith('ASCII') for t in tags):
                color = ANSI_CYAN
            else:
                color = ANSI_RESET

            hex_preview = _hex_preview(raw)
            ascii_preview = _ascii_preview(raw)
            print(f'  {color}0x{start:04x}-0x{end-1:04x}  {size:>5}B  {tag_str}{ANSI_RESET}')
            print(f'         hex: {hex_preview}')
            print(f'         asc: {ascii_preview}')

        print(f'\n{ANSI_RED}CODE-LIKE data blocks: {code_like_total}{ANSI_RESET}')
        if code_like_found:
            for s, e, sz in code_like_found:
                raw = data[s:e]
                fmt = _detect_file_format(raw)
                jt = _detect_jump_table(raw, s, len(data), known_addrs)
                extra = ''
                if fmt:
                    extra = f' FORMAT={fmt}'
                elif jt:
                    extra = f' JT={jt}'
                print(f'  -> 0x{s:04x}-0x{e-1:04x}  {sz}B{extra}')

    print()

if __name__ == '__main__':
    main()
