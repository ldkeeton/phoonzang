"""Sidecar names must fit the identifier length Aztec C keeps."""

import unittest

from lib.sidecar.constants import MAX_NAME_LENGTH
from lib.sidecar.errors import SidecarError
from lib.sidecar.loader import _reject_long_names


class NameLengthTests(unittest.TestCase):
    def test_longest_kept_name_passes(self):
        _reject_long_names({'a': {'name': 'x' * MAX_NAME_LENGTH}}, '')

    def test_long_name_is_rejected(self):
        with self.assertRaisesRegex(SidecarError, 'binaries.vbase.*32 characters'):
            _reject_long_names(
                {'binaries': {'vbase': {'name': 'x' * 32}}}, '')

    def test_long_dispatch_entry_is_rejected(self):
        with self.assertRaisesRegex(SidecarError, r'names\[3\]'):
            _reject_long_names({'names': {'3': 'x' * 32}}, '')


if __name__ == '__main__':
    unittest.main()
