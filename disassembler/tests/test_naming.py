import json
import os
import unittest
from unittest import mock

from lib.sidecar.errors import SidecarError
from make import naming

SIDECAR = '''{
  "routines": {
    "x_loc_JKLM": {"name": "shared_x"}
  },
  "binaries": {
    "ds": {
      "type": "mz",
      "data_names": {
        "0010": {"name": "first", "note": "kept"},
        "0030": {
          "name": "multi",
          "note": "kept as written"
        }
      }
    },
    "play": {
      "type": "raw_drv",
      "function_names": {
        "0294": {"name": "f"}
      }
    }
  }
}
'''


class SetEntryTest(unittest.TestCase):
    def test_inserts_sorted_and_keeps_other_rows(self):
        text = naming.set_entry(SIDECAR, ['binaries', 'ds', 'data_names'], '0020',
                                {'name': 'mid', 'note': 'n'})
        data = json.loads(text)
        self.assertEqual(list(data['binaries']['ds']['data_names']),
                         ['0010', '0020', '0030'])
        self.assertIn('"0030": {\n          "name": "multi",', text)
        self.assertIn('        "0020": {"name": "mid", "note": "n"},\n', text)

    def test_creates_missing_block(self):
        text = naming.set_entry(SIDECAR, ['binaries', 'play', 'code_data_names'],
                                '0d3a', {'name': 'count'})
        data = json.loads(text)
        self.assertEqual(data['binaries']['play']['code_data_names'],
                         {'0d3a': {'name': 'count'}})
        self.assertEqual(data['binaries']['play']['function_names'], {'0294': {'name': 'f'}})


class ResolveTest(unittest.TestCase):
    def setUp(self):
        self.sidecar = json.loads(SIDECAR)

    def test_address_spellings(self):
        self.assertEqual(naming.resolve(self.sidecar, 'P', 'play', 'cseg_0d3a')[:2],
                         (['binaries', 'play', 'code_data_names'], '0d3a'))
        # a raw driver's DS globals are the host's
        self.assertEqual(naming.resolve(self.sidecar, 'P', 'play', 'bss_0020')[:2],
                         (['binaries', 'ds', 'data_names'], '0020'))

    def test_current_name_keeps_note(self):
        path, key, entry = naming.resolve(self.sidecar, 'P', 'play', 'first')
        self.assertEqual((key, entry['note']), ('0010', 'kept'))

    def test_routine_key_from_listing_address(self):
        with mock.patch.object(naming, '_asm_file', side_effect=lambda p, f, l:
                               'x.asm' if f == 'play' else None), \
                mock.patch.object(naming, '_routine_addr', return_value=0x7f6):
            self.assertEqual(naming.resolve(self.sidecar, 'P', 'play', 'io_loc_KRUO')[:2],
                             (['binaries', 'play', 'function_names'], '07f6'))

    def test_unknown(self):
        with mock.patch.object(naming, '_asm_file', return_value=None):
            with self.assertRaises(SidecarError):
                naming.resolve(self.sidecar, 'P', 'play', 'nothing')


class SpecsTest(unittest.TestCase):
    def test_parse(self):
        self.assertEqual(naming.parse_specs(['a_b=c', 'cseg_0d3a=n:byte: x y']),
                         [('a_b', 'c', None), ('cseg_0d3a', 'n', 'byte: x y')])
        with self.assertRaises(SystemExit):
            naming.parse_specs(['a=1x'])

    def test_makeflags(self):
        flags = " -- EXTRA_FLAGS=--x c=d a_b=foo:bar\\ baz\\ it's\\ $$x\\ \\\\y"
        with mock.patch.dict(os.environ, {'MAKEFLAGS': flags}):
            self.assertEqual(naming.specs_from_makeflags(),
                             ['c=d', "a_b=foo:bar baz it's $x \\y"])


class ReferencedTest(unittest.TestCase):
    TEXT = (
        'me_JKLM:\n'
        '    call ds_app_free_VNHP ; 0x10\n'
        '    call io_loc_KRUO\n'
        '    mov ax, word [bss_5b6c]\n'
        '    extrn ds_app_lib_GHIJ_\n'
        '    call me_JKLM\n'
        '#define MOUSE_INIT 3\n'
        '@..me_JKLM.l1:\n'
    )

    def test_tagged_callees_when_an_asm_defines_them(self):
        found = naming.referenced(self.TEXT, 'me_JKLM',
                                  lambda sym: sym != 'MOUSE_INIT')
        self.assertEqual(found, ['ds_app_free_VNHP', 'io_loc_KRUO', 'bss_5b6c',
                                 'ds_app_lib_GHIJ'])

    def test_tagged_lookalike_without_asm_is_skipped(self):
        found = naming.referenced(self.TEXT, 'me_JKLM', lambda sym: False)
        self.assertEqual(found, ['io_loc_KRUO', 'bss_5b6c'])


if __name__ == '__main__':
    unittest.main()
