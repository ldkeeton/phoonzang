"""Compiler flags for a ``<label>.c``: picked by name, whatever its provenance."""

import unittest
from unittest import mock

from lib.aztec import cache
from lib.sidecar.errors import SidecarError
from lib.sidecar.loader import _validate

BLOCK = {'compiler_flags': {
    'default': ['-n', '+b'],
    'asm': ['-dMODEL=0'],
    'prefixes': {'aztec_': ['-n'], 'aztec_x': ['-n', '+m']}},
    'binaries': {
        'inst': {'compiler_flags': {'default': ['-n']}},
        'pfx': {'compiler_flags': {'prefixes': {'aztec_': ['+m'],
                                                'app_': ['-n', '+c']}}}}}


def _tool(label, data=BLOCK, suffix='.c', binary='bin'):
    with mock.patch('lib.sidecar.loader.load', return_value=data):
        return cache._tool('P', binary, label,
                           cache.default_entry(label, 'P', suffix))


def _flags(label, data=BLOCK, binary='bin'):
    return _tool(label, data, binary=binary)[1]


class FlagsByNameTests(unittest.TestCase):
    def test_prefix_match(self):
        self.assertEqual(_flags('aztec_open'), ('-n',))

    def test_default_when_no_prefix(self):
        self.assertEqual(_flags('app_free'), ('-n', '+b'))

    def test_longest_prefix_wins(self):
        self.assertEqual(_flags('aztec_xyz'), ('-n', '+m'))

    def test_library_name_alone_decides(self):
        # A module the prebuild matched (aztec_croot) and a hand-written
        # routine it never saw (aztec_foo) compile alike: by name only.
        self.assertEqual(_flags('aztec_croot'), _flags('aztec_foo'))

    def test_s_source_uses_asm_flags(self):
        self.assertEqual(_tool('aztec_csav', suffix='.s'),
                         ('asm', ('-dMODEL=0',)))

    def test_vendor_asm_module_uses_asm_flags(self):
        entry = dict(cache.default_entry('aztec_csav', 'P'), file='csav.asm')
        with mock.patch('lib.sidecar.loader.load', return_value=BLOCK):
            self.assertEqual(cache._tool('P', 'bin', 'aztec_csav', entry),
                             ('asm', ('-dMODEL=0',)))
        self.assertEqual(cache.seed_suffix(entry), '.s')

    def test_no_flags_for_name_is_an_error(self):
        with self.assertRaises(SidecarError):
            _flags('app_free', {})

    def test_entry_carries_no_flags(self):
        with mock.patch('lib.sidecar.loader.load', return_value=BLOCK):
            entry = cache.default_entry('app_free', 'P')
        self.assertNotIn('flags', entry)
        self.assertEqual((entry['compiler'], entry['includes']),
                         ('v42b', 'v42b'))

    def test_binary_default_overrides_project_default(self):
        self.assertEqual(_flags('app_free', binary='inst'), ('-n',))

    def test_project_prefix_applies_in_overriding_binary(self):
        self.assertEqual(_flags('aztec_xyz', binary='inst'), ('-n', '+m'))

    def test_binary_prefix_beats_project_prefix(self):
        self.assertEqual(_flags('aztec_open', binary='pfx'), ('+m',))
        self.assertEqual(_flags('app_free', binary='pfx'), ('-n', '+c'))
        # The longer project prefix still wins over the binary's shorter one.
        self.assertEqual(_flags('aztec_xyz', binary='pfx'), ('-n', '+m'))
        self.assertEqual(_flags('main', binary='pfx'), ('-n', '+b'))

    def test_no_binary_takes_project_flags(self):
        self.assertEqual(_flags('app_free', binary=None), ('-n', '+b'))

    def test_binary_block_rejects_asm(self):
        with self.assertRaises(SidecarError):
            _validate({'app': 'X', 'binaries': {
                'b': {'compiler_flags': {'asm': ['-l']}}}})
        with self.assertRaises(SidecarError):
            _validate({'app': 'X', 'binaries': {
                'b': {'compiler_flags': {'default': '-n'}}}})

    def test_malformed_block_rejected(self):
        for bad in ({'compiler_flags': {'default': 'x'}},
                    {'compiler_flags': {'prefixes': {'a': 'x'}}},
                    {'compiler_flags': {'asm': '-l'}},
                    {'compiler_flags': []}):
            with self.assertRaises(SidecarError):
                _validate({'app': 'X', **bad})


if __name__ == '__main__':
    unittest.main()
