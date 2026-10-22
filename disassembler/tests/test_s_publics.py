"""A hand-written ``.s``'s publics against the build's names, and its data
after a DOS exit."""

import unittest

from lib.compare.cgate import CGateError
from lib.compare.coverrides import _c_bytes_to_records, _check_publics
from make.naming import asm_publics


class CheckPublicsTest(unittest.TestCase):
    override = {'path': 'src/ega/print_msg_and_exit.s',
                'publics': {'print_msg_and_exit': 0, 'msg_frame_too_big': 9,
                            'table_entry_ptr': 0x2b}}

    def test_matching_names_pass(self):
        _check_publics('print_msg_and_exit', 0x3a0f, self.override, {
            0x3a0f: 'print_msg_and_exit', 0x3a18: 'msg_frame_too_big',
            0x3a3a: 'table_entry_ptr'})

    def test_unnamed_address_fails_with_hint(self):
        with self.assertRaises(CGateError) as cm:
            _check_publics('print_msg_and_exit', 0x3a0f, self.override, {
                0x3a0f: 'print_msg_and_exit', 0x3a18: 'msg_frame_too_big',
                0x3a3a: 'loc_3a3a'})
        msg = str(cm.exception)
        self.assertIn('print_msg_and_exit.s: public table_entry_ptr at 0x3a3a '
                      'is loc_3a3a in the build', msg)
        self.assertIn('loc_3a3a=table_entry_ptr', msg)

    def test_no_label_fails(self):
        with self.assertRaises(CGateError) as cm:
            _check_publics('print_msg_and_exit', 0x3a0f, self.override, {
                0x3a0f: 'print_msg_and_exit', 0x3a3a: 'table_entry_ptr'})
        self.assertIn('the build has no label there', str(cm.exception))

    def test_c_source_has_no_publics(self):
        _check_publics('x', 0x100, {'path': 'x.c', 'publics': None}, {})


class DosExitDataTest(unittest.TestCase):
    def test_data_after_dos_exit_stays_data(self):
        code = bytes.fromhex('b409cd21b8014ccd21') + b'Frame$'
        records = _c_bytes_to_records(code, 0x3a0f, {}, {}, {}, {},
                                      data_spans=[(9, len(code))])
        self.assertEqual(records[-1]['type'], 'data_block')
        self.assertEqual((records[-1]['start'], records[-1]['end']),
                         (0x3a18, 0x3a1e))
        self.assertTrue(all(r.get('offset', 0) < 0x3a18 for r in records[:-1]))


class AsmPublicsTest(unittest.TestCase):
    def test_address_named_publics(self):
        text = ('\tpublic\tprint_msg_and_exit_\n'
                '\tpublic\tcseg_3a18, frame_digit_hi, loc_3a3a\t;note\n')
        self.assertEqual(asm_publics(text), ['cseg_3a18', 'loc_3a3a'])


if __name__ == '__main__':
    unittest.main()
