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
from lib.sidecar import load as load_sidecar, per_binary


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


# Snapshot taken from the committed tree after the F1/F2/F3/F5 work
# (2026-10-11), the D0 census split and D1's data-label binding (2026-10-12),
# and the D7.0a shared-geometry counters (2026-10-12).  ``total`` is the
# *gated* sum (``code_shift + data_shift``); ``inert`` values (``psp_`` fields,
# ``bios_data_0410``, literal data tables) are reported but excluded from the
# gate.  D7.0a *raised* the baseline by 33: it made the previously invisible
# shared host/overlay geometry countable (13 ``o_corg`` + 13 ``o_dorg`` +
# 7 ``ds_size_imm``).  That is a one-time honesty correction, not a regression.
# Every count may only go down from here.
BASELINE_TOTALS = {
    'code_shift': 172, 'data_shift': 1244, 'inert': 248,
    'f1': 2, 'f2': 13, 'f3': 134, 'f4': 1231, 'f5': 3, 'f6': 241, 'f7': 0,
    'o_corg': 13, 'o_dorg': 13, 'ds_size_imm': 7,
    'total': 1416,
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
            'psp_env_segment equ 0x002c',
            'bios_data_0410 equ 0x0410',
            '    times 44813 db 0',
            '    times 4 db 0',
            '    dw 0x490f ; 0x4822',              # unresolved pointer -> f7
            '    dw 0x001c ; 0x1698 ; literal',    # literal data word -> f6
            'IMAGE_BASE equ 0x0200',
        ])
        counts = count_frozen_addrs(text)
        self.assertEqual(counts['f1'], 2)
        self.assertEqual(counts['f2'], 1)
        self.assertEqual(counts['f3'], 1)
        self.assertEqual(counts['f4'], 2)   # dseg_ + bss_
        self.assertEqual(counts['f5'], 1)   # the 44813 pad, not the 4-byte run
        self.assertEqual(counts['f6'], 1)   # the tagged literal word
        self.assertEqual(counts['f7'], 1)   # the untagged pointer word
        # Gate classes (plan.md section 10.2); inert is reported, not gated.
        self.assertEqual(counts['code_shift'], 2 + 1 + 1 + 1)
        self.assertEqual(counts['data_shift'], 2 + 1)
        self.assertEqual(counts['inert'], 1 + 1 + 1)  # psp_ + bios_ + f6
        self.assertEqual(counts['total'],
                         counts['code_shift'] + counts['data_shift'])

    def test_literal_tag_separates_f6_from_f7(self):
        literal = count_frozen_addrs('    dw 0x001c ; 0x1698 ; literal')
        self.assertEqual((literal['f6'], literal['f7']), (1, 0))
        self.assertEqual(literal['inert'], 1)
        self.assertEqual(literal['total'], 0)
        pointer = count_frozen_addrs('    dw 0x490f ; 0x4822')
        self.assertEqual((pointer['f6'], pointer['f7']), (0, 1))
        self.assertEqual(pointer['data_shift'], 1)
        self.assertEqual(pointer['total'], 1)

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

    def test_shared_geometry_buckets(self):
        # plan.md D7.0: overlay origins and the host DS-size immediate.
        text = '\n'.join([
            '    dw 0x5055 ; o_corg: code load origin (memory offset)',
            '    dw 0x9098 ; o_dorg: data load origin (memory offset)',
            '    dw 0x143c ; o_bss: uninitialized data size',
            '    add bx, strict word 0x9098       ; 0x4d89 ; dssize',
            '    mov cx, 0x2afe                   ; 0x367b ; dssize',
        ])
        counts = count_frozen_addrs(text)
        self.assertEqual(counts['o_corg'], 1)
        self.assertEqual(counts['o_dorg'], 1)
        self.assertEqual(counts['ds_size_imm'], 2)
        self.assertEqual(counts['f2'], 1)               # o_bss stays F2
        # code_shift also carries the F2 o_bss field.
        self.assertEqual(counts['code_shift'], 1 + 1 + 2)
        self.assertEqual(counts['data_shift'], 1)       # o_dorg
        self.assertEqual(counts['inert'], 0)
        self.assertEqual(counts['total'], 1 + 1 + 2 + 1)

    def test_dssize_immediate_without_tag_is_not_counted(self):
        # The counter is form-based: an untagged immediate is invisible.
        counts = count_frozen_addrs('    mov cx, 0x9098                   ; 0x4de3')
        self.assertEqual(counts['ds_size_imm'], 0)
        self.assertEqual(counts['total'], 0)


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


class DataSegmentLabelBindingTests(unittest.TestCase):
    """D1: ``dseg_``/``bss_`` operands follow a resized data segment.

    The synthetic MZ has ``e_ss=1`` (data origin 0x210) and two instructions:
    ``mov ax, [dseg_0004]`` (``a1 04 00``) and ``mov bx, [bss_0012]``
    (``8b 1e 12 00``).  A data symbol must be anchored to the byte it names, so
    inserting a data byte moves the label and the encoded displacement together;
    a BSS symbol must track the (dynamic) file-backed data size.
    """

    CODE = b'\xa1\x04\x00\x8b\x1e\x12\x00'    # mov ax,[dseg_0004]; mov bx,[bss_0012]
    DATA = bytes(range(0x10, 0x20))           # DS 0x00..0x0f
    DATA_ORIGIN = 0x210

    def _image(self):
        header = _mz_header(e_ss=1)
        gap = bytes(self.DATA_ORIGIN - (0x200 + len(self.CODE)))
        binary = bytearray(header + self.CODE + gap + self.DATA)
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        return bytes(binary)

    def _source(self, binary, mem_equ):
        records = [
            {'type': 'mnem', 'text': 'mov ax, [dseg_0004]',
             'offset': 0x200, 'size': 3},
            {'type': 'mnem', 'text': 'mov bx, [bss_0012]',
             'offset': 0x203, 'size': 4},
            {'type': 'data_block', 'start': 0x207, 'end': len(binary),
             'bytes': []},
        ]
        src, _ = _build_source(records, 0x200, binary, label_map={},
                               mem_equ=mem_equ)
        return src

    def test_data_symbols_become_expressions(self):
        src = self._source(self._image(),
                           {'dseg_0004': 0x04, 'bss_0012': 0x12})
        self.assertIn('dseg_0004 equ __zdseg_0004 - __zdataseg_start', src)
        self.assertIn(
            'bss_0012 equ (__zimage_end - __zdataseg_start) + 0x0002', src)
        self.assertEqual(count_frozen_addrs(src)['data_shift'], 0)

    def test_original_layout_reassembles_byte_for_byte(self):
        binary = self._image()
        src = self._source(binary, {'dseg_0004': 0x04, 'bss_0012': 0x12})
        self.assertEqual(_nasm(src), binary)

    def test_operand_follows_an_inserted_data_byte(self):
        binary = self._image()
        src = self._source(binary, {'dseg_0004': 0x04, 'bss_0012': 0x12})
        grown = src.replace('__zdataseg_start:',
                            '__zdataseg_start:\n    db 0xee', 1)
        built = _nasm(grown)
        # A file-backed byte: the target that was at DS:4 is now at DS:5, so
        # the operand follows it.
        self.assertEqual(built[0x200:0x203], b'\xa1\x05\x00')
        self.assertEqual(built[self.DATA_ORIGIN + 5], self.DATA[4])
        # A BSS byte: offset 0x12 is one byte further into the segment (0x13),
        # because the file-backed data grew by one.
        self.assertEqual(built[0x203:0x207], b'\x8b\x1e\x13\x00')


class DataStringAnchorTests(unittest.TestCase):
    """D1: a reference *inside* a string anchors to the string start.

    A word read from the middle of an Aztec string (e.g. the ``push word
    [0x2e]`` PSP-stack idiom) is not a data symbol.  The label must not slice
    the literal, but the reference must still move with the data before it.
    """

    def _image(self):
        header = _mz_header(e_ss=1)
        code = b'\xa1\x02\x00'                 # mov ax, [dseg_0002]
        gap = bytes(0x210 - (0x200 + len(code)))
        data = b'ABCDEFGH' + b'\x00' + bytes([0, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77])
        binary = bytearray(header + code + gap + data)
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        return bytes(binary)

    def _source(self, binary):
        records = [
            {'type': 'mnem', 'text': 'mov ax, [dseg_0002]',
             'offset': 0x200, 'size': 3},
            {'type': 'data_block', 'start': 0x203, 'end': len(binary),
             'bytes': []},
        ]
        src, _ = _build_source(records, 0x200, binary, label_map={},
                               mem_equ={'dseg_0002': 0x02})
        return src

    def test_reference_anchors_to_string_start(self):
        binary = self._image()
        src = self._source(binary)
        self.assertIn('dseg_0002 equ __zstr_0000 - __zdataseg_start + 0x0002',
                      src)
        self.assertIn('__zstr_0000:', src)
        self.assertNotIn('__zdseg_0002:', src)
        self.assertIn("db 'ABCDEFGH'", src)
        self.assertEqual(_nasm(src), binary)

    def test_anchor_survives_an_inserted_string_byte(self):
        src = self._source(self._image())
        # Insert a byte before the string: the start label moves, so the
        # anchored reference (string start + 2) moves with it.
        grown = src.replace('__zdataseg_start:',
                            '__zdataseg_start:\n    db 0xee', 1)
        built = _nasm(grown)
        self.assertEqual(built[0x200:0x203], b'\xa1\x03\x00')


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

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'vinstall.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_vinstall_data_insert_moves_promoted_pointers(self):
        """D5: a promoted pointer word follows an edit inside the data segment.

        The graphics-board menu is a ``char *`` array at DS 0x02 (file 0x3ae2);
        entry ``dseg_000e`` names the '0-NO GRAPHICS BOARD' string.  Inserting a
        byte between the array and that string must move both the label and the
        stored word by one, so the word still names the same byte content.
        """
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'vinstall.asm')
            original = _nasm_file(master, d)
            data_origin = 0x200 + struct.unpack_from('<H', original, 14)[0] * 16
            word_off = 0x3ae2
            start = struct.unpack_from('<H', original, word_off)[0]
            target = data_origin + start
            content = original[target:target + 23]
            self.assertEqual(content, b'0-NO GRAPHICS BOARD   \x00')

            with open(master) as f:
                src = f.read()
            grown_src = src.replace('__zdseg_000e:',
                                    '    db 0xee\n__zdseg_000e:', 1)
            self.assertNotEqual(grown_src, src)
            with open(master, 'w') as f:
                f.write(grown_src)
            grown = _nasm_file(master, d)

            new_origin = 0x200 + struct.unpack_from('<H', grown, 14)[0] * 16
            new_start = struct.unpack_from('<H', grown, word_off)[0]
            self.assertEqual(new_origin, data_origin)
            self.assertEqual(new_start, start + 1)
            self.assertEqual(
                grown[new_origin + new_start:new_origin + new_start + 23],
                content)

    @unittest.skipUnless(_TREE.is_dir() and (_TREE / 'vinstall.asm').exists(),
                         'generated asm_DSAVANT tree not present')
    def test_vinstall_data_delete_moves_promoted_pointers(self):
        """D5: the same property for a deletion (array stays word-aligned)."""
        with tempfile.TemporaryDirectory() as d:
            _copy_source_tree(d)
            master = os.path.join(d, 'vinstall.asm')
            original = _nasm_file(master, d)
            data_origin = 0x200 + struct.unpack_from('<H', original, 14)[0] * 16
            start = struct.unpack_from('<H', original, 0x3ae2)[0]
            content = original[data_origin + start:data_origin + start + 23]

            with open(master) as f:
                src = f.read()
            shrunk_src = src.replace('__zdataseg_start:\n    db 0x00, 0x00\n',
                                     '__zdataseg_start:\n', 1)
            self.assertNotEqual(shrunk_src, src)
            with open(master, 'w') as f:
                f.write(shrunk_src)
            shrunk = _nasm_file(master, d)

            new_origin = 0x200 + struct.unpack_from('<H', shrunk, 14)[0] * 16
            # The array moved back by two bytes; its first entry is now at the
            # data origin and still names the same string.
            self.assertEqual(new_origin, data_origin)
            new_start = struct.unpack_from('<H', shrunk, 0x3ae0)[0]
            self.assertEqual(new_start, start - 2)
            self.assertEqual(
                shrunk[new_origin + new_start:new_origin + new_start + 23],
                content)


class DataPointerCorpusTests(unittest.TestCase):
    """D3: the seed ``data_pointers`` corpus matches the real binaries.

    The corpus is deliberately small — it is the calibration set for the D4
    scorer and the pin for the false-positive direction (plan Section 14).
    These tests keep the seed honest against the binaries it describes.
    """

    _FILES = {'ds': 'DS.EXE', 'vinstall': 'VINSTALL.EXE'}

    @classmethod
    def setUpClass(cls):
        cls.sidecar = load_sidecar('DSAVANT')

    def _read(self, binary):
        path = _PROJECT_ROOT / 'apps' / 'DSAVANT' / self._FILES[binary]
        with open(path, 'rb') as f:
            return f.read()

    def _image_start(self, binary):
        data = self._read(binary)
        return struct.unpack_from('<H', data, 8)[0] * 16

    def test_corpus_targets_match_the_stored_words(self):
        seen = 0
        for binary in self._FILES:
            data = self._read(binary)
            for entry in per_binary(self.sidecar, binary)['data_pointers']:
                target = entry.get('target', '')
                if not target.startswith('dseg_'):
                    continue
                value = struct.unpack_from('<H', data, entry['offset'])[0]
                self.assertEqual(
                    value, int(target[len('dseg_'):], 16),
                    f'{binary}: word at {entry["offset"]:#x} is {value:#06x}, '
                    f'not {target}')
                seen += 1
        self.assertGreater(seen, 0, 'the seed corpus is empty')

    def test_corpus_offsets_lie_in_the_loaded_image(self):
        # The F7 candidate space is every non-code span of the image, not only
        # the DS data segment: e.g. vinstall 0x113c/0x1b44 are DS-pointer tables
        # stored in the code segment, and ds 0x30dc/0x3672 are code-segment data
        # words read through cs:.  Corpus words may live anywhere in the image.
        for binary in self._FILES:
            origin = self._image_start(binary)
            size = len(self._read(binary))
            result = per_binary(self.sidecar, binary)
            for entry in result['data_pointers'] + result['not_pointers']:
                self.assertGreaterEqual(
                    entry['offset'], origin,
                    f'{binary}: {entry["offset"]:#x} precedes the loaded image')
                self.assertLessEqual(
                    entry['offset'] + 2, size,
                    f'{binary}: {entry["offset"]:#x} runs past EOF')

    def test_no_offset_is_asserted_both_ways(self):
        for binary in self._FILES:
            result = per_binary(self.sidecar, binary)
            asserted = {e['offset'] for e in result['data_pointers']}
            denied = {e['offset'] for e in result['not_pointers']}
            self.assertFalse(asserted & denied,
                             f'{binary}: offset asserted both ways')


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
