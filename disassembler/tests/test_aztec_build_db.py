"""Tests for :mod:`lib.aztec.build_db` alias handling."""

import unittest

from lib.aztec import build_db


def _f(name, offset=0, seg=1, module='lsubs'):
    return {'name': name, 'module': module, 'seg': seg, 'offset': offset,
            'length': 46, 'bytes': b''}


class CollapseAliasesTest(unittest.TestCase):
    def test_aliases_at_one_entry_collapse_to_shortest_name(self):
        funcs = [_f('$longs'), _f('$ldv'), _f('$lrm', offset=46)]
        names = [f['name'] for f in build_db._collapse_aliases(funcs)]
        self.assertEqual(names, ['$ldv', '$lrm'])

    def test_equal_length_aliases_keep_the_last_defined(self):
        funcs = [_f('$dtou'), _f('$dtoi'), _f('$dtox')]
        names = [f['name'] for f in build_db._collapse_aliases(funcs)]
        self.assertEqual(names, ['$dtox'])

    def test_same_offset_in_other_module_is_not_an_alias(self):
        funcs = [_f('a_', module='m1'), _f('b_', module='m2')]
        self.assertEqual(len(list(build_db._collapse_aliases(funcs))), 2)


if __name__ == '__main__':
    unittest.main()
