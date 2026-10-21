"""The data names a C override's replaced code alone used are forgotten."""

import unittest

from lib.compare.coverrides import _drop_replaced_names
from lib.symtab import Space, Symbol


def _ds(off):
    return Symbol.data(Space.DS, off)


class DropReplacedNamesTest(unittest.TestCase):
    SPAN = [(0x100, 0x200)]

    def _run(self, mem_equ, mem_symbols, kept=()):
        _drop_replaced_names(mem_equ, mem_symbols, self.SPAN, set(kept))
        return {str(n) for n in mem_equ}

    def test_only_inside_is_dropped(self):
        name = _ds(0x0c00)
        left = self._run({name: 0x0c00}, {(0x150, 0): name})
        self.assertEqual(left, set())

    def test_also_used_outside_stays(self):
        name = _ds(0x0c00)
        left = self._run({name: 0x0c00},
                         {(0x150, 0): name, (0x300, 1): name})
        self.assertEqual(left, {str(name)})

    def test_used_by_the_c_stays(self):
        name = _ds(0x0bfa)
        left = self._run({name: 0x0bfa}, {(0x150, 0): name}, kept=[str(name)])
        self.assertEqual(left, {str(name)})

    def test_code_segment_name_stays(self):
        name = Symbol.data(Space.CSEG, 0x3532)
        left = self._run({name: 0x3532},
                         {(0x150, 0): f'{name} - IMAGE_BASE'})
        self.assertEqual(left, {str(name)})

    def test_no_operand_use_stays(self):
        name = _ds(0x0c06)
        left = self._run({name: 0x0c06}, {})
        self.assertEqual(left, {str(name)})


if __name__ == '__main__':
    unittest.main()
