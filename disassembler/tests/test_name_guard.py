"""``make name`` refuses a name already in use, and a rename that would also
rewrite another binary's same-named routine."""

import os
import tempfile
import unittest
from unittest import mock

from make import naming


def _write(root, rel, text):
    path = os.path.join(root, rel)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        f.write(text)


SIDECAR = {'binaries': {
    'ds': {'type': 'mz', 'data_names': {'8482': {'name': 'battle_groups'}}},
    'vmele': {'type': 'overlay', 'function_names': {
        '28ee': {'name': 'add_monster_group'},
        '2991': {'name': 'claim_cell_for_group', 'note': 'places a monster'}}},
    'vbase': {'type': 'overlay', 'function_names': {
        '1000': {'name': 'process_scene_message_words'}}},
    'vmaze': {'type': 'overlay', 'function_names': {
        '2000': {'name': 'process_scene_message_words'}},
        'data_names': {'90c7': {'name': 'variant_2_other_town_filename'}}},
    'vmext': {'type': 'overlay', 'data_names': {
        '90bf': {'name': 'variant_2_other_town_filename'}}},
}}
OWN = (('binaries', 'vmele', 'function_names'), '28ee')


class NameGuardTest(unittest.TestCase):
    def setUp(self):
        self.root = tempfile.mkdtemp()
        patcher = mock.patch.object(naming, 'src_dir', return_value=self.root)
        patcher.start()
        self.addCleanup(patcher.stop)
        for cache in (naming._master_paths, naming._master_text):
            cache.cache_clear()
            self.addCleanup(cache.cache_clear)
        _write(self.root, 'vmele.asm',
               'npc_melee equ __zdseg_end + 2\n'
               '%include "vmele/add_monster_group.asm"\n'
               '%include "shared/ovr/titlecase_string.asm"\n')
        _write(self.root, 'vmele/add_monster_group.asm', 'add_monster_group:\n    ret\n')
        _write(self.root, 'shared/ovr/titlecase_string.asm', 'titlecase_string:\n    ret\n')
        _write(self.root, 'include/host_symbols.inc', 'aztec_csav equ 0x4652\n')
        _write(self.root, 'vbase/process_scene_message_words.c', 'x() {}\n')
        _write(self.root, 'vmaze/data/maze_variant_filenames.c',
               'char variant_2_other_town_filename[] = "OTWNDATA.VGA";\n')

    def in_use(self, name):
        return naming._name_in_use('P', SIDECAR, 'vmele', OWN, name, 'add_monster_group')

    def test_free_name_passes(self):
        self.assertIsNone(self.in_use('place_monster_group'))

    def test_same_binary_routine_name_refused(self):
        self.assertIn('vmele function_names["2991"]', self.in_use('claim_cell_for_group'))

    def test_data_owner_name_refused(self):
        self.assertIn('ds data_names["8482"]', self.in_use('battle_groups'))

    def test_master_equ_refused(self):
        self.assertIn('the master', self.in_use('npc_melee'))

    def test_included_shared_label_refused(self):
        self.assertIn('titlecase_string.asm', self.in_use('titlecase_string'))

    def test_host_symbol_refused(self):
        self.assertIn('host_symbols.inc', self.in_use('aztec_csav'))

    def test_own_file_is_not_a_clash(self):
        self.assertIsNone(self.in_use('add_monster_group_x'))

    def test_twin_in_untouched_binary_refused(self):
        msg = naming._same_name_elsewhere(
            'P', SIDECAR, {'process_scene_message_words': 'wrap_text'}, {'vmaze'})
        self.assertIn('vbase/process_scene_message_words.c', msg)

    def test_twin_renamed_together_passes(self):
        self.assertIsNone(naming._same_name_elsewhere(
            'P', SIDECAR, {'process_scene_message_words': 'wrap_text'}, {'vmaze', 'vbase'}))

    def test_other_binarys_data_name_refused(self):
        msg = naming._same_name_elsewhere(
            'P', SIDECAR, {'variant_2_other_town_filename': 'variant_2_alt_town_filename'}, {'vmext'})
        self.assertIn('vmaze/data/maze_variant_filenames.c', msg)

    def test_data_name_renamed_together_passes(self):
        self.assertIsNone(naming._same_name_elsewhere(
            'P', SIDECAR, {'variant_2_other_town_filename': 'variant_2_alt_town_filename'},
            {'vmext', 'vmaze'}))

    def test_generated_old_name_is_ignored(self):
        self.assertIsNone(naming._same_name_elsewhere(
            'P', SIDECAR, {'api_idx_0002_LMTG': 'x'}, {'vmaze'}))


if __name__ == '__main__':
    unittest.main()
