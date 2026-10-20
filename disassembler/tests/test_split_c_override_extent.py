import unittest

from lib.compare.splitting import _select_split_ranges
from tests.syms import routine


class COverrideExtentTests(unittest.TestCase):
    def test_inner_root_does_not_truncate_c_routine(self):
        labels = {off: routine(name, off) for off, name in (
            (1000, 'aztec_malloc'), (1251, 'leaf_loc_x'), (1254, 'aztec_free'))}
        ranges = _select_split_ranges(
            labels, set(labels.values()), binary_size=2000,
            c_override_lengths={1000: 254})
        self.assertEqual(
            ranges, [(1000, 1254, 'aztec_malloc'), (1254, 2000, 'aztec_free')])

    def test_a_module_fragment_holds_its_other_entry_points(self):
        # mkdir.asm: mkdir, rmdir and chdir are one object, one fragment.
        labels = {off: routine(name, off) for off, name in (
            (0x2a0e, 'aztec_mkdir'), (0x2a25, 'aztec_rmdir'),
            (0x2a2c, 'aztec_chdir'), (0x2a33, 'aztec_next'))}
        ranges = _select_split_ranges(
            labels, set(labels.values()), binary_size=0x3000,
            c_override_lengths={0x2a0e: 37},
            c_override_roots={0x2a0e: 'aztec_mkdir'})
        self.assertEqual(ranges, [(0x2a0e, 0x2a33, 'aztec_mkdir'),
                                  (0x2a33, 0x3000, 'aztec_next')])

    def test_a_module_fragment_starts_at_its_first_byte(self):
        # csav.asm opens with ``dw $begin``, two bytes before ``csav``.
        labels = {off: routine(name, off) for off, name in (
            (0x4640, 'aztec_before'), (0x4652, 'aztec_csav'),
            (0x4670, 'aztec_cret'), (0x4690, 'aztec_next'))}
        ranges = _select_split_ranges(
            labels, set(labels.values()), binary_size=0x5000,
            c_override_lengths={0x4650: 0x40},
            c_override_roots={0x4650: 'aztec_csav'})
        self.assertEqual(ranges, [(0x4640, 0x4650, 'aztec_before'),
                                  (0x4650, 0x4690, 'aztec_csav'),
                                  (0x4690, 0x5000, 'aztec_next')])

    def test_without_override_roots_still_split(self):
        labels = {1000: routine('a', 1000), 1251: routine('b', 1251)}
        ranges = _select_split_ranges(
            labels, set(labels.values()), binary_size=2000)
        self.assertEqual(ranges, [(1000, 1251, 'a'), (1251, 2000, 'b')])


if __name__ == '__main__':
    unittest.main()
