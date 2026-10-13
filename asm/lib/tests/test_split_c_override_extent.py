import unittest

from lib.compare.splitting import _select_split_ranges


class COverrideExtentTests(unittest.TestCase):
    def test_inner_root_does_not_truncate_c_routine(self):
        labels = {1000: 'aztec_malloc', 1251: 'leaf_loc_x', 1254: 'aztec_free'}
        ranges = _select_split_ranges(
            labels, set(labels.values()), binary_size=2000,
            c_override_lengths={1000: 254})
        self.assertEqual(
            ranges, [(1000, 1254, 'aztec_malloc'), (1254, 2000, 'aztec_free')])

    def test_without_override_roots_still_split(self):
        labels = {1000: 'a', 1251: 'b'}
        ranges = _select_split_ranges(
            labels, set(labels.values()), binary_size=2000)
        self.assertEqual(ranges, [(1000, 1251, 'a'), (1251, 2000, 'b')])


if __name__ == '__main__':
    unittest.main()
