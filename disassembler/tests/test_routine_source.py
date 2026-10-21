"""A routine's source beside its fragment: ``.c`` for ``cc``, ``.s`` for
``as`` (:mod:`lib.routine_source`)."""

import os
import tempfile
import unittest

from lib import routine_source
from lib.aztec import relabel
from lib.aztec.mux import is_asm


class RoutineSourceTest(unittest.TestCase):
    def test_suffixes(self):
        self.assertTrue(routine_source.is_source('x.c'))
        self.assertTrue(routine_source.is_source('x.s'))
        self.assertFalse(routine_source.is_source('x.asm'))
        self.assertTrue(routine_source.is_asm_source('x.s'))
        self.assertTrue(is_asm('x.s') and is_asm('csav.asm'))
        self.assertFalse(is_asm('x.c'))

    def test_sources_in_and_beside(self):
        with tempfile.TemporaryDirectory() as tmp:
            for name in ('a.c', 'b.s', 'b.asm'):
                open(os.path.join(tmp, name), 'w').close()
            self.assertEqual(routine_source.sources_in(tmp),
                             {'a': 'a.c', 'b': 'b.s'})
            self.assertEqual(routine_source.beside(os.path.join(tmp, 'b')),
                             os.path.join(tmp, 'b.s'))
            self.assertIsNone(routine_source.beside(os.path.join(tmp, 'z')))

    def test_c_and_s_for_one_routine_is_an_error(self):
        with tempfile.TemporaryDirectory() as tmp:
            for name in ('a.c', 'a.s'):
                open(os.path.join(tmp, name), 'w').close()
            with self.assertRaises(SystemExit):
                routine_source.sources_in(tmp)


class RelabelAsmTest(unittest.TestCase):
    def test_s_text_renames_assembler_spelling_throughout(self):
        text = '; auto-generated\n\tcall open_\n\tmov ax,open\n'
        out = relabel.rewrite_identifiers(text, {'open': 'aztec_open'},
                                          asm=True)
        self.assertEqual(out, '; auto-generated\n\tcall aztec_open_\n'
                              '\tmov ax,open\n')


if __name__ == '__main__':
    unittest.main()
