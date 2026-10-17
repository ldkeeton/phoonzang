import unittest

from lib.compare.vendor import _apply_asm_annotations, _vendor_named_tails
from tests.syms import label, loc, routine


def _records():
    return [
        label('aztec_ldv', 0x10),
        {'type': 'mnem', 'text': 'call aztec_lud', 'offset': 0x10},
        label(loc(0x14), 0x14),
        {'type': 'mnem', 'text': 'test di, di', 'offset': 0x14},
        label('aztec_lrm', 0x20),
        {'type': 'mnem', 'text': 'jmp short loc_0014', 'offset': 0x20},
    ]


class SharedTailRenameTest(unittest.TestCase):
    def test_shared_tail_takes_vendor_name_and_references_follow(self):
        notes = {'aztec_ldv': {'start': 0x10, 'end': 0x18,
                               'labels': {0x14: 'chksign'}, 'comments': {}}}
        texts = [r['text'] for r in _apply_asm_annotations(_records(), notes)]
        self.assertIn('@..aztec_ldv.chksign:', texts)
        self.assertIn('jmp short @..aztec_ldv.chksign', texts)
        self.assertNotIn('loc_0014:', texts)

    def test_renamed_loc_label_is_dropped_from_label_map(self):
        notes = {'aztec_ldv': {'start': 0x10, 'end': 0x18,
                               'labels': {0x14: 'chksign'}, 'comments': {}}}
        label_map = {0x10: routine('aztec_ldv', 0x10), 0x14: loc(0x14)}
        _apply_asm_annotations(_records(), notes, label_map)
        self.assertEqual(label_map, {0x10: 'aztec_ldv'})

    def test_named_tails_match_what_the_rename_drops(self):
        notes = {'aztec_ldv': {'start': 0x10, 'end': 0x18,
                               'labels': {0x14: 'chksign', 0x16: 'x'},
                               'comments': {}}}
        label_map = {0x10: routine('aztec_ldv', 0x10), 0x14: loc(0x14),
                     0x16: routine('aztec_y', 0x16)}
        self.assertEqual(_vendor_named_tails(label_map, notes), {0x14})

    def test_loc_label_outside_routine_span_is_kept(self):
        notes = {'aztec_ldv': {'start': 0x10, 'end': 0x14,
                               'labels': {0x14: 'chksign'}, 'comments': {}}}
        texts = [r['text'] for r in _apply_asm_annotations(_records(), notes)]
        self.assertIn('loc_0014:', texts)


if __name__ == '__main__':
    unittest.main()
