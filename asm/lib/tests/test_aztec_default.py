"""Compiler flags for a hand-written ``<label>.c`` with no manifest entry."""

import unittest
from unittest import mock

from lib.aztec import cache
from lib.sidecar.errors import SidecarError
from lib.sidecar.loader import _validate

BLOCK = {'compiler_flags': {
    'default': ['-n', '+y', '+b'],
    'prefixes': {'aztec_': ['-n', '+y'], 'aztec_x': ['-n']}}}


def _flags(label, data=BLOCK):
    with mock.patch('lib.sidecar.loader.load', return_value=data):
        return cache.default_entry(label, 'P').get('flags')


class DefaultEntryTests(unittest.TestCase):
    def test_prefix_match(self):
        self.assertEqual(_flags('aztec_open'), ['-n', '+y'])

    def test_default_when_no_prefix(self):
        self.assertEqual(_flags('app_free'), ['-n', '+y', '+b'])

    def test_longest_prefix_wins(self):
        self.assertEqual(_flags('aztec_xyz'), ['-n'])

    def test_absent_block_leaves_flags_unset(self):
        self.assertIsNone(_flags('app_free', {}))

    def test_pairing_comes_from_mux(self):
        with mock.patch('lib.sidecar.loader.load', return_value=BLOCK):
            entry = cache.default_entry('app_free', 'P')
        self.assertEqual((entry['compiler'], entry['includes']),
                         ('v52a', 'v340a'))

    def test_malformed_block_rejected(self):
        for bad in ({'compiler_flags': {'default': 'x'}},
                    {'compiler_flags': {'prefixes': {'a': 'x'}}},
                    {'compiler_flags': []}):
            with self.assertRaises(SidecarError):
                _validate({'app': 'X', **bad})


if __name__ == '__main__':
    unittest.main()
