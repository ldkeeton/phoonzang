import json
import os
import tempfile
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
      },
      "dispatch_table": {
        "base_offset": 3,
        "entry_size": 4,
        "count": 2,
        "format": "e8_rel16_cb",
        "names": {"0": "f"}
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

    def test_keeps_a_hand_grouped_order(self):
        text = naming.set_entry(SIDECAR, ['binaries', 'ds', 'data_names'],
                                '0030', {'name': 'multi', 'note': 'changed'})
        data = json.loads(text)
        self.assertEqual(list(data['binaries']['ds']['data_names']),
                         ['0010', '0030'])
        self.assertIn('"note": "changed"', text)

    def test_creates_missing_block(self):
        text = naming.set_entry(SIDECAR, ['binaries', 'play', 'code_data_names'],
                                '0d3a', {'name': 'count'})
        data = json.loads(text)
        self.assertEqual(data['binaries']['play']['code_data_names'],
                         {'0d3a': {'name': 'count'}})
        self.assertEqual(data['binaries']['play']['function_names'], {'0294': {'name': 'f'}})


class SetValueTest(unittest.TestCase):
    def test_replaces_a_dispatch_slot(self):
        text = naming.set_value(
            SIDECAR, ['binaries', 'play', 'dispatch_table', 'names'],
            '0', 'clear_screen')
        data = json.loads(text)
        self.assertEqual(
            data['binaries']['play']['dispatch_table']['names'],
            {'0': 'clear_screen'})
        self.assertEqual(data['binaries']['play']['function_names'],
                         {'0294': {'name': 'f'}})


class PlanNamesTest(unittest.TestCase):
    def _plan(self, specs):
        with tempfile.TemporaryDirectory() as tmp:
            path = os.path.join(tmp, 'P.json')
            with open(path, 'w') as f:
                f.write(SIDECAR)
            with mock.patch.object(naming, 'sidecar_path', return_value=path), \
                    mock.patch.object(naming, '_asm_file',
                                      return_value='x.asm'), \
                    mock.patch.object(naming, '_routine_addr',
                                      return_value=0x294):
                return naming.plan_names('P', 'play', specs)

    def test_updates_every_surface_in_one_plan(self):
        _text, sidecar, renames, changes = self._plan(
            [('f', 'clear_screen', 'fills the plane')])
        play = sidecar['binaries']['play']
        self.assertEqual(play['function_names']['0294']['name'],
                         'clear_screen')
        self.assertEqual(play['function_names']['0294']['note'],
                         'fills the plane')
        self.assertEqual(play['dispatch_table']['names'], {'0': 'clear_screen'})
        self.assertEqual(renames, {'f': 'clear_screen'})
        self.assertEqual([row['surface'] for row in changes],
                         ['binaries.play.function_names["0294"]',
                          'binaries.play.dispatch_table.names["0"]'])

    def test_names_the_dispatch_owner_instead(self):
        sidecar = json.loads(SIDECAR)
        sidecar['binaries']['vga'] = {
            'type': 'raw_drv',
            'function_names': {'0294': {'name': 'f'}},
            'dispatch_table': {
                'base_offset': 3, 'entry_size': 4, 'count': 2,
                'format': 'e8_rel16_cb', 'api': 'play'},
        }
        with tempfile.TemporaryDirectory() as tmp:
            path = os.path.join(tmp, 'P.json')
            with open(path, 'w') as f:
                json.dump(sidecar, f)
            with mock.patch.object(naming, 'sidecar_path', return_value=path), \
                    mock.patch.object(naming, '_asm_file',
                                      return_value='x.asm'), \
                    mock.patch.object(naming, '_routine_addr',
                                      return_value=0x294):
                with self.assertRaisesRegex(SidecarError, 'play.*slot'):
                    naming.plan_names('P', 'vga', [('f', 'g', None)])


class ProvenanceTest(unittest.TestCase):
    def test_conflict_marks_the_dispatch_name_effective(self):
        sidecar = json.loads(SIDECAR)
        sidecar['binaries']['play']['function_names']['0294']['name'] = 'g'
        with mock.patch.object(naming, '_dispatch_targets',
                               return_value={0: 0x294}):
            rows = naming.provenance_rows(sidecar, None, 'play', 'g', 0x294)
        self.assertEqual([(row['surface'], row['key'], row['name'])
                          for row in rows],
                         [('function_names', '0294', 'g'),
                          ('play.dispatch_table', '0', 'f')])
        self.assertEqual([row['effective'] for row in rows], [False, True])

    def test_shared_api_consumers(self):
        sidecar = json.loads(SIDECAR)
        sidecar['binaries']['vga'] = {
            'dispatch_table': {'api': 'play'}}
        sidecar['binaries']['ds']['driver_slots'] = [
            {'offset': '2f87', 'count': 2, 'driver': 'play',
             'prefix': 'gfx'}]
        self.assertEqual(naming.api_consumers(sidecar, 'play'), [
            'ds.driver_slots["2f87"] wraps each slot as gfx_<slot name>',
            'vga reuses the play dispatch table',
        ])


class JournalTest(unittest.TestCase):
    def test_rolls_back_an_edit_and_a_rename(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = os.path.join(tmp, 'x.s')
            with open(path, 'w') as f:
                f.write('old\n')
            journal = naming._Journal()
            journal.edit(path, 'new\n')
            dest = os.path.join(tmp, 'y.s')
            journal.rename(path, dest)
            self.assertTrue(os.path.exists(dest))
            journal.rollback()
            self.assertFalse(os.path.exists(dest))
            with open(path) as f:
                self.assertEqual(f.read(), 'old\n')


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
