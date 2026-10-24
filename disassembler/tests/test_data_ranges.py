"""A named data object gets a file of its own; the data left over gets one
per run."""

import unittest

from lib.aztec.datamodules import DataModule
from lib.compare.render import _note_data_root
from lib.compare.splitting import (_partition_function_records,
                                   _select_data_ranges,
                                   _select_leftover_data_ranges)
from lib.compare.records import _label_record
from lib.symtab import Space, Symbol


def label(text, off):
    return _label_record(Symbol.anchor(text, off), off)


def block(start, end):
    return {'type': 'data_block', 'start': start, 'end': end}


def _named(name, off):
    return Symbol.data(Space.DS, off, name)


class SelectDataRangesTest(unittest.TestCase):
    def test_an_object_ends_at_the_next_label(self):
        records = [label('__zctp_', 0x100), block(0x100, 0x182),
                   label('__zaztec_MEMRY', 0x182), block(0x182, 0x190)]
        self.assertEqual(_select_data_ranges(records, {0x100: 'ctp_'}),
                         [(0x100, 0x182, 'ctp_')])

    def test_the_last_object_ends_with_the_data(self):
        records = [label('__zerrno', 0x100), block(0x100, 0x102),
                   {'type': 'mnem', 'offset': 0x102, 'size': 1, 'text': 'ret'}]
        self.assertEqual(_select_data_ranges(records, {0x100: 'errno'}),
                         [(0x100, 0x102, 'errno')])

    def test_a_generic_label_ends_the_object_before_it(self):
        records = [label('__zfcb2', 0x100), block(0x100, 0x110),
                   label('__zdseg_0110', 0x110), block(0x110, 0x120)]
        self.assertEqual(_select_data_ranges(records, {0x100: 'fcb2'}),
                         [(0x100, 0x110, 'fcb2')])

    def test_partition_puts_data_in_the_data_folder(self):
        records = [label('__zctp_', 0x100), block(0x100, 0x182)]
        main, files = _partition_function_records(
            records, [(0x100, 0x182, 'ctp_')], 'vinstall',
            data_starts={0x100})
        self.assertEqual(list(files), ['vinstall/data/ctp_.asm'])
        self.assertEqual(main[0]['text'], '%include "vinstall/data/ctp_.asm"')


def mnem(off, size=1):
    return {'type': 'mnem', 'offset': off, 'size': size, 'text': 'ret'}


def address(off):
    return f'cseg_{off:04x}'


class LeftoverDataRangesTest(unittest.TestCase):
    def test_a_generic_run_is_one_file_named_for_its_first_label(self):
        records = [label('__zdseg_001e', 0x100), block(0x100, 0x104),
                   label('__zdseg_0022', 0x104), block(0x104, 0x106)]
        self.assertEqual(
            _select_leftover_data_ranges(records, [], address),
            [(0x100, 0x106, 'dseg_001e')])

    def test_a_named_label_starts_an_object_of_its_own(self):
        records = [_label_record(Symbol.data(Space.CSEG, 0x100), 0x100),
                   block(0x100, 0x101),
                   _label_record(_named('saved_video_mode', 0x101), 0x101),
                   block(0x101, 0x102)]
        self.assertEqual(
            _select_leftover_data_ranges(records, [], address),
            [(0x100, 0x101, 'cseg_0100'),
             (0x101, 0x102, 'saved_video_mode')])

    def test_a_named_object_ends_at_the_next_label(self):
        records = [_label_record(_named('mouse_drawn_y', 0x100), 0x100),
                   block(0x100, 0x102),
                   _label_record(Symbol.data(Space.CSEG, 0x102), 0x102),
                   block(0x102, 0x106),
                   _label_record(Symbol.data(Space.CSEG, 0x106), 0x106),
                   block(0x106, 0x108)]
        self.assertEqual(
            _select_leftover_data_ranges(records, [], address),
            [(0x100, 0x102, 'mouse_drawn_y'), (0x102, 0x108, 'cseg_0102')])

    def test_an_unlabeled_run_is_named_for_its_address(self):
        records = [mnem(0xff), block(0x100, 0x102)]
        self.assertEqual(
            _select_leftover_data_ranges(records, [], address),
            [(0x100, 0x102, 'cseg_0100')])

    def test_an_instruction_ends_the_run(self):
        records = [block(0x100, 0x102), mnem(0x102), block(0x103, 0x104)]
        self.assertEqual(
            _select_leftover_data_ranges(records, [], address),
            [(0x100, 0x102, 'cseg_0100'), (0x103, 0x104, 'cseg_0103')])

    def test_an_empty_record_ends_the_run(self):
        records = [block(0x100, 0x102),
                   {'type': 'ds_start', 'offset': 0x102, 'size': 0},
                   block(0x102, 0x104)]
        self.assertEqual(
            [start for start, _, _ in
             _select_leftover_data_ranges(records, [], address)],
            [0x100, 0x102])

    def test_claimed_bytes_are_left_to_their_range(self):
        records = [label('__zfcb2', 0x100), block(0x100, 0x110),
                   label('__zdseg_0110', 0x110), block(0x110, 0x120)]
        claimed = _select_data_ranges(records, {0x100: 'fcb2'})
        self.assertEqual(
            _select_leftover_data_ranges(records, claimed, address),
            [(0x110, 0x120, 'dseg_0110')])

    def test_a_layout_label_cuts_the_run_and_names_nothing(self):
        records = [block(0xf0, 0x100), label('__zdata_start', 0x100),
                   label('__zdseg_9098', 0x100), block(0x100, 0x104)]
        self.assertEqual(
            _select_leftover_data_ranges(records, [], address),
            [(0xf0, 0x100, 'cseg_00f0'), (0x100, 0x104, 'dseg_9098')])

    def test_a_layout_label_stays_in_the_master_ahead_of_the_include(self):
        records = [label('__zdseg_9098', 0x100), label('__zdata_start', 0x100),
                   block(0x100, 0x104)]
        main, files = _partition_function_records(
            records, [(0x100, 0x104, 'dseg_9098')], 'vmele',
            data_starts={0x100})
        self.assertEqual([rec.get('text') for rec in main],
                         ['__zdata_start:',
                          '%include "vmele/data/dseg_9098.asm"'])
        self.assertEqual([rec['type'] for rec in
                          files['vmele/data/dseg_9098.asm']],
                         ['label', 'data_block'])


STKSIZ = DataModule('stksiz.c', (('_STKSIZ', 0), ('_STKRED', 2),
                                 ('_HEAPSIZ', 4), ('_STKLOW', 6)),
                    bytes.fromhex('0001000800010000'))


class VendorModuleTest(unittest.TestCase):
    def records(self):
        out = []
        for i, name in enumerate(('_STKSIZ', '_STKRED', '_HEAPSIZ',
                                  '_STKLOW')):
            out += [label('__z' + name, 0x100 + 2 * i),
                    block(0x100 + 2 * i, 0x102 + 2 * i)]
        return out + [label('__zioflg', 0x108), block(0x108, 0x10a)]

    def roots(self):
        return {0x100 + 2 * i: name for i, name in enumerate(
            ('_STKSIZ', '_STKRED', '_HEAPSIZ', '_STKLOW', 'ioflg'))}

    def image(self, data):
        return bytes(0x100) + data + bytes(0x10)

    def test_the_module_is_one_file(self):
        self.assertEqual(
            _select_data_ranges(self.records(), self.roots(),
                                self.image(STKSIZ.data), [STKSIZ]),
            [(0x100, 0x108, 'stksiz'), (0x108, 0x10a, 'ioflg')])

    def test_other_bytes_leave_the_objects_apart(self):
        ranges = _select_data_ranges(self.records(), self.roots(),
                                     self.image(bytes(8)), [STKSIZ])
        self.assertEqual(len(ranges), 5)

    def test_a_missing_name_leaves_the_objects_apart(self):
        roots = self.roots()
        del roots[0x104]
        ranges = _select_data_ranges(self.records(), roots,
                                     self.image(STKSIZ.data), [STKSIZ])
        self.assertNotIn('stksiz', [name for _, _, name in ranges])

    def test_a_one_object_module_ends_at_its_own_length(self):
        ctype = DataModule('ctype.c', (('ctp_', 0),), b'\x00\x20\x20')
        records = [label('__zctp_', 0x100), block(0x100, 0x103),
                   block(0x103, 0x104)]
        self.assertEqual(
            _select_data_ranges(records, {0x100: 'ctp_'},
                                bytes(0x100) + ctype.data + b'\x00',
                                [ctype]),
            [(0x100, 0x103, 'ctp_')])


class NoteDataRootTest(unittest.TestCase):
    def anchor(self, off):
        return Symbol.anchor('__zx', off)

    def test_a_named_object_is_a_root(self):
        roots = {}
        _note_data_root(roots, self.anchor(0x100), 0, _named('ctp_', 0x2452))
        self.assertEqual(roots, {0x100: 'ctp_'})

    def test_a_generic_name_is_not(self):
        roots = {}
        _note_data_root(roots, self.anchor(0x100), 0,
                        Symbol.data(Space.DS, 0x1444))
        self.assertEqual(roots, {})

    def test_a_name_inside_a_string_is_not(self):
        roots = {}
        _note_data_root(roots, self.anchor(0x100), 9, _named('msg', 0x2e))
        self.assertEqual(roots, {})


if __name__ == '__main__':
    unittest.main()
