"""Address-derived label names and the host prefix (``lib.names``)."""

import unittest

from lib import names
from lib.compare.render import (
    HOST_SYMBOLS_INC, _build_source, host_symbols_inc_lines,
)
from lib.compare.records import count_frozen_addrs


class GenericNameTests(unittest.TestCase):
    def tearDown(self):
        names.set_generic_prefix('')

    def test_address_derived_names_are_generic(self):
        for name in ('loc_08f2', 'app_03b8', 'leaf_loc_10108',
                     'string_loc_0876', 'dos_con_loc_35b8', 'app_file_0242'):
            self.assertTrue(names.is_generic(name), name)

    def test_named_and_data_symbols_are_not_generic(self):
        for name in ('dos_con_in_noecho', 'aztec_csav', 'app_malloc', 'main',
                     'dseg_0002', 'bss_0e1e', 'psp_env_segment', '__zdseg_0002',
                     'cseg_1234'):
            self.assertFalse(names.is_generic(name), name)

    def test_rename_prefixes_only_generic_names_everywhere(self):
        label_map = {0x8f2: 'loc_08f2', 0x3b8: 'app_03b8', 0x3c97: 'dos_con_in_noecho'}
        roots = {0x3b8: 'app_03b8', 0x3c97: 'dos_con_in_noecho', 0x1: None}
        split = {'app_03b8', 'dos_con_in_noecho'}
        renames = names.rename_generics(label_map, roots, split, prefix='ds_')
        self.assertEqual(label_map, {0x8f2: 'ds_loc_08f2', 0x3b8: 'ds_app_03b8',
                                     0x3c97: 'dos_con_in_noecho'})
        self.assertEqual(roots, {0x3b8: 'ds_app_03b8',
                                 0x3c97: 'dos_con_in_noecho', 0x1: None})
        self.assertEqual(split, {'ds_app_03b8', 'dos_con_in_noecho'})
        self.assertEqual(renames, {'loc_08f2': 'ds_loc_08f2',
                                   'app_03b8': 'ds_app_03b8'})

    def test_rename_is_idempotent(self):
        label_map = {0x8f2: 'ds_loc_08f2'}
        self.assertEqual(
            names.rename_generics(label_map, prefix='ds_'), {})
        self.assertEqual(label_map, {0x8f2: 'ds_loc_08f2'})

    def test_stem_looks_through_the_host_prefix(self):
        names.set_generic_prefix('ds_')
        self.assertTrue(names.startswith_stem('ds_loc_08f2', 'loc_'))
        self.assertTrue(names.startswith_stem('loc_08f2', 'loc_'))
        self.assertFalse(names.startswith_stem('ds_app_03b8', 'loc_'))
        self.assertEqual(names.loc_name(0x8f2), 'ds_loc_08f2')

    def test_non_host_names_get_no_prefix(self):
        names.set_generic_prefix('')
        self.assertEqual(names.loc_name(0x8f2), 'loc_08f2')


class HostSymbolsBlockTests(unittest.TestCase):
    def _overlay(self):
        header = b'\xf2\x00' + (0x5055).to_bytes(2, 'little') + bytes(10)
        return header + b'\x90'

    def test_overlay_includes_the_host_without_a_table(self):
        records = [{'type': 'mnem', 'text': 'nop', 'offset': 14, 'size': 1}]
        src, includes = _build_source(records, 14, self._overlay(), label_map={},
                                      host_symbols=('ds.asm', -0x200))
        self.assertNotIn('host_calls.inc', src)
        self.assertNotIn('host_values.inc', src)
        self.assertNotIn('host_data.inc', src)
        self.assertIn('section .text vstart=VBASE', src)
        # D7.2: the overlay's load origin is the host's own anchor, not a
        # literal; the host source must therefore come first, because nasm
        # needs the value at the ``section`` directive.
        self.assertIn('VBASE equ __zres_end - 0x000e', src)
        self.assertLess(src.index(f'%include "{HOST_SYMBOLS_INC}"'),
                        src.index('section .text vstart=VBASE'))
        # E2: the host's frame is the same for every overlay of it, so the
        # master carries one include line and the block is emitted once per tree.
        self.assertNotIn('%define HOST_SYMS_ONLY', src)
        block = includes[HOST_SYMBOLS_INC]
        self.assertIn('%define HOST_SYMS_ONLY', block)
        self.assertIn('section .host nobits vstart=-0x0200', block)
        self.assertIn('%include "ds.asm"', block)
        self.assertIn('%undef VBASE', block)
        self.assertIn('%undef HOST_SYMS_ONLY', block)

    def test_host_block_carries_no_frozen_address(self):
        """The shared include sits outside the census, which scans ``*.asm``.

        Every value the block needs is symbolic or derived, so the guard is
        explicit rather than an accident of the file glob (plan.md E2).
        """
        block = '\n'.join(host_symbols_inc_lines('ds.asm', -0x200))
        self.assertEqual(count_frozen_addrs(block)['total'], 0)

    def test_host_guards_its_own_section_line(self):
        names.set_generic_prefix('ds_')
        try:
            data = b'MZ' + bytes(0x1fe) + b'\x90'
            records = [{'type': 'mnem', 'text': 'nop', 'offset': 0x200,
                        'size': 1}]
            src, _ = _build_source(records, 0x200, data, label_map={})
        finally:
            names.set_generic_prefix('')
        self.assertIn('%ifndef HOST_SYMS_ONLY\nsection .text vstart=VBASE\n%endif',
                      src)
        self.assertIn('VBASE equ -0x0200', src)


if __name__ == '__main__':
    unittest.main()
