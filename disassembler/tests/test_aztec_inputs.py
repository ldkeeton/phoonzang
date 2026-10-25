"""Which hand-owned sources can override disassembly (:mod:`main.aztec`)."""

import os
import tempfile
import unittest
from types import SimpleNamespace
from unittest.mock import patch

from lib import autogen
from lib.shared import FOLDER
from main import aztec


class HandOwnedCTest(unittest.TestCase):
    def setUp(self):
        self._dir = tempfile.TemporaryDirectory()
        self.addCleanup(self._dir.cleanup)
        self.dest = os.path.join(self._dir.name, 'vinstall')
        self.shared = os.path.join(self._dir.name, FOLDER)
        os.makedirs(self.dest)
        os.makedirs(self.shared)

    def _write(self, folder, label, generated):
        path = os.path.join(folder, f'{label}.c')
        if generated:
            autogen.write_text(path, 'int x;\n')
        else:
            with open(path, 'w') as f:
                f.write('int mine;\n')
        return path

    def test_hand_owned_c_is_collected_for_checking(self):
        self._write(self.dest, 'aztec_chdir', generated=True)
        c_path = self._write(self.dest, 'app_free', generated=False)
        with open(os.path.join(self.dest, 'hand_asm.s'), 'w') as f:
            f.write('\tret\n')
        self.assertEqual(aztec._hand_source_tree(self.dest, []), {
            'app_free': c_path,
            'hand_asm': os.path.join(self.dest, 'hand_asm.s')})

    def test_hand_owned_shared_c_is_collected_for_checking(self):
        self._write(self.shared, 'aztec_io', generated=True)
        c_path = self._write(self.shared, 'app_free', generated=False)
        self.assertEqual(aztec._hand_shared_source_tree(self._dir.name), {
            'app_free': c_path})

    def test_hand_c_and_s_are_verification_only(self):
        from lib.aztec import cache

        entry = dict(source_version='test', file='test', compiler='test',
                     includes=[])
        func = SimpleNamespace(code=b'\xc3', fixups=[])
        compiled = SimpleNamespace(data=b'', data_relocations=[],
                                   externals=[], functions={})
        for suffix in ('.c', '.s'):
            with self.subTest(suffix=suffix):
                path = os.path.join(self.dest, 'app_ret' + suffix)
                with open(path, 'w') as f:
                    f.write('source')
                with (patch.object(aztec, 'AZTEC_MUX_DISABLED', False),
                      patch.object(aztec, 'AZTEC_PREBUILD_ONLY', False),
                      patch.object(aztec, '_sidecar_bands', return_value=[]),
                      patch.object(aztec, '_recorded_spans', return_value={}),
                      patch('lib.aztec.modules.module_spans',
                            return_value=({}, {})),
                      patch.object(cache, 'default_entry', return_value=entry),
                      patch.object(cache, 'precompile', return_value={}),
                      patch.object(cache, 'compile_source_module',
                                   return_value=(compiled, func)),
                      patch.object(cache, 'own_key', return_value='app_ret'),
                      patch.object(cache, 'data_spans', return_value=[])):
                    overrides, checks, _, _ = aztec._aztec_c_overrides(
                        'P', 'vinstall', b'\xc3', {0: 'app_ret'},
                        self._dir.name, function_roots={0: 'app_ret'})
                self.assertEqual(overrides, {})
                self.assertTrue(checks['app_ret']['check_only'])
                self.assertIs(checks['app_ret']['func'], func)
                os.remove(path)

    def test_a_generated_c_on_disk_is_reseeded(self):
        self._write(self.dest, 'aztec_mkdir', generated=True)

        class Cache:
            @staticmethod
            def seed_source_text(project, binary, label, entry):
                return 'seed'

            @staticmethod
            def seed_suffix(entry):
                return '.c'
        self.assertEqual(
            aztec._seed_aztec_c(Cache, 'P', 'vinstall', 'aztec_mkdir', {},
                                self.dest), ('seed', True))
        self._write(self.dest, 'aztec_mkdir', generated=False)
        self.assertEqual(
            aztec._seed_aztec_c(Cache, 'P', 'vinstall', 'aztec_mkdir', {},
                                self.dest), ('seed', True))


if __name__ == '__main__':
    unittest.main()
