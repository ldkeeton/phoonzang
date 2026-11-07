"""``make badc``'s ``addr`` column: C literals that are a global's address."""

import os
import unittest

from lib import badc

ADDRESSES = {'ds': {0x0e36: 'npc_id', 0x0200: 'low_flag', 0x0bb8: 'str'},
             'vmexe': {0x9136: 'combat_action_message_buffer'}}


def _addr(text, relpath='ds/game/f.c'):
    return badc._score_file(
        text, addresses=badc._file_addresses(relpath, ADDRESSES))[-1]


class AddressLiteralTest(unittest.TestCase):

    def test_a_literal_naming_a_global_is_flagged(self):
        self.assertEqual(_addr('f() { npc_id_address = 3638; }'), 1)
        self.assertEqual(_addr('f() { x = 0x0e36; }'), 1)

    def test_an_overlay_sees_its_own_data_and_the_roots(self):
        text = 'f() { g((unsigned)37174, 3638); }'
        self.assertEqual(_addr(text, os.path.join('vmexe', 'f.c')), 2)
        self.assertEqual(_addr(text, os.path.join('vinit', 'f.c')), 1)

    def test_a_small_constant_is_not_an_address(self):
        self.assertEqual(_addr('f() { x = 512; }'), 0)

    def test_a_round_decimal_is_not_an_address(self):
        self.assertEqual(_addr('f() { g(3000); }'), 0)
        self.assertEqual(_addr('f() { g(0xbb8); }'), 1)

    def test_an_unnamed_offset_is_not_flagged(self):
        self.assertEqual(_addr('f() { x = 3640; }'), 0)

    def test_the_address_taken_by_name_is_fine(self):
        self.assertEqual(_addr('f() { npc_id_address = (int)&npc_id; }'), 0)

    def test_comments_strings_and_directives_are_skipped(self):
        self.assertEqual(_addr('/* 3638 */ char *s = "3638";\n'
                               '#define X 3638\n'), 0)

    def test_no_address_map_counts_nothing(self):
        self.assertEqual(badc._score_file('f() { x = 3638; }')[-1], 0)


if __name__ == '__main__':
    unittest.main()
