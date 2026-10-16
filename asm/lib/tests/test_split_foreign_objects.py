"""Tests for cutting a fragment's trailing neighbours (plan.md §7).

A fragment is cut at named routines only, so an unnamed neighbour is emitted
inside the earlier routine's file.  ``_split_off_foreign_objects`` trims that
tail: a foreign *code* label (a subroutine) becomes its own range, a foreign
*data* label is left for the master file, and a label inside the routine's own
code is untouched.
"""

import unittest

from lib.compare.splitting import _split_off_foreign_objects
from lib.tests.syms import cseg, generated, label, loc


def _label(offset, name):
    return label(name, offset)


def _insn(offset, text, size=1):
    return {'type': 'mnem', 'text': text, 'offset': offset, 'size': size}


def _block(start, end):
    return {'type': 'data_block', 'start': start, 'end': end}


class ForeignObjectTests(unittest.TestCase):
    def test_foreign_code_is_promoted(self):
        records = [
            _label(0x1000, 'root'), _insn(0x1000, 'ret'),
            _label(0x1010, loc(0x1010)), _insn(0x1010, 'ret'),
            _insn(0x1030, 'call loc_1010'),
        ]
        owners = {0x1000: {0x1000}, 0x1010: {0x1010}, 0x1030: {0x2000}}
        self.assertEqual(
            _split_off_foreign_objects([(0x1000, 0x1030, 'root')], records, owners),
            [(0x1000, 0x1010, 'root'), (0x1010, 0x1030, 'loc_1010')])

    def test_foreign_data_is_cut_and_stays_in_master(self):
        records = [
            _label(0x1000, 'root'), _insn(0x1000, 'ret'),
            _label(0x1010, cseg(0x1010)), _block(0x1010, 0x1030),
            _insn(0x1030, 'mov bx, cseg_1010'),
        ]
        owners = {0x1000: {0x1000}, 0x1030: {0x2000}}
        self.assertEqual(
            _split_off_foreign_objects([(0x1000, 0x1030, 'root')], records, owners),
            [(0x1000, 0x1010, 'root')])

    def test_dead_tail_data_is_cut(self):
        records = [
            _label(0x1000, 'root'), _insn(0x1000, 'ret'),
            _label(0x1010, cseg(0x1010)), _block(0x1010, 0x1030),
        ]
        owners = {0x1000: {0x1000}}
        self.assertEqual(
            _split_off_foreign_objects([(0x1000, 0x1030, 'root')], records, owners),
            [(0x1000, 0x1010, 'root')])

    def test_inside_reference_keeps_the_label(self):
        records = [
            _label(0x1000, 'root'), _insn(0x1000, 'call string_1010', size=3),
            _label(0x1010, generated('string', 0x1010)), _block(0x1010, 0x1030),
        ]
        owners = {0x1000: {0x1000}}
        self.assertEqual(
            _split_off_foreign_objects([(0x1000, 0x1030, 'root')], records, owners),
            [(0x1000, 0x1030, 'root')])

    def test_label_inside_own_code_is_untouched(self):
        records = [
            _label(0x1000, 'root'), _insn(0x1000, 'ret'),
            _label(0x1001, loc(0x1001)), _insn(0x1001, 'ret'),
            _insn(0x1030, 'call loc_1001'),
        ]
        # The label sits before the last instruction the root owns.
        owners = {0x1000: {0x1000}, 0x1001: {0x1000}, 0x1030: {0x2000}}
        self.assertEqual(
            _split_off_foreign_objects([(0x1000, 0x1030, 'root')], records, owners),
            [(0x1000, 0x1030, 'root')])

    def test_quoted_string_is_not_a_reference(self):
        records = [
            _label(0x1000, 'root'), _insn(0x1000, 'ret'),
            _label(0x1010, cseg(0x1010)),
            {'type': 'db', 'text': "db 'see cseg_1010'", 'offset': 0x1020,
             'size': 14},
        ]
        owners = {0x1000: {0x1000}, 0x1020: {0x2000}}
        self.assertEqual(
            _split_off_foreign_objects([(0x1000, 0x1030, 'root')], records, owners),
            [(0x1000, 0x1010, 'root')])


if __name__ == '__main__':
    unittest.main()
