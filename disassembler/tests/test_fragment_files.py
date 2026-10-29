"""Sidecar ``function_names`` ``file``: a grouped fragment's files take a
name of their own while its routines keep their labels."""

import os
import tempfile
import unittest

from lib.compare.splitting import _partition_function_records
from lib.sidecar.binary import (_validate_function_names, fragment_files,
                                head_label)
from lib.sidecar.bands import parse_bands
from lib.sidecar.errors import SidecarError
from main import aztec

BANDS = [{'name': 'library', 'start': '0200', 'end': '021f'}]


class ValidateTest(unittest.TestCase):
    def test_accepts_file_on_a_group(self):
        # The head's name may come from another surface (a dispatch table).
        _validate_function_names({'10': {'length': 4, 'file': 'call_group'}}, 'x')

    def test_rejects(self):
        for block in (
                {'10': {'name': 'call_a', 'file': 'call_group'}},
                {'10': {'name': 'call_a', 'length': 4, 'file': 'not a name'}},
                {'10': {'name': 'call_a', 'length': 4, 'file': 'call_b'},
                 '20': {'name': 'call_b'}},
                {'10': {'name': 'call_a', 'length': 4, 'file': 'grp'},
                 '20': {'name': 'call_b', 'length': 4, 'file': 'grp'}}):
            with self.subTest(block=block), self.assertRaises(SidecarError):
                _validate_function_names(block, 'x')


class HelpersTest(unittest.TestCase):
    ENTRY = {'ghidra_base_offset': -16, 'function_names': {
        '20': {'length': 4, 'file': 'call_group'},
        '30': {'name': 'call_b', 'length': 4}}}

    def test_maps(self):
        self.assertEqual(fragment_files(self.ENTRY, 100), {0x20 + 84: 'call_group'})

    def test_head_label(self):
        self.assertEqual(head_label('; auto-generated\ncall_a:\n    ret\ncall_b:\n'),
                         'call_a')


class SplitTest(unittest.TestCase):
    RECORDS = [
        {'type': 'label', 'name': 'call_a', 'offset': 0x210},
        {'type': 'mnem', 'text': 'ret', 'offset': 0x210, 'size': 1},
        {'type': 'label', 'name': 'call_b', 'offset': 0x211},
        {'type': 'mnem', 'text': 'ret', 'offset': 0x211, 'size': 1},
    ]

    def test_fragment_takes_the_sidecar_stem(self):
        main, sources = _partition_function_records(
            self.RECORDS, [(0x210, 0x212, 'call_a')], 'ds', parse_bands(BANDS),
            file_stems={0x210: 'call_group'})
        inc = next(r for r in main if r['type'] == 'include')
        self.assertEqual(inc['text'], '%include "ds/library/call_group.asm"')
        self.assertEqual(list(sources), ['ds/library/call_group.asm'])


class HandSourceTest(unittest.TestCase):
    def test_stem_maps_to_its_routine(self):
        with tempfile.TemporaryDirectory() as tmp:
            dest = os.path.join(tmp, 'ds')
            os.makedirs(os.path.join(dest, 'library'))
            path = os.path.join(dest, 'library', 'call_group.s')
            with open(path, 'w') as f:
                f.write('\tret\n')
            self.assertEqual(
                aztec._hand_source_tree(dest, parse_bands(BANDS),
                                        {'call_group': 'call_a'}),
                {'call_a': path})


if __name__ == '__main__':
    unittest.main()
