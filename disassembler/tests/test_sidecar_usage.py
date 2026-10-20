"""A sidecar entry that applies to nothing fails the build."""

import os
import tempfile
import unittest
from unittest import mock

from lib.sidecar.binary import per_binary
from lib.sidecar.errors import SidecarError
from lib.sidecar.usage import SidecarUse


class SidecarUseTest(unittest.TestCase):
    def use(self):
        use = SidecarUse('binaries.ds')
        use.expect('function_names', '0a09')
        return use

    def test_an_entry_nothing_applied_fails(self):
        with self.assertRaisesRegex(
                SidecarError, r'binaries\.ds\.function_names\[0a09\]: '
                              r'applied to nothing'):
            self.use().check()

    def test_a_skipped_entry_fails_with_its_reason(self):
        use = self.use()
        use.skipped('function_names', '0a09', 'not a code target')
        with self.assertRaisesRegex(SidecarError, 'not a code target'):
            use.check()

    def test_a_name_another_source_overrode_fails(self):
        use = self.use()
        use.final_names[('function_names', '0a09')] = (0x0c09, 'clamp')
        use.check_names({0x0c09: 'aztec_clamp'})
        with self.assertRaisesRegex(SidecarError, "renamed 'aztec_clamp'"):
            use.check()

    def test_an_applied_entry_passes(self):
        use = self.use()
        use.final_names[('function_names', '0a09')] = (0x0c09, 'clamp')
        use.check_names({0x0c09: 'clamp'})
        use.check()

    def test_per_binary_expects_each_entry_of_its_own(self):
        sidecar = {'binaries': {'ds': {
            'function_names': {'0a09': {'name': 'clamp'}},
            'immediate_labels': {'0x0bda': 'data_0bda'},
            'not_pointers': [{'offset': '113c'}]}}}
        use = per_binary(sidecar, 'ds')['use']
        self.assertEqual(use.problems(), [
            'binaries.ds.function_names[0a09]: applied to nothing',
            'binaries.ds.immediate_labels[0xbda]: applied to nothing',
            'binaries.ds.not_pointers[113c]: applied to nothing'])


class DataNamesTest(unittest.TestCase):
    def validate(self, block):
        from lib.sidecar.data_names import _validate_data_names
        _validate_data_names(block, 'binaries.ds.data_names')

    def test_per_binary_maps_and_expects_each_name(self):
        sidecar = {'binaries': {'ds': {
            'data_names': {'8482': {'name': 'party_char'}}}}}
        entry = per_binary(sidecar, 'ds')
        self.assertEqual(entry['data_names'], {0x8482: {'name': 'party_char'}})
        self.assertEqual(entry['use'].problems(),
                         ['binaries.ds.data_names[8482]: applied to nothing'])

    def test_a_name_must_be_an_identifier(self):
        with self.assertRaisesRegex(SidecarError, 'identifier'):
            self.validate({'8482': {'name': 'party char'}})

    def test_an_address_spelling_is_not_a_name(self):
        with self.assertRaisesRegex(SidecarError, 'address spelling'):
            self.validate({'8482': {'name': 'bss_8490'}})

    def test_a_name_names_one_object(self):
        with self.assertRaisesRegex(SidecarError, r'also names \[8482\]'):
            self.validate({'8482': {'name': 'party_char'},
                           '8490': {'name': 'party_char'}})

    def test_the_key_is_a_hex_offset(self):
        with self.assertRaisesRegex(SidecarError, 'hexadecimal'):
            self.validate({'zz': {'name': 'party_char'}})


class BuildWideUseTest(unittest.TestCase):
    def test_a_routine_no_binary_has_fails(self):
        from lib.link import write_sidecar_use_export
        from main import build
        sidecar = {'routines': {'api_idx_000a_IQHO': {'name': 'draw'},
                                'api_idx_000c_LGVL': {'name': 'letters'}},
                   'binaries': {'ds': {}}}
        with tempfile.TemporaryDirectory() as tmp, \
                mock.patch('lib.link.labels_dir', return_value=tmp), \
                mock.patch.object(build, 'labels_dir', return_value=tmp), \
                mock.patch.object(build, 'load_sidecar', return_value=sidecar):
            write_sidecar_use_export('P', 'ds',
                                     {'routines': ['api_idx_000a_IQHO']})
            self.assertTrue(os.path.exists(
                os.path.join(tmp, 'ds_sidecaruse.json')))
            with self.assertRaisesRegex(
                    SidecarError, r'routines\[api_idx_000c_LGVL\]: no binary '
                                  r'has it'):
                build.check_build_sidecar_use('P', {'ds': None})


class RoutineEntryTest(unittest.TestCase):
    def test_a_library_routine_takes_a_string_role_and_library(self):
        from lib.sidecar.routines import _validate_routines
        _validate_routines({'loc_KSUH': {'name': 'aztec_printf',
                                         'role': 'aztec', 'library': 'printf'}})
        with self.assertRaisesRegex(SidecarError,
                                    r'routines\.loc_KSUH\.library'):
            _validate_routines({'loc_KSUH': {'name': 'aztec_printf',
                                             'library': ['printf']}})


class DriverSlotsTest(unittest.TestCase):
    def test_a_slot_table_names_a_binary_with_a_dispatch_table(self):
        from lib.sidecar.loader import _validate
        slots = {'offset': '2f87', 'count': 55, 'driver': 'ega',
                 'prefix': 'gfx'}
        table = {'base_offset': 3, 'entry_size': 4, 'count': 55,
                 'format': 'e8_rel16_cb'}
        _validate({'app': 'P', 'binaries': {
            'ds': {'driver_slots': [slots]},
            'ega': {'dispatch_table': table}}})
        with self.assertRaisesRegex(SidecarError, 'driver_slots\\[0\\]'
                                                  '.driver'):
            _validate({'app': 'P', 'binaries': {
                'ds': {'driver_slots': [slots]}, 'ega': {}}})


    def test_a_driver_shares_its_entry_names_through_api(self):
        from lib.sidecar.loader import _validate
        table = {'base_offset': 3, 'entry_size': 4, 'count': 55,
                 'format': 'e8_rel16_cb'}
        named = dict(table, names={'8': 'load_maze'})
        _validate({'app': 'P', 'binaries': {
            'ega': {'dispatch_table': named},
            'vga': {'dispatch_table': dict(table, api='ega')}}})
        with self.assertRaisesRegex(SidecarError, r'names\[55\]'):
            _validate({'app': 'P', 'binaries': {
                'ega': {'dispatch_table': dict(table, names={'55': 'x'})}}})
        with self.assertRaisesRegex(SidecarError, 'dispatch_table.api'):
            _validate({'app': 'P', 'binaries': {
                'ega': {'dispatch_table': named},
                'vga': {'dispatch_table': dict(table, count=8, api='ega')}}})


if __name__ == '__main__':
    unittest.main()
