"""Sidecar ``routines``: a name for shared code, keyed by its content tag."""

import unittest

from lib import sidecar
from lib.sidecar import SidecarError, _validate_routines


class RoutinesTest(unittest.TestCase):
    def test_accepts_tagged_label(self):
        _validate_routines({'api_idx_000c_JKJK': {'name': 'draw'}})
        _validate_routines({'leaf_loc_0447_HQRK_02e3': {'name': 'draw'}})
        _validate_routines(None)

    def test_rejects_untagged_or_malformed(self):
        for block in ([], {'api_idx_000c': {'name': 'x'}},
                      {'api_idx_000c_JKJK': {}},
                      {'api_idx_000c_JKJK': {'name': ''}},
                      {'api_idx_000c_JKJK': 'x'}):
            with self.assertRaises(SidecarError):
                _validate_routines(block)

    def test_reaches_every_binary(self):
        data = {'routines': {'a_JKJK': {'name': 'n'}},
                'binaries': {'x': {}, 'y': {}}}
        for name in ('x', 'y'):
            self.assertIn('a_JKJK', sidecar.per_binary(data, name)['routines'])


if __name__ == '__main__':
    unittest.main()
