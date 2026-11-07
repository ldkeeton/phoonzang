"""``make badc``'s ``adj`` column: code that reaches past an object's end."""

import unittest

from lib import badc

GLOBALS = 'int rows[1];\nint rows_next[19];\nchar path[1];\nint table[4];\n'
ARRAYS = {'vmnpc': badc._array_definitions(GLOBALS)}


def _adj(code, relpath='vmnpc/f.c'):
    return badc._count_adjacency(code, badc._file_arrays(relpath, ARRAYS))


def _symbols(*rows):
    return badc._object_ends([{'name': name, 'space': space, 'kind': 'DATA',
                               'offset': offset}
                              for name, space, offset in rows])


class ArrayDefinitionsTest(unittest.TestCase):
    def test_reads_file_scope_arrays(self):
        self.assertEqual(ARRAYS['vmnpc'], {'rows': [1], 'rows_next': [19],
                                           'path': [1], 'table': [4]})

    def test_grouped_and_initialised(self):
        self.assertEqual(
            badc._array_definitions('static char a[2][3], b[5] = {0};\n'),
            {'a': [2, 3], 'b': [5]})

    def test_externs_and_locals_are_not_definitions(self):
        self.assertEqual(badc._array_definitions(
            'extern int x[9];\nf() {\n\tint y[3];\n}\n'), {})


class CountAdjacencyTest(unittest.TestCase):
    def test_variable_index_into_one_element(self):
        # The split the generator made: rows[i] = rows_next[i] shifts a row.
        self.assertEqual(_adj('extern int rows[], rows_next[];\n'
                              'f(i) { rows[i] = rows_next[i]; }'), 1)

    def test_element_zero_is_fine(self):
        self.assertEqual(_adj('extern int rows[];\nf() { rows[0] = 1; }'), 0)

    def test_address_handed_on(self):
        self.assertEqual(_adj('extern char path[];\n'
                              'f(s) { aztec_strcpy(path, s); }'), 1)
        self.assertEqual(_adj('extern char path[];\n'
                              'f() { return sizeof path; }'), 0)

    def test_constant_index_past_the_dimension(self):
        self.assertEqual(_adj('extern int table[];\nf() { table[4] = 0; }'), 1)
        self.assertEqual(_adj('extern int table[];\nf() { table[3] = 0; }'), 0)

    def test_variable_index_into_a_real_array_is_fine(self):
        self.assertEqual(_adj('extern int table[];\nf(i) { table[i] = 0; }'),
                         0)

    def test_a_scalar_extern_reads_one_element(self):
        self.assertEqual(_adj('extern char path;\nf() { g(path); }'), 0)

    def test_one_count_per_object(self):
        self.assertEqual(_adj('extern int rows[];\n'
                              'f(i) { rows[i] = rows[i + 1]; g(rows); }'), 1)

    def test_strings_and_comments_do_not_count(self):
        self.assertEqual(badc._score_file(
            '/* rows[i] */ f() { puts("path[i]"); }',
            arrays=badc._file_arrays('vmnpc/f.c', ARRAYS))[-2], 0)


class AsmReachTest(unittest.TestCase):
    TABLE = _symbols(('first', 'DS', 0x10), ('second', 'DS', 0x14),
                     ('own', 'DS', 0x20), ('own_tail', 'DS', 0x24))

    def test_reaching_another_files_object(self):
        self.assertEqual(badc._count_asm_reach(
            '\tmov ax, word ptr first+4\n', [self.TABLE]), 1)

    def test_inside_the_object(self):
        self.assertEqual(badc._count_asm_reach(
            '\tmov ax, word ptr first+2\n', [self.TABLE]), 0)

    def test_into_an_object_this_file_defines(self):
        self.assertEqual(badc._count_asm_reach(
            'own_tail\tdw 0\n\tmov ax, own+4\n', [self.TABLE]), 0)

    def test_registers_and_comments_are_not_symbols(self):
        self.assertEqual(badc._count_asm_reach(
            '\tmov ax, [bx+2]\t; first+4\n', [self.TABLE]), 0)

    def test_hex_reach(self):
        self.assertEqual(badc._count_asm_reach(
            '\tmov ax, first+4h\n', [self.TABLE]), 1)

    def test_every_binary_must_agree(self):
        wide = _symbols(('first', 'DS', 0x10), ('second', 'DS', 0x40))
        self.assertEqual(badc._count_asm_reach(
            '\tmov ax, first+4\n', [self.TABLE, wide]), 0)


if __name__ == '__main__':
    unittest.main()
