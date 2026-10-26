"""``make rebuild`` selector: a binary, or a routine gated against its donors."""

import io
import contextlib
import unittest
from unittest import mock

from make import build


class RebuildTargetsTest(unittest.TestCase):
    BINS = {'b1': ('b1.bin', 0), 'b2': ('b2.bin', 0)}

    def test_all_binaries_by_default(self):
        self.assertEqual(build._rebuild_targets('P', self.BINS, None, None),
                         (['b1', 'b2'], None))

    def test_a_real_binary_still_selects_one(self):
        self.assertEqual(build._rebuild_targets('P', self.BINS, 'b2', 'r'),
                         (['b2'], 'r'))

    def test_a_routine_selects_every_binary_that_contains_it(self):
        with mock.patch.object(build, '_routine_donors',
                               return_value=['b1', 'b2']):
            self.assertEqual(build._rebuild_targets('P', self.BINS, 'r', None),
                             (['b1', 'b2'], 'r'))

    def test_unknown_routine(self):
        with mock.patch.object(build, '_routine_donors', return_value=[]):
            with self.assertRaises(SystemExit):
                build._rebuild_targets('P', self.BINS, 'r', None)

    def test_shared_alone_is_not_a_routine(self):
        out = io.StringIO()
        with contextlib.redirect_stdout(out):
            with self.assertRaises(SystemExit):
                build._rebuild_targets('P', self.BINS, 'shared', None)
        self.assertIn('pass the routine instead', out.getvalue())


if __name__ == '__main__':
    unittest.main()
