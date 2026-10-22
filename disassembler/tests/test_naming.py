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
    def _plan(self, specs, sidecar_text=SIDECAR, binary='play', tag=None,
              addr=0x294):
        with tempfile.TemporaryDirectory() as tmp:
            path = os.path.join(tmp, 'P.json')
            with open(path, 'w') as f:
                f.write(sidecar_text)
            with mock.patch.object(naming, 'sidecar_path', return_value=path), \
                    mock.patch.object(naming, '_asm_file',
                                      return_value='x.asm'), \
                    mock.patch.object(naming, '_routine_addr',
                                      return_value=addr), \
                    mock.patch.object(naming, '_label_tag_key',
                                      return_value=tag):
                return naming.plan_names('P', binary, specs)

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

    def test_renames_routines_entry_when_only_tag_names_it(self):
        text, sidecar, renames, changes = self._plan(
            [('shared_x', 'locate_x', 'finds x')], binary='ds',
            tag='x_loc_JKLM', addr=0x10)
        entry = sidecar['routines']['x_loc_JKLM']
        self.assertEqual(entry['name'], 'locate_x')
        self.assertEqual(entry['note'], 'finds x')
        self.assertNotIn('function_names', sidecar['binaries']['ds'])
        self.assertEqual([row['surface'] for row in changes],
                         ['routines["x_loc_JKLM"]'])
        self.assertEqual(renames, {'shared_x': 'locate_x'})
        self.assertEqual(json.loads(text)['routines']['x_loc_JKLM']['name'],
                         'locate_x')

    def test_names_a_routines_tag_directly(self):
        _text, sidecar, renames, changes = self._plan(
            [('x_loc_JKLM', 'locate_x', None)], binary='ds',
            tag='x_loc_JKLM', addr=0x10)
        self.assertEqual(sidecar['routines']['x_loc_JKLM']['name'],
                         'locate_x')
        self.assertEqual([row['surface'] for row in changes],
                         ['routines["x_loc_JKLM"]'])
        self.assertEqual(renames, {'shared_x': 'locate_x'})

    def test_ambiguous_routines_name_needs_the_tag(self):
        sidecar = json.loads(SIDECAR)
        sidecar['routines']['y_loc_JKLM'] = {'name': 'shared_x'}
        with self.assertRaisesRegex(SidecarError, 'name the tag'):
            self._plan([('shared_x', 'locate_x', None)],
                       sidecar_text=json.dumps(sidecar), binary='ds',
                       tag=None, addr=0x10)

    def test_updates_function_names_and_routines_together(self):
        sidecar = json.loads(SIDECAR)
        sidecar['routines']['x_loc_JKLM']['note'] = 'shared note'
        sidecar['binaries']['ds']['function_names'] = {
            '0010': {'name': 'shared_x', 'note': 'function note'}}
        _text, sidecar, renames, changes = self._plan(
            [('shared_x', 'locate_x', None)],
            sidecar_text=json.dumps(sidecar), binary='ds',
            tag='x_loc_JKLM', addr=0x10)
        self.assertEqual(
            sidecar['binaries']['ds']['function_names']['0010']['name'],
            'locate_x')
        self.assertEqual(sidecar['routines']['x_loc_JKLM']['name'],
                         'locate_x')
        self.assertEqual(sidecar['routines']['x_loc_JKLM']['note'],
                         'shared note')
        self.assertEqual([row['surface'] for row in changes],
                         ['binaries.ds.function_names["0010"]',
                          'routines["x_loc_JKLM"]'])
        self.assertEqual(renames, {'shared_x': 'locate_x'})

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

    def test_routines_entry_must_match_the_content_tag(self):
        sidecar = json.loads(SIDECAR)
        with mock.patch.object(naming, '_label_tag_key',
                               return_value='other_loc_ZZZZ'):
            rows = naming.provenance_rows(sidecar, 'P', 'ds', 'shared_x', 0x10)
        self.assertNotIn('routines', [row['surface'] for row in rows])
        with mock.patch.object(naming, '_label_tag_key',
                               return_value='x_loc_JKLM'):
            rows = naming.provenance_rows(sidecar, 'P', 'ds', 'shared_x', 0x10)
        self.assertEqual([(row['surface'], row['key']) for row in rows],
                         [('routines', 'x_loc_JKLM')])


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


class RenameSourcesTest(unittest.TestCase):
    TEXT = ('public old_name_\nold_name_ proc near\n'
            '\tcall callee_\n\tret\nold_name_ endp\n')

    def _file(self, tmp):
        path = os.path.join(tmp, 'old_name.s')
        with open(path, 'w') as f:
            f.write(self.TEXT)
        return path

    def test_dry_run_records_references_and_the_rename(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = self._file(tmp)
            dest = os.path.join(tmp, 'new_name.s')
            with mock.patch.object(naming, '_hand_files',
                                   return_value=[path]):
                changed = naming.rename_sources(
                    'P', {'old_name': 'new_name',
                          'callee': 'new_callee'}, dry_run=True)
            self.assertEqual(len(changed), 1)
            record = changed[0]
            self.assertEqual(record['path'], path)
            self.assertEqual(record['dest'], dest)
            self.assertEqual(dict((old, count) for old, _new, count
                                  in record['rewrites']),
                             {'old_name': 3, 'callee': 1})
            with open(path) as f:
                self.assertEqual(f.read(), self.TEXT)
            self.assertFalse(os.path.exists(dest))
            lines = list(naming._source_change_lines(record))
            self.assertIn('4 references', lines[0])
            self.assertIn('old_name -> new_name x3', lines[0])
            self.assertIn('callee -> new_callee', lines[0])
            self.assertTrue(lines[1].lstrip().startswith('renamed '))

    def test_writes_the_references_then_renames_the_source(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = self._file(tmp)
            dest = os.path.join(tmp, 'new_name.s')
            with mock.patch.object(naming, '_hand_files',
                                   return_value=[path]):
                naming.rename_sources(
                    'P', {'old_name': 'new_name',
                          'callee': 'new_callee'})
            self.assertFalse(os.path.exists(path))
            with open(dest) as f:
                text = f.read()
            self.assertIn('public new_name_', text)
            self.assertIn('call new_callee_', text)
            self.assertNotIn('old_name_', text)


class LabelCacheTest(unittest.TestCase):
    def test_invalidates_only_exports_a_failed_build_changed(self):
        with tempfile.TemporaryDirectory() as tmp:
            kept = os.path.join(tmp, 'kept_labels.json')
            stale = os.path.join(tmp, 'stale_labels.json')
            for path in (kept, stale):
                with open(path, 'w') as f:
                    f.write('{}')
            with mock.patch.object(naming, 'labels_dir', return_value=tmp):
                snapshot = naming._label_snapshot('P')
                mtime = os.stat(stale).st_mtime_ns
                os.utime(stale, ns=(mtime + 1_000_000, mtime + 1_000_000))
                naming._invalidate_changed_labels('P', snapshot)
            self.assertTrue(os.path.exists(kept))
            self.assertFalse(os.path.exists(stale))


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
