"""Sidecar ``function_names`` ``file``: a grouped fragment's files take a
name of their own while its routines keep their labels."""

import os
import tempfile
import unittest

from lib.compare.splitting import _partition_function_records
from lib.sidecar.binary import (_validate_function_names, fragment_files,
                                head_label)
from lib.sidecar.data_names import _validate_data_names
from lib.sidecar.bands import parse_bands
from lib.sidecar.errors import SidecarError
from main import aztec

BANDS = [{'name': 'library', 'start': '0200', 'end': '021f'}]


class ValidateTest(unittest.TestCase):
    def test_accepts_file_on_a_group(self):
        # The head's name may come from another surface (a dispatch table).
        _validate_function_names({'10': {'length': 4, 'file': 'call_group'}}, 'x')

    def test_accepts_the_name_of_a_routine_inside_the_group(self):
        _validate_function_names({'10': {'length': 16, 'file': 'call_b'},
                                  '18': {'name': 'call_b'}}, 'x')

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

    def test_emits(self):
        _validate_function_names(
            {'10': {'name': 'a', 'emits': [{'start': '0b74', 'end': '0bfa'}]},
             '20': {'name': 'b', 'emits': [{'start': '0bfa', 'end': '0c00'},
                                           {'start': '0d08', 'end': '0e0e'}]}},
            'x')
        for span in ({'start': '0b74'}, {'start': 'b74', 'end': '0bfa'},
                     {'start': '0bfa', 'end': '0bfa'}, ['0b74', '0bfa'],
                     {'start': '0b74', 'end': '0bfa', 'size': 2}):
            with self.subTest(span=span), self.assertRaises(SidecarError):
                _validate_function_names({'10': {'name': 'a', 'emits': [span]}},
                                         'x')
        with self.assertRaises(SidecarError):
            _validate_function_names(
                {'10': {'name': 'a', 'emits': [{'start': '0b74', 'end': '0bfa'}]},
                 '20': {'name': 'b', 'emits': [{'start': '0bf0', 'end': '0c00'}]}},
                'x')


class DataFileTest(unittest.TestCase):
    """``data_names``/``code_data_names`` take ``file`` by the same rules."""

    def test_accepts_file_on_a_span(self):
        _validate_data_names(
            {'10': {'name': 'slot_a', 'length': 8, 'file': 'slots'}}, 'x')

    def test_rejects(self):
        for block in (
                {'10': {'name': 'slot_a', 'file': 'slots'}},
                {'10': {'name': 'slot_a', 'length': 8, 'file': 'slot_b'},
                 '20': {'name': 'slot_b'}},
                {'10': {'name': 'slot_a', 'length': 4, 'file': 'grp'},
                 '20': {'name': 'slot_b', 'length': 4, 'file': 'grp'}}):
            with self.subTest(block=block), self.assertRaises(SidecarError):
                _validate_data_names(block, 'x')


class HelpersTest(unittest.TestCase):
    ENTRY = {'type': 'mz', 'function_names': {
        '20': {'length': 4, 'file': 'call_group'},
        '30': {'name': 'call_b', 'length': 4}}}

    def test_maps(self):
        self.assertEqual(fragment_files(self.ENTRY, 100), {0x20: 'call_group'})
        self.assertEqual(fragment_files(dict(self.ENTRY, type='overlay'), 100),
                         {0x20 + 100: 'call_group'})

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


class EmittedDataTest(unittest.TestCase):
    """``emits``: a module's data is one file, named like its code."""
    RECORDS = [
        {'type': 'label', 'name': 'main', 'offset': 0x210},
        {'type': 'mnem', 'text': 'ret', 'offset': 0x210, 'size': 1},
        {'type': 'data_block', 'start': 0x300, 'end': 0x308, 'bytes': [0] * 8},
    ]

    def test_cut_blocks_at_module_bounds(self):
        from lib.compare.render import _cut_data_blocks
        out = _cut_data_blocks(self.RECORDS, {0x300, 0x305, 0x308})
        self.assertEqual([(r['start'], r['end']) for r in out
                          if r['type'] == 'data_block'],
                         [(0x300, 0x305), (0x305, 0x308)])

    def test_group_named_like_the_code(self):
        from lib.compare.render import _owned_data_groups
        split = [(0x210, 0x211, 'main'), (0x220, 0x230, 'aztec_noper')]
        self.assertEqual(
            _owned_data_groups({0x210: (0x300, 0x305), 0x220: (0x305, 0x308)},
                               split, {0x220: 'aztec_Croot'}),
            ([(0x300, 0x305, 'main.data'), (0x305, 0x308, 'aztec_Croot.data')],
             {0x300: (0x210, 'main'), 0x305: (0x220, 'aztec_noper')}))
        with self.assertRaises(ValueError):
            _owned_data_groups({0x215: (0x300, 0x305)}, split, {})

    def test_data_file_may_share_its_owners_name(self):
        main, sources = _partition_function_records(
            self.RECORDS, [(0x210, 0x211, 'main'), (0x300, 0x308, 'main')],
            'ds', data_starts={0x300})
        self.assertEqual(sorted(sources), ['ds/data/main.asm', 'ds/main.asm'])

    def test_owned_data_sits_beside_its_code(self):
        bands = parse_bands(BANDS)
        main, sources = _partition_function_records(
            self.RECORDS, [(0x210, 0x211, 'main'), (0x300, 0x308, 'main.data')],
            'ds', bands, data_starts={0x300},
            data_homes={0x300: (0x210, 'main')})
        code = next(rel for rel in sources if not rel.endswith('.data.asm'))
        self.assertEqual(sorted(sources), sorted([code, code[:-4] + '.data.asm']))
        self.assertIn(f'%include "{code[:-4]}.data.asm"',
                      [rec['text'] for rec in main if rec['type'] == 'include'])


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
