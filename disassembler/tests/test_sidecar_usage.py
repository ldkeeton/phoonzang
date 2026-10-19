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


if __name__ == '__main__':
    unittest.main()
