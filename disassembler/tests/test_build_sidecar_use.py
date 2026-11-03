"""``check_build_sidecar_use``: a build-wide sidecar entry nothing applied."""

import unittest
from unittest import mock

from lib.sidecar.errors import SidecarError
from main import build

SIDECAR = {'compiler_flags': {'prefixes': {'aztec_': ['-n'], 'drv_': ['+c']}}}


def _check(used):
    with mock.patch.object(build, 'load_sidecar', return_value=SIDECAR), \
         mock.patch.object(build, 'collect_sidecar_use', return_value=used), \
         mock.patch.object(build, 'labels_dir', return_value=''):
        build.check_build_sidecar_use('P', ['ds'])


class PrefixUseTest(unittest.TestCase):

    def test_library_prefix_needs_no_hand_c(self):
        # The vendored library takes it, so deleting every .c keeps it used.
        _check({'compiler_flags': ['drv_']})

    def test_other_prefix_needs_a_c_routine(self):
        with self.assertRaises(SidecarError) as caught:
            _check({})
        self.assertIn('compiler_flags.prefixes[drv_]', str(caught.exception))
        self.assertNotIn('aztec_', str(caught.exception))


if __name__ == '__main__':
    unittest.main()
