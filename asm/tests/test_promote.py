"""D5 promotion tests (plan.md Section 13, 15).

Three layers:

* unit tests for the record splice and the symbol expressions;
* a synthetic round-trip: the promoted ``dw`` reassembles to the original two
  bytes (§15.2), and follows an inserted data byte (§15.4, data dimension);
* a real-corpus check that the *emitted* set equals the asserted corpus and
  never touches a ``not_pointers`` word.
"""

import contextlib
import io
import pathlib
import struct
import tempfile
import unittest
from unittest.mock import patch

from lib.sidecar.binary import per_binary as sidecar_per_binary
from lib.sidecar.loader import load as load_sidecar
from main.options import APPS_DIR
from main.runner import process

from lib.compare import promote as PR
from lib.compare.render import _build_source, mz_data_gap
from lib.compare.records import count_frozen_addrs
from lib.segments import SegmentModel


def _mz_header(e_ss):
    header = bytearray(0x200)
    struct.pack_into(
        '<2s13H', header, 0,
        b'MZ', 0x0056, 0x0088, 1, 0x0020, 0x0e4b, 0xffff,
        e_ss, 0xf198, 0, 0x0010, 0, 0x0020, 0,
    )
    return bytes(header)


def _nasm(text):
    import os
    import subprocess
    with tempfile.TemporaryDirectory() as d:
        asm = os.path.join(d, 't.asm')
        out = os.path.join(d, 't.bin')
        with open(asm, 'w') as f:
            f.write(text)
        r = subprocess.run(
            ['nasm', '-O0', '-f', 'bin', '-w-number-overflow', '-o', out, asm],
            capture_output=True, text=True)
        if r.returncode != 0:
            raise AssertionError(r.stderr)
        with open(out, 'rb') as f:
            return f.read()


def _synthetic(data=None, *, second_pointer=False):
    """MZ image: 1-byte code, zero gap, then data with a pointer word."""
    header = _mz_header(e_ss=1)              # data_origin = 0x200 + 0x10
    code = b'\x90'
    gap = bytes(0x210 - (0x200 + len(code)))
    if data is None:
        data = bytearray(0x20)
        struct.pack_into('<H', data, 0x0, 0x0008)   # ds 0x00 -> ds 0x08
        data[0x08] = 0xAB
    binary = bytearray(header + code + gap + bytes(data))
    struct.pack_into('<HH', binary, 2, len(binary) % 512,
                     (len(binary) + 511) // 512)
    return bytes(binary)


def _records(binary):
    return [
        {'type': 'mnem', 'text': 'nop', 'offset': 0x200, 'size': 1},
        {'type': 'data_block', 'start': 0x201, 'end': len(binary),
         'bytes': []},
    ]


def _model(binary):
    return SegmentModel(kind='mz', file_size=len(binary), cs_origin=0x200,
                        data_origin=0x210, bss_boundary=len(binary) - 0x210,
                        header_size=0x200)


class MergePromotionsTests(unittest.TestCase):
    def test_corpus_only_word_is_promoted(self):
        merged = PR.merge_promotions(
            [{'offset': 0x10, 'space': 'ds'}],
            [{'offset': 0x10, 'space': 'ds'}, {'offset': 0x20, 'space': 'ds'}])
        self.assertEqual([e['offset'] for e in merged], [0x10, 0x20])
        self.assertEqual(merged[0]['source'], 'scorer+corpus')
        self.assertEqual(merged[1]['source'], 'corpus')

    def test_corpus_wins_on_space(self):
        merged = PR.merge_promotions(
            [{'offset': 0x10, 'space': 'cs'}], [{'offset': 0x10, 'space': 'ds'}])
        self.assertEqual(merged[0]['space'], 'ds')


class SplitRecordTests(unittest.TestCase):
    def test_splits_a_data_block(self):
        binary = _synthetic()
        records = _records(binary)
        out = PR._split_records(records, binary, 0x214, 'dseg_0004')
        self.assertIsNotNone(out)
        kinds = [r['type'] for r in out]
        self.assertEqual(kinds, ['mnem', 'data_block', 'data_ptr',
                                 'data_block'])
        self.assertEqual(out[2]['text'], 'dseg_0004')
        self.assertEqual(out[1]['end'], 0x214)
        self.assertEqual(out[3]['start'], 0x216)

    def test_refuses_a_mnemonic_span(self):
        binary = _synthetic()
        records = _records(binary)
        self.assertIsNone(PR._split_records(records, binary, 0x200, 'x'))

    def test_refuses_a_jump_table(self):
        binary = _synthetic()
        records = [
            {'type': 'mnem', 'text': 'nop', 'offset': 0x200, 'size': 1},
            {'type': 'jump_table', 'start': 0x201, 'end': 0x230, 'entries': []},
        ]
        self.assertIsNone(PR._split_records(records, binary, 0x214, 'x'))


class ExpressionTests(unittest.TestCase):
    def test_ds_expression_is_dseg_below_bss(self):
        mem_equ = {}
        self.assertEqual(PR._ds_expression(0x08, 0x20, mem_equ), 'dseg_0008')
        self.assertEqual(mem_equ, {'dseg_0008': 0x08})

    def test_ds_expression_is_bss_at_or_above_bss(self):
        mem_equ = {}
        self.assertEqual(PR._ds_expression(0x20, 0x20, mem_equ), 'bss_0020')
        self.assertEqual(mem_equ, {'bss_0020': 0x20})

    def test_existing_equ_is_not_clobbered(self):
        mem_equ = {'dseg_0008': 0x08}
        PR._ds_expression(0x08, 0x20, mem_equ)
        self.assertEqual(mem_equ, {'dseg_0008': 0x08})


class SyntheticPromotionTests(unittest.TestCase):
    """Round-trip and data-edit properties on a synthetic MZ image (§15.2/4)."""

    def _source(self, binary, *, promote=True):
        records = _records(binary)
        mem_equ = {}
        promotion = {'promoted': [], 'skipped': []}
        if promote:
            records, promotion = PR.promote_data_pointers(
                records, binary, 0x200, _model(binary),
                [{'offset': 0x210, 'space': 'ds', 'source': 'corpus'}],
                mem_equ)
        src, _ = _build_source(records, 0x200, binary, label_map={},
                               mem_equ=mem_equ)
        return src, promotion

    def test_emits_a_symbolic_word(self):
        binary = _synthetic()
        src, promotion = self._source(binary)
        self.assertEqual([w['offset'] for w in promotion['promoted']], [0x210])
        self.assertIn('dw dseg_0008', src)
        self.assertIn('dseg_0008 equ __zdseg_0008 - __zdseg_start', src)
        self.assertEqual(promotion['skipped'], [])

    def test_original_layout_reassembles_byte_for_byte(self):
        binary = _synthetic()
        src, _ = self._source(binary)
        self.assertEqual(_nasm(src), binary)

    def test_promoted_word_is_not_counted_as_frozen(self):
        binary = _synthetic()
        src, _ = self._source(binary)
        self.assertEqual(count_frozen_addrs(src)['data_shift'], 0)

    def test_word_follows_an_inserted_data_byte(self):
        binary = _synthetic()
        src, _ = self._source(binary)
        # Insert between the pointer word and its target: the word stays put,
        # the target moves from DS:8 to DS:9, so the stored pointer follows.
        grown = src.replace('__zdseg_0008:', '    db 0xee\n__zdseg_0008:', 1)
        built = _nasm(grown)
        self.assertEqual(built[0x210:0x212], b'\x09\x00')
        self.assertEqual(built[0x210 + 9], 0xAB)

    def test_word_follows_an_inserted_data_byte_before_it(self):
        binary = _synthetic()
        src, _ = self._source(binary)
        grown = src.replace('__zdseg_start:',
                            '__zdseg_start:\n    db 0xee', 1)
        built = _nasm(grown)
        # Both the word and its target shifted by one, so the pointer still
        # names the same byte content (DS:9 = file 0x219).
        self.assertEqual(built[0x211:0x213], b'\x09\x00')
        self.assertEqual(built[0x210 + 9], 0xAB)

    def test_unpromoted_word_stays_raw(self):
        binary = _synthetic()
        src, promotion = self._source(binary, promote=False)
        self.assertNotIn('dw dseg_0008', src)
        self.assertEqual(_nasm(src), binary)

    def test_bss_target_uses_the_dynamic_data_size(self):
        # A pointer word whose target lies past the file-backed data.
        data = bytearray(0x10)
        struct.pack_into('<H', data, 0x0, 0x0030)   # ds 0x00 -> ds 0x30 (BSS)
        binary = _synthetic(data)
        src, _ = self._source(binary)
        self.assertIn(
            'bss_0030 equ (__zimage_end - __zdseg_start) + 0x0020', src)
        self.assertIn('dw bss_0030', src)
        self.assertEqual(_nasm(src), binary)

    def test_no_data_anchor_leaves_the_word_raw(self):
        # A non-zero byte before the data origin means there is no dynamic pad,
        # so there is no ``__zdseg_start`` to bind to and the promotion
        # declines rather than freezing the value.
        binary = bytearray(_synthetic())
        binary[0x205] = 0x7f
        struct.pack_into('<HH', binary, 2, len(binary) % 512,
                         (len(binary) + 511) // 512)
        binary = bytes(binary)
        records = _records(binary)
        self.assertIsNone(mz_data_gap(records, binary, 0x200))
        _, report = PR.promote_data_pointers(
            records, binary, 0x200, _model(binary),
            [{'offset': 0x210, 'space': 'ds'}], {})
        self.assertEqual(report['promoted'], [])
        self.assertEqual(report['skipped'][0]['reason'], 'no-data-anchor')


class CorpusPromotionPipelineTests(unittest.TestCase):
    """The real ``vinstall`` corpus: every asserted word is emitted as a ``dw``."""

    @classmethod
    def setUpClass(cls):
        cls._output = tempfile.TemporaryDirectory(prefix='ds-promote-')
        project_dir = pathlib.Path(APPS_DIR) / 'DSAVANT'
        cls.sidecar = load_sidecar('DSAVANT')
        entry = sidecar_per_binary(cls.sidecar, 'vinstall')
        captured = {}

        def _capture(ctx, *args, **kwargs):
            captured['verify'] = dict(ctx.report.get('verify', {}))

        with (patch('main.runner.write_report', return_value=''),
              patch('main.runner.write_layers', return_value=''),
              patch('main.runner.print_short_report', _capture),
              contextlib.redirect_stdout(io.StringIO())):
            process(
                'vinstall', str(project_dir), 'VINSTALL.EXE', 0x200,
                output_dir=cls._output.name, sidecar_entry=entry)
        cls.verify = captured['verify']

    @classmethod
    def tearDownClass(cls):
        cls._output.cleanup()

    def test_every_asserted_word_is_emitted(self):
        entry = sidecar_per_binary(self.sidecar, 'vinstall')
        asserted = {e['offset'] for e in entry['data_pointers']}
        emitted = {w['offset'] for w in self.verify['promoted_data_words']}
        self.assertEqual(emitted, asserted)

    def test_nothing_is_skipped(self):
        self.assertEqual(self.verify['promotion_skipped'], [])

    def test_no_not_pointer_is_emitted(self):
        entry = sidecar_per_binary(self.sidecar, 'vinstall')
        negatives = {e['offset'] for e in entry['not_pointers']}
        emitted = {w['offset'] for w in self.verify['promoted_data_words']}
        self.assertFalse(negatives & emitted)

    def test_words_and_pointers_agree(self):
        # A word promoted by the corpus override must not contradict the scorer:
        # wherever the scorer has an opinion it must match the emitted space.
        scorer = {c['offset']: c for c in self.verify['promoted_pointers']}
        for word in self.verify['promoted_data_words']:
            if word['offset'] in scorer:
                self.assertEqual(word['space'], scorer[word['offset']]['space'])


if __name__ == '__main__':
    unittest.main()
