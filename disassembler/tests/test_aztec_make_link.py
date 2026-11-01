"""``make link``: which sources link, and how LN's errors are sorted.  The logs
are real ``ln``/``cnm`` output, so these run without DOSBox."""

import os
import tempfile
import unittest

from lib.aztec import link


def _write(root, path, text=''):
    full = os.path.join(root, path)
    os.makedirs(os.path.dirname(full), exist_ok=True)
    with open(full, 'w') as f:
        f.write(text)


class MembersTest(unittest.TestCase):
    def setUp(self):
        tmp = tempfile.TemporaryDirectory()
        self.addCleanup(tmp.cleanup)
        self.tree = tmp.name
        # A listing must not matter: nothing here is included by it.
        _write(self.tree, 'bin.asm', '%include "bin/gen.asm"\n')
        _write(self.tree, 'bin/gen.asm', 'gen_:\n')
        _write(self.tree, 'bin/one.s')
        _write(self.tree, 'bin/two.c')
        _write(self.tree, 'bin/aztec_x.c')
        _write(self.tree, 'shared/aztec/three.c')
        _write(self.tree, 'shared/aztec/four.s', '\tpublic\tfour_\n')

    def _paths(self, c_files=()):
        return [m.path for m in link.members(self.tree, 'bin', c_files)]

    def test_default_is_every_own_s_and_the_runtime_c(self):
        self.assertEqual(self._paths(), ['bin/aztec_x.c', 'bin/one.s'])

    def test_c_files_add_named_or_all(self):
        self.assertEqual(self._paths(['two']),
                         ['bin/aztec_x.c', 'bin/one.s', 'bin/two.c'])
        self.assertEqual(self._paths(['all']),
                         ['bin/aztec_x.c', 'bin/one.s', 'bin/two.c'])
        self.assertEqual(self._paths(['three']),
                         ['bin/aztec_x.c', 'bin/one.s', 'shared/aztec/three.c'])

    def test_overlay_starts_from_its_startup(self):
        _write(self.tree, 'shared/ovr/aztec_ovbgn.s')
        self.assertEqual(
            [m.path for m in link.members(self.tree, 'bin', overlay=True)],
            ['bin/aztec_x.c', 'bin/one.s', 'shared/ovr/aztec_ovbgn.s'])

    def test_unknown_c_file_is_an_error(self):
        with self.assertRaises(ValueError):
            self._paths(['nope'])

    def test_library_holds_no_generated_asm(self):
        self.assertEqual([m.path for m in link.library(self.tree)],
                         ['shared/aztec/four.s', 'shared/aztec/three.c'])


class DefinitionsTest(unittest.TestCase):
    def test_s(self):
        text = ('\tpublic\tfoo_\n\tprocdef\tbar\nbaz_\tdw\t0\nqux:\n'
                '\textrn\tother_:word\n')
        self.assertEqual(link.defined_names('a.s', text),
                         {'foo', 'bar', 'baz', 'qux'})

    def test_c_skips_declarations(self):
        text = ('extern int other;\nint proto();\nstatic int hid;\n'
                'int count = 0;\nchar buf[4];\nfunc(a, b)\nint a;\n{\n}\n'
                'int head() {\n}\n')
        self.assertLessEqual({'count', 'buf', 'func', 'head'},
                             link.defined_names('a.c', text))
        self.assertFalse({'other', 'proto', 'hid'}
                         & link.defined_names('a.c', text))

    def test_needed_pulls_the_first_definer_once(self):
        have = [link.Member('a', 'a.s', 'asm')]
        index = {'f': ['x.s', 'y.s'], 'g': ['x.s'], 'h': ['a.s', 'z.s']}
        self.assertEqual(link.needed(['f_', 'g_', 'h_', 'nope_'], have, index),
                         ['x.s'])


class ParseTest(unittest.TestCase):
    def test_log(self):
        log = ('Aztec C Linker Version  v4.10d 7-22-88\n'
               'ERROR: Undefined symbol: music_enabled\n'
               'ERROR: Undefined symbol: music_enabled\n'
               'foo_ multiply defined\n')
        self.assertEqual(link.parse_log(log), (['music_enabled'], ['foo_']))

    def test_publics_skip_undefined_and_local(self):
        text = ('X.O: code: 147 data: 0 udata: 0  total: 147 (0x93)\n'
                '  0000 Un music_enabled  0000 Pg music_start_  0038 pg _hw1\n')
        self.assertEqual(link.parse_publics(text), ['music_start_'])

    def test_other_linker_errors(self):
        log = ('Aztec C Linker Version  v4.10d 7-22-88\n'
               'ERROR: Undefined symbol: music_enabled\n'
               'foo_ multiply defined\n'
               'ERROR: Too many symbols\n')
        self.assertEqual(link.parse_other(log), ['ERROR: Too many symbols'])
        self.assertEqual(link.parse_other(''), ['ln wrote no log'])

    def test_source_errors(self):
        log = 'Aztec 8086 Assembler\nERROR:X.ASM:12: bad operand\n1 errors\n'
        self.assertEqual(link.source_errors(log), ['ERROR:X.ASM:12: bad operand'])
        self.assertEqual(link.source_errors('Out of memory\n'), ['Out of memory'])
        self.assertEqual(link.source_errors(''), ['no object and no log'])


class ClassifyTest(unittest.TestCase):
    def _sort(self, name, publics=None, labels=None):
        result = link.classify([name], [], publics or {}, labels or {})
        return {k: v for k, v in result.items() if v}

    def test_spelling_either_way(self):
        self.assertEqual(self._sort('f_', {'f': 'a.s'}),
                         {'spelling': [('f_', 'f in a.s')]})
        self.assertEqual(self._sort('f', {'f_': 'a.s'}),
                         {'spelling': [('f', 'f_ in a.s')]})

    def test_name_nothing_defines_is_unknown(self):
        self.assertEqual(self._sort('gone_'), {'undefined': [('gone_', '')]})

    def test_label_sorted_by_its_owner(self):
        self.assertEqual(self._sort('x', labels={'x': 'p/x.s'}),
                         {'not_public': [('x', 'p/x.s')]})
        self.assertEqual(self._sort('x_', labels={'x': 'p/x.c'}),
                         {'in_c': [('x_', 'p/x.c')]})

    def test_c_in_the_link_that_does_not_export_it_is_a_defect(self):
        result = link.classify(['x_'], [], {}, {'x': 'p/x.c'}, linked={'p/x.c'})
        self.assertEqual(result['not_public'], [('x_', 'p/x.c')])

    def test_runtime_helper_is_found_under_its_label(self):
        self.assertEqual(self._sort('$csav', labels={'csav': 'a/c.c'}),
                         {'in_c': [('$csav', 'a/c.c')]})

    def test_name_the_host_exports_is_resolved(self):
        self.assertEqual(self._sort('f_', {'f_': 'ds/f.s'}, {'f': 'ds/f.s'}), {})

    def test_multiple_and_failed(self):
        result = link.classify([], ['f_'], {'f_': 'a.s'}, {},
                               {'b.s': ['E1', 'E2']}, other=['E3'])
        self.assertEqual(result['multiple'], [('f_', 'a.s')])
        self.assertEqual(result['failed'], [('b.s', 'E1'), ('b.s', 'E2')])
        self.assertEqual(result['linker'], [('E3', '')])





if __name__ == '__main__':
    unittest.main()
