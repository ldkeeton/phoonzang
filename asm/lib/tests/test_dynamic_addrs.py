"""Dynamic-address goal tests (plan.md).

Two layers:

* pure classification tests for ``count_frozen_addrs`` (the metric that tracks
  the goal);
* a baseline check over the committed ``asm_DSAVANT`` tree: ``frozen_addr`` may
  only decrease as values are rewritten into assembler expressions.
"""

import os
import pathlib
import struct
import subprocess
import tempfile
import unittest

from lib.compare.render import _build_source
from lib.compare.records import count_frozen_addrs


_ASM_DIR = pathlib.Path(__file__).resolve().parents[2]
_PROJECT_ROOT = _ASM_DIR.parent
_TREE = _PROJECT_ROOT / 'asm_DSAVANT'
_SKIP_DIRS = {'build_out', 'inc'}


def _nasm(text):
    """Assemble *text* with nasm ``-f bin`` and return the bytes (or raise)."""
    with tempfile.TemporaryDirectory() as d:
        asm = os.path.join(d, 't.asm')
        out = os.path.join(d, 't.bin')
        with open(asm, 'w') as f:
            f.write(text)
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-o', out, asm],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            raise AssertionError(r.stderr)
        with open(out, 'rb') as f:
            return f.read()


def _nasm_file(path, inc_dir):
    """Assemble a source file with include root *inc_dir*; return the bytes."""
    with tempfile.NamedTemporaryFile(suffix='.bin') as out:
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow',
             f'-I{inc_dir}/', '-o', out.name, path],
            capture_output=True, text=True,
        )
        if r.returncode != 0:
            raise AssertionError(r.stderr)
        out.seek(0)
        return out.read()


def _copy_source_tree(dest):
    """Copy the assembler source tree (``.asm``/``.inc``) into *dest*."""
    import shutil
    for path in _TREE.rglob('*'):
        rel = path.relative_to(_TREE)
        if rel.parts[0] == 'build_out' or not path.is_file():
            continue
        if path.suffix not in ('.asm', '.inc'):
            continue
        target = os.path.join(dest, rel)
        os.makedirs(os.path.dirname(target), exist_ok=True)
        shutil.copy2(path, target)


def _mz_header(e_ss):
    header = bytearray(0x200)
    struct.pack_into(
        '<2s13H', header, 0,
        b'MZ', 0x0056, 0x0088, 1, 0x0020, 0x0e4b, 0xffff,
        e_ss, 0xf198, 0, 0x0010, 0, 0x0020, 0,
    )
    return header


# Snapshot taken from the committed tree after the F1/F2/F3/F5 work (2026-10-11).
# ``frozen_addr`` may only go down from here.
BASELINE_TOTALS = {
    'f1': 2, 'f2': 13, 'f3': 134, 'f4': 1407, 'f5': 3, 'f6': 241,
    'total': 1800,
}


def _scan_tree():
    totals = {k: 0 for k in BASELINE_TOTALS}
    for path in sorted(_TREE.rglob('*.asm')):
        rel = path.relative_to(_TREE)
        if rel.parts[0] in _SKIP_DIRS:
            continue
        counts = count_frozen_addrs(path.read_text(errors='ignore'))
        for key in totals:
            totals[key] += counts[key]
    return totals


class CountFrozenAddrsTests(unittest.TestCase):
    def test_classifies_each_taxonomy(self):
        text = '\n'.join([
            '    dw 0x0056 ; e_cblp: bytes in final page',
            '    dw 0x0ff6 ; e_ss: initial stack segment',
            '    dw 0x93df ; o_csize: code size in bytes',
            'cseg_2f36 equ 0x2f36',
            'dseg_0002 equ 0x0002',
            'bss_0cf6 equ 0x0cf6',
            '    times 44813 db 0',
            '    times 4 db 0',
            '    dw 0x490f ; 0x4822',
            'IMAGE_BASE equ 0x0200',
        ])
        counts = count_frozen_addrs(text)
        self.assertEqual(counts['f1'], 2)
        self.assertEqual(counts['f2'], 1)
        self.assertEqual(counts['f3'], 1)
        self.assertEqual(counts['f4'], 2)
        self.assertEqual(counts['f5'], 1)  # the 44813 pad, not the 4-byte run
        self.assertEqual(counts['f6'], 1)
        self.assertEqual(counts['total'], 8)

    def test_dynamic_expressions_are_not_counted(self):
        text = '\n'.join([
            '    dw (__zimage_end - $$) % 512 ; 0x0056 ; e_cblp: bytes',
            '    dw __zdataseg_para ; 0x0ff6 ; e_ss: stack',
            '    times (__zdataseg_start - ($ - $$)) db 0 ; 0xaf0d',
            '    dw string_loc_490f - IMAGE_BASE ; 0x490f ; 0x4822',
            'cseg_490f:',
        ])
        counts = count_frozen_addrs(text)
        self.assertEqual(counts['total'], 0)

    def test_empty_text(self):
        self.assertEqual(count_frozen_addrs('')['total'], 0)


class DynamicDataAnchorTests(unittest.TestCase):
    """The MZ code→data gap and header fields reassemble from expressions."""

    def _original(self):
        header = _mz_header(e_ss=1)          # data_origin = 0x200 + 0x10 = 0x210
        code = bytes([0x90])                 # one nop at 0x200
        gap = bytes(0x210 - 0x201)           # 0x201..0x210
        data = bytes(range(0x10, 0x20))      # 0x210..0x220
        binary = bytes(header) + code + gap + data
        # Make the stored length fields agree with the actual image so the
        # dynamic header reproduces them exactly.
        binary = bytearray(binary)
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        binary = bytes(binary)
        records = [
            {'type': 'mnem', 'text': 'nop', 'offset': 0x200, 'size': 1},
            {'type': 'data_block', 'start': 0x201, 'end': 0x220, 'bytes': []},
        ]
        return binary, records

    def test_gap_and_headers_are_dynamic(self):
        binary, records = self._original()
        src, _ = _build_source(records, 0x200, binary, label_map={})
        self.assertIn('%if ($ - $$) > 0x210', src)
        self.assertIn('__zdataseg_start:', src)
        self.assertIn('dw __zdataseg_para', src)
        self.assertIn('__zimage_end:', src)
        self.assertIn('dw (__zimage_end - $$) % 512', src)
        # Original values are preserved as comments.
        self.assertIn('; 0x0020 ; e_cblp:', src)
        self.assertIn('; 0x0001 ; e_ss:', src)

    def test_original_layout_reassembles_byte_for_byte(self):
        binary, records = self._original()
        src, _ = _build_source(records, 0x200, binary, label_map={})
        built = _nasm(src)
        self.assertEqual(len(built), len(binary))
        self.assertEqual(built, binary)

    def test_growth_past_data_origin_moves_data(self):
        binary, records = self._original()
        src, _ = _build_source(records, 0x200, binary, label_map={})
        # Insert 31 extra nops (32 total): code ends at 0x220 > data_origin 0x210.
        grown = src.replace('    nop', '    nop\n' + '    nop\n' * 31, 1)
        built = _nasm(grown)
        e_ss = struct.unpack_from('<H', built, 14)[0]
        self.assertEqual(e_ss, (0x220 - 0x200) // 16)   # 2 paragraphs
        self.assertEqual(len(built), 0x220 + 0x10)        # data moved to 0x220
        # Header length fields agree with the new image.
        e_cblp, e_cp = struct.unpack_from('<HH', built, 2)
        self.assertEqual(e_cblp, len(built) % 512)
        self.assertEqual(e_cp, (len(built) + 511) // 512)


class InsertBytePropertyTests(unittest.TestCase):
    """Acceptance test: editing a fragment keeps the image consistent.

    Assembles the real ``ds`` source in a scratch copy, then repeats with one
    ``nop`` inserted (fits the gap → data unmoved) and with a large insert
    (grows past the gap → data relocates, ``e_ss`` tracks it).
    """

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'ds.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_ds_insert_byte_property(self):
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'ds.asm')
            original = _nasm_file(master, d)
            data_origin = 0x200 + struct.unpack_from('<H', original, 14)[0] * 16

            frag = os.path.join(d, 'ds', 'app_malloc.asm')
            with open(frag) as f:
                lines = f.read().splitlines(keepends=True)

            # 1) a single nop fits in the code→data gap.
            with open(frag, 'w') as f:
                f.writelines([lines[0], '    nop\n'] + lines[1:])
            mut = _nasm_file(master, d)
            self.assertEqual(len(mut), len(original))
            self.assertEqual(struct.unpack_from('<H', mut, 14)[0],
                             struct.unpack_from('<H', original, 14)[0])
            self.assertEqual(mut[data_origin:],
                             original[data_origin:])
            cblp, cp = struct.unpack_from('<HH', mut, 2)
            self.assertEqual(cblp, len(mut) % 512)
            self.assertEqual(cp, (len(mut) + 511) // 512)

            # 2) a large insertion overflows the gap → data relocates.
            with open(frag, 'w') as f:
                f.writelines([lines[0], '    times 45000 db 0x90\n'] + lines[1:])
            grown = _nasm_file(master, d)
            new_origin = 0x200 + struct.unpack_from('<H', grown, 14)[0] * 16
            self.assertGreater(new_origin, data_origin)
            self.assertEqual(new_origin % 16, 0)
            self.assertEqual(grown[new_origin:new_origin + len(original) - data_origin],
                             original[data_origin:])
            g_cblp, g_cp = struct.unpack_from('<HH', grown, 2)
            self.assertEqual(g_cblp, len(grown) % 512)
            self.assertEqual(g_cp, (len(grown) + 511) // 512)


class CommittedTreeBaselineTests(unittest.TestCase):
    @unittest.skipUnless(_TREE.is_dir(), 'generated asm_DSAVANT tree not present')
    def test_frozen_addr_only_decreases(self):
        totals = _scan_tree()
        for key, limit in BASELINE_TOTALS.items():
            self.assertLessEqual(
                totals[key], limit,
                f'frozen_addr.{key} rose to {totals[key]} (baseline {limit})',
            )


if __name__ == '__main__':
    unittest.main()
