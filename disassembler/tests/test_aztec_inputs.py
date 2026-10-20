"""Which ``.c`` files on disk the build reads (:mod:`main.aztec`).

The build leaves ``src_<project>/`` in place until it writes it, so a ``.c``
an earlier build generated is still there: only a hand-owned one (marker
removed) is input.
"""

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

    def test_a_generated_c_is_not_input(self):
        self._write(self.dest, 'aztec_chdir', generated=True)
        self._write(self.dest, 'app_free', generated=False)
        self.assertEqual(aztec._hand_c(self.dest), ['app_free'])

    def test_a_generated_shared_copy_is_not_the_routines_c(self):
        self._write(self.shared, 'aztec_io', generated=True)
        self.assertEqual(aztec.c_path(self.dest, 'aztec_io'),
                         os.path.join(self.dest, 'aztec_io.c'))
        mine = self._write(self.shared, 'aztec_io', generated=False)
        self.assertEqual(aztec.c_path(self.dest, 'aztec_io'), mine)

    def test_a_generated_c_on_disk_is_reseeded(self):
        self._write(self.dest, 'aztec_mkdir', generated=True)

        class Cache:
            @staticmethod
            def seed_source_text(project, binary, label, entry):
                return 'seed'
        self.assertEqual(
            aztec._seed_aztec_c(Cache, 'P', 'vinstall', 'aztec_mkdir', {},
                                self.dest), ('seed', True))
        self._write(self.dest, 'aztec_mkdir', generated=False)
        self.assertEqual(
            aztec._seed_aztec_c(Cache, 'P', 'vinstall', 'aztec_mkdir', {},
                                self.dest), ('int mine;\n', False))


if __name__ == '__main__':
    unittest.main()
