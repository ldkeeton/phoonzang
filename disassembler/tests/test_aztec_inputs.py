"""Which hand-owned sources can override disassembly (:mod:`main.aztec`)."""

import os
import tempfile
import unittest

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
        self.assertEqual(aztec._hand_shared_source_tree(self.dest), {
            'app_free': c_path})

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
