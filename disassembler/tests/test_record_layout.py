"""Tests for record layouts recovered from the code (``lib.record_layout``)."""

import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.record_layout import (absorb_symbols, absorbed_starts, field_text,
                               inc_text, merge, observe, pointer_symbols)

_MD = Cs(CS_ARCH_X86, CS_MODE_16)
_MD.detail = True


def _insns(hex_code):
    return list(_MD.disasm(bytes.fromhex(hex_code), 0x200))


# mov ax, [bp+4]; mov cx, 0x15e; imul cx; mov bx, ax
# mov al, [bx+0x6a40]; mov al, [bx+0x6a1a+0x15b]
_STRIDE_350 = '8b4604b95e01f7e989c38a87406a8a87756b'
# b*90 + c*30 + e*3 through push/pop; mov al, [bx+0x8323]
_THREE_TERMS = ('b85a00f76e0850b81e00f76e0a89c15801c850b80300f76efc89c158'
                '01c889c38a872383')
# si = item*0x2c; bx = party_char[m]; cmp byte [bx+si+0x22], 2;
# cmp byte [bx+0x19f], 0xff
_POINTER = 'b82c00f76e0689c68b4604d1e089c38b9f82848078220280bf9f01ff'
# mov bx, [bp+4]; mov al, [bx+0x5000]; shl bx, 1; mov ax, [bx+0x5100]
_SCALARS = '8b5e048a870050d1e38b870051'
# the 350 stride, then a call before the access
_CALL = '8b4604b95e01f7e989c3e8f3ff8a87406a'


class ObserveTest(unittest.TestCase):
    def test_imul_stride(self):
        self.assertEqual(observe(_insns(_STRIDE_350), None), [
            ['index', 0x6a40, [350], 1], ['index', 0x6b75, [350], 1]])

    def test_sum_of_scaled_terms_through_the_stack(self):
        self.assertEqual(observe(_insns(_THREE_TERMS), None),
                         [['index', 0x8323, [90, 30, 3], 1]])

    def test_pointer_table(self):
        # The table's own word load is a scalar array access, which the
        # merge drops.
        self.assertEqual(observe(_insns(_POINTER), None), [
            ['index', 0x8482, [2], 2],
            ['pointer', 0x8482, 0x22, 1], ['pointer', 0x8482, 0x19f, 1]])

    def test_scalar_arrays_are_not_records(self):
        observed = observe(_insns(_SCALARS), None)
        self.assertEqual(observed, [['index', 0x5100, [2], 2]])
        self.assertEqual(merge(observed, {0x5000, 0x5100})[0], {})

    def test_a_call_clobbers_the_index(self):
        self.assertEqual(observe(_insns(_CALL), None), [])


class MergeTest(unittest.TestCase):
    def test_fields_of_one_record(self):
        layouts, report = merge(observe(_insns(_STRIDE_350), None),
                                {0x6a1a}, {0x6a1a: 'slot_recs'})
        self.assertEqual(report, [])
        layout = layouts['6a1a']
        self.assertEqual(layout['name'], 'slot_recs_rec')
        self.assertEqual(layout['size'], 350)
        self.assertEqual(layout['fields'], [[0x26, 'f_0026', 0x135],
                                            [0x15b, 'f_015b', 3]])
        self.assertEqual(field_text(layout, 0x26), 'slot_recs_rec.f_0026')
        self.assertEqual(field_text(layout, 0x28), 'slot_recs_rec.f_0026 + 0x2')
        self.assertEqual(field_text(layout, 350 * 2 + 0x15b),
                         'slot_recs_rec_size*2 + slot_recs_rec.f_015b')

    def test_sidecar_names_and_sizes(self):
        observed = (observe(_insns(_STRIDE_350), None)
                    + [['index', 0x6a1a + 0x33, [350], 1]])
        config = {'name': 'slot_rec',
                  'fields': {'26': 'target',
                             '30': {'name': 'target_rand', 'size': 8}}}
        layouts, _ = merge(observed, {0x6a1a}, {0x6a1a: 'slot_recs'},
                           {0x6a1a: config})
        layout = layouts['6a1a']
        self.assertEqual([f[1] for f in layout['fields']],
                         ['target', 'target_rand', 'f_015b'])
        self.assertEqual(field_text(layout, 0x33), 'slot_rec.target_rand + 0x3')

    def test_a_field_label_is_reported(self):
        observed = [['index', 0x6a1a + 4, [350], 1],
                    ['index', 0x6a1a + 8, [350], 1],
                    ['index', 0x6a40 + 2, [350], 1],
                    ['index', 0x6a40 + 4, [350], 1]]
        _, report = merge(observed, {0x6a1a, 0x6a40},
                          {0x6a1a: 'slot_rec_first', 0x6a40: 'slot_rec_target'})
        self.assertEqual(report, [
            'slot_rec_target is +0x26 of slot_rec_first (stride 350): one '
            'record; name the base and drop the field label'])

    def test_pointer_layout_and_symbols(self):
        insns = _insns(_POINTER)
        layouts, _ = merge(observe(insns, None), {0x8482},
                           {0x8482: 'party_char'},
                           {0x8482: {'name': 'member_rec',
                                     'fields': {'19f': 'slot'}}})
        layout = layouts['8482']
        self.assertTrue(layout['pointer'])
        self.assertEqual(layout['fields'], [[0x22, 'f_0022', 0x17d],
                                            [0x19f, 'slot', 1]])
        symbols = pointer_symbols(insns, None, layouts)
        self.assertEqual(sorted(symbols.values()),
                         ['member_rec.f_0022', 'member_rec.slot'])

    def test_inc_text(self):
        layouts, _ = merge(observe(_insns(_STRIDE_350), None), {0x6a1a},
                           {0x6a1a: 'slot_recs'})
        text = inc_text(layouts)
        self.assertIn('struc slot_recs_rec\n'
                      '    .pad_0000: resb 38\n'
                      '    .f_0026: resb 309\n'
                      '    .f_015b: resb 3\n'
                      'endstruc', text)
        self.assertTrue(text.startswith('; auto-generated'))
        self.assertIn('%ifndef STRUCTS_INC', text)


class RecordArrayTest(unittest.TestCase):
    _CONFIG = {'name': 'pc_rec', 'size': 0x248, 'count': 6,
               'fields': {'18': {'name': 'pair_a', 'size': 4}}}

    def test_starts_inside_a_counted_record_are_fields(self):
        starts = {0x5bf4, 0x5c0a, 0x5e2a, 0x69a4, 0x69c8}
        self.assertEqual(absorbed_starts(starts, {0x5bf4: self._CONFIG}),
                         {0x5c0a, 0x5e2a})
        # A sidecar name inside is a stated object, and no count, no span.
        self.assertEqual(absorbed_starts(starts, {0x5bf4: self._CONFIG},
                                         keep={0x5e2a}), {0x5c0a})
        self.assertEqual(absorbed_starts(
            starts, {0x5bf4: {'name': 'pc_rec', 'size': 0x248}}), set())

    def test_absolute_names_are_respelled_as_fields(self):
        observed = [['index', 0x5bf4 + 0x18, [0x248], 2],
                    ['index', 0x5bf4 + 0x16, [0x248], 2]]
        layouts, report = merge(observed, {0x5bf4}, {0x5bf4: 'party_records'},
                                {0x5bf4: self._CONFIG})
        self.assertEqual(report, [])
        self.assertEqual(layouts['5bf4']['count'], 6)
        symbols = {(1, 0): 'bss_5c0a', (2, 1): 'bss_5c0a + 0x2',
                   (3, 0): 'bss_6000'}
        equ = {'bss_5c0a': 0x5c0a, 'bss_6000': 0x5bf4 + 0x248 + 0x18,
               'cseg_5c0b': 0x5c0b}
        absorb_symbols(symbols, equ, layouts, lambda base: 'party_records',
                       lambda sym: sym.startswith('bss_'))
        self.assertEqual(symbols, {
            (1, 0): 'party_records + pc_rec.f_0016',
            (2, 1): 'party_records + pc_rec.f_0016 + 0x2',
            (3, 0): 'party_records + pc_rec_size*1 + pc_rec.pair_a'})
        self.assertEqual(equ, {'party_records': 0x5bf4, 'cseg_5c0b': 0x5c0b})

    def test_a_gap_byte_is_spelled_from_its_pad(self):
        layouts, _ = merge([['index', 0x5bf4 + 0x18, [0x248], 2],
                            ['index', 0x5bf4 + 0x16, [0x248], 2]],
                           {0x5bf4}, {}, {0x5bf4: self._CONFIG})
        layout = layouts['5bf4']
        self.assertEqual(field_text(layout, 0x30), 'pc_rec.pad_001c + 0x14')
        self.assertEqual(field_text(layout, 0x4), 'pc_rec.pad_0000 + 0x4')
        self.assertIn('    .pad_001c: resb 556\n', inc_text(layouts))


if __name__ == '__main__':
    unittest.main()
