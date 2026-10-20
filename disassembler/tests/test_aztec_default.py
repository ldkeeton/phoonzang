"""Compiler flags for a ``<label>.c``: picked by name, whatever its provenance."""

import unittest
from unittest import mock

from lib.aztec import cache
from lib.sidecar.errors import SidecarError
from lib.sidecar.loader import _validate

BLOCK = {'compiler_flags': {
    'default': ['-n', '+b'],
    'asm': ['-dMODEL=0'],
    'prefixes': {'aztec_': ['-n'], 'aztec_x': ['-n', '+m']}}}


def _tool(label, data=BLOCK, text='int f() { return 0; }\n'):
    with mock.patch('lib.sidecar.loader.load', return_value=data):
        return cache._tool('P', label, text)


def _flags(label, data=BLOCK):
    return _tool(label, data)[1]


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

    def test_asm_module_uses_asm_flags(self):
        text = '#asm\n\tret\n#endasm\n'
        self.assertEqual(_tool('aztec_csav', text=text),
                         ('asm', ('-dMODEL=0',)))

    def test_no_flags_for_name_is_an_error(self):
        with self.assertRaises(SidecarError):
            _flags('app_free', {})

    def test_entry_carries_no_flags(self):
        with mock.patch('lib.sidecar.loader.load', return_value=BLOCK):
            entry = cache.default_entry('app_free', 'P')
        self.assertNotIn('flags', entry)
        self.assertEqual((entry['compiler'], entry['includes']),
                         ('v42b', 'v42b'))

    def test_malformed_block_rejected(self):
        for bad in ({'compiler_flags': {'default': 'x'}},
                    {'compiler_flags': {'prefixes': {'a': 'x'}}},
                    {'compiler_flags': {'asm': '-l'}},
                    {'compiler_flags': []}):
            with self.assertRaises(SidecarError):
                _validate({'app': 'X', **bad})


if __name__ == '__main__':
    unittest.main()
