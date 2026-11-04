"""The ``globals`` fragment: the listing's commons, split by the sidecar's range
alone, and the check of its companion's commons against it."""

import unittest

from lib.aztec import bss
from lib.sidecar.binary import (_validate_emits, _validate_globals,
                                bss_ranges, emitted_ranges)
from lib.sidecar.errors import SidecarError

LISTING = '\n'.join([
    '_Uorg equ __zbss_0100 - __zdseg_start',
    'saved_word equ __zbss_0100 - __zdseg_start',
    'floor_items equ __zbss_0104 - __zdseg_start',
    'maze_tables equ __zbss_0106 - __zdseg_start',
    '_TTrem equ __zbss_010c - __zdseg_start',
    '__zimage_end:',
    'absolute __zimage_end',
    '__zbss_0100:',
    '__zbss_0100:',
    '    resb 0x0004',
    '__zbss_0104:',
    '    resb 0x0002',
    '__zbss_0106:',
    '    resb 0x0006',
    '__zbss_010c:',
    '    resb 0x0002',
    '__zbss_end:',
    '    resb 0x2100',
    '__zstack_top:',
    '',
])


class SplitTest(unittest.TestCase):

    def test_range_moves_only_the_commons(self):
        text, fragments, slots = bss.split(LISTING, 'ds', '0104', '010c')
        fragment = fragments['ds/data/globals.asm']
        self.assertEqual(slots['ds/data/globals.asm'],
                         [('floor_items', 2, '0104'), ('maze_tables', 6, '0106')])
        self.assertIn('__zbss_0104:  ; floor_items\n    resb 0x0002\n', fragment)
        self.assertNotIn('__zbss_0100', fragment)
        self.assertNotIn('__zbss_010c', fragment)
        block = text[text.index('absolute'):]
        self.assertEqual(block.split('\n')[1:6], [
            '__zbss_0100:', '__zbss_0100:', '    resb 0x0004',
            '%include "ds/data/globals.asm"', '__zbss_010c:'])

    def test_owned_span_before_the_commons_is_its_bss_file(self):
        text, fragments, slots = bss.split(
            LISTING, 'ds', '0104', '010c',
            {'ds/aztec/aztec_ttyio': [(0x0100, 0x0104), (0x010c, 0x010e)]})
        block = text[text.index('absolute'):].split('\n')
        self.assertEqual(block[1:6], [
            '%include "ds/aztec/aztec_ttyio.bss.asm"',
            '%include "ds/data/globals.asm"',
            '__zbss_010c:', '    resb 0x0002', '__zbss_end:'])
        self.assertEqual(sorted(fragments), ['ds/aztec/aztec_ttyio.bss.asm',
                                             'ds/data/globals.asm'])
        # Labelled by name, so it is the same file at any address.
        self.assertEqual(fragments['ds/aztec/aztec_ttyio.bss.asm'],
                         '__zsaved_word:\n    resb 0x0004\n')
        self.assertIn('saved_word equ __zsaved_word - __zdseg_start', text)
        self.assertEqual(slots['ds/aztec/aztec_ttyio', 0],
                         [('saved_word', 4, '0100')])
        self.assertEqual(slots['ds/aztec/aztec_ttyio', 1],
                         [('_TTrem', 2, '010c')])
        self.assertEqual(bss.block_start(LISTING), 0x0100)

    def test_owned_span_off_a_slot(self):
        with self.assertRaises(ValueError):
            bss.split(LISTING, 'ds', '0104', '010c',
                      {'aztec_ttyio': [(0x0100, 0x0102)]})

    def test_owned_span_inside_the_commons(self):
        with self.assertRaises(ValueError):
            bss.split(LISTING, 'ds', '0104', '010c',
                      {'aztec_ttyio': [(0x0100, 0x0106)]})

    def test_default_is_the_whole_block(self):
        _text, _fragments, slots = bss.split(LISTING, 'vbase')
        slots = slots['vbase/data/globals.asm']
        self.assertEqual([name for name, _, _ in slots],
                         ['saved_word', 'floor_items', 'maze_tables', '_TTrem'])
        self.assertEqual(sum(size for _, size, _ in slots), 0x0e)

    def test_no_block(self):
        self.assertIsNone(bss.split('bits 16\n', 'ds'))

    def test_address_that_is_no_slot(self):
        with self.assertRaises(ValueError):
            bss.split(LISTING, 'ds', '0105')


class CheckTest(unittest.TestCase):
    SLOTS = [('floor_items', 2, '0104'), ('maze_tables', 6, '0106')]

    def test_matching_companion(self):
        self.assertEqual(bss.check(
            (('floor_items_', 2), ('maze_tables_', 6)), self.SLOTS), [])

    def test_filler_at_its_address(self):
        self.assertEqual(bss.check(
            (('floor_items_', 2), ('maze_tables_', 2), ('bss_0108_', 4)),
            self.SLOTS), [])

    def test_wrong_name_and_spelling(self):
        errors = bss.check((('floor_items', 2), ('maze_tables_', 6)),
                           self.SLOTS)
        self.assertEqual(len(errors), 1)
        self.assertIn('the listing has floor_items', errors[0])

    def test_misplaced_filler(self):
        errors = bss.check(
            (('floor_items_', 2), ('maze_tables_', 2), ('bss_0109_', 4)),
            self.SLOTS)
        self.assertIn('bss_0109_ at 0x0108', errors[0])

    def test_missing_and_short(self):
        self.assertEqual(bss.check((('floor_items_', 2),), self.SLOTS),
                         ['declares 2 bytes, the listing has 8'])


    def test_even_common_after_an_odd_one_starts_on_a_word(self):
        slots = [('faces', 26, '0104'), ('ids', 4, '011e')]
        self.assertEqual(bss.check((('faces_', 25), ('ids_', 4)), slots), [])


class ValidateTest(unittest.TestCase):

    def test_accepts_range_and_note(self):
        _validate_globals({'start': '0e0e', 'end': '9096', 'note': 'x'}, 'g')
        _validate_globals({}, 'g')

    def test_rejects_bad_address_and_key(self):
        for bad in ({'start': 'e0e'}, {'start': 3598}, {'begin': '0e0e'}, []):
            with self.assertRaises(SidecarError):
                _validate_globals(bad, 'g')


class EmitsTest(unittest.TestCase):
    ENTRY = {'type': 'mz', 'function_names': {
        '505c': {'name': 'aztec_impl_tty_rd', 'emits': [
            {'start': '0cf4', 'end': '0cf6'},
            {'start': '0d08', 'end': '0e0e'},
            {'start': '9096', 'end': '9098'}]},
        '2331': {'name': 'store_word_and_pair', 'emits': [
            {'start': '0cf6', 'end': '0cfa'}]},
        '4ea3': {'name': 'aztec_noper'}}}

    def test_spans_split_at_the_image_end(self):
        _validate_emits(self.ENTRY['function_names'], 'f')
        self.assertEqual(emitted_ranges(self.ENTRY, 512, 0x0cf6),
                         {0x505c: (0x0cf4, 0x0cf6)})
        self.assertEqual(bss_ranges(self.ENTRY, 512, 0x0cf6),
                         {0x505c: [(0x0d08, 0x0e0e), (0x9096, 0x9098)],
                          0x2331: [(0x0cf6, 0x0cfa)]})

    def test_two_data_spans_are_an_error(self):
        entry = {'type': 'mz', 'function_names': {'10': {'emits': [
            {'start': '0100', 'end': '0102'},
            {'start': '0104', 'end': '0106'}]}}}
        with self.assertRaises(ValueError):
            emitted_ranges(entry, 0, 0x0200)

    def test_data_span_past_the_image_end(self):
        entry = {'type': 'mz', 'function_names': {'10': {'emits': [
            {'start': '01fe', 'end': '0202'}]}}}
        with self.assertRaises(ValueError):
            emitted_ranges(entry, 0, 0x0200)

    def test_rejects_overlap_and_shape(self):
        for bad in ({'a': {'emits': [{'start': '0100', 'end': '0104'}]},
                     'b': {'emits': [{'start': '0102', 'end': '0106'}]}},
                    {'a': {'emits': {'start': '0100', 'end': '0104'}}},
                    {'a': {'emits': []}},
                    {'a': {'emits': [{'start': '0104', 'end': '0100'}]}}):
            with self.assertRaises(SidecarError):
                _validate_emits(bad, 'f')


if __name__ == '__main__':
    unittest.main()
