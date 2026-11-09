"""``make badc``'s ``span`` and ``shp`` columns (:mod:`lib.badc_shapes`)."""

import unittest

from lib import badc_shapes


def _tree(files, data=None, sidecar=None):
    """Analyse source files *files* (``{relpath: text}``), with original
    data files *data* (``{name: bytes}``)."""
    return badc_shapes.analyse('src', sidecar or {}, sources=files,
                               data=data or {})


def _kinds(found, relpath, kind):
    return [d for _l, k, d in found.get(relpath, ()) if k == kind]


GLOBALS = 'char name[16];\nint after[4];\nchar *blob;\nint held;\n'


class SpanTest(unittest.TestCase):

    def test_a_read_longer_than_its_buffer(self):
        found = _tree({'ds/data/globals.c': GLOBALS,
                       'ds/game/f.c': 'extern char name[];\n'
                                      'f(fd) { aztec_read(fd, name, 24); }\n'})
        self.assertEqual(len(_kinds(found, 'ds/game/f.c', 'span')), 1)

    def test_a_read_that_fits(self):
        found = _tree({'ds/data/globals.c': GLOBALS,
                       'ds/game/f.c': 'extern char name[];\n'
                                      'f(fd) { aztec_read(fd, name, 16); }\n'})
        self.assertEqual(found, {})

    def test_setmem_over_a_scalar_by_address(self):
        found = _tree({'ds/game/f.c': 'int a;\n'
                                      'f() { aztec_setmem(&a, 6, 0); }\n'})
        self.assertEqual(len(_kinds(found, 'ds/game/f.c', 'span')), 1)

    def test_an_address_held_in_an_int_is_not_its_object(self):
        found = _tree({'ds/game/f.c': 'int buf;\n'
                                      'f(fd) { aztec_read(fd, buf, 900); }\n'})
        self.assertEqual(found, {})

    def test_a_pointer_element_moves_its_target(self):
        found = _tree({'ds/game/f.c':
                       'char *rows[4];\n'
                       'f(i) { aztec_setmem(rows[i], 400, 0); }\n'})
        self.assertEqual(found, {})

    def test_a_wrapper_passing_its_parameters_on(self):
        found = _tree({'ds/game/w.c': 'load(name, dst, n)\nchar *name, *dst;\n'
                                      'int n;\n{\n\taztec_read(3, dst, n);\n}\n',
                       'ds/game/f.c': 'char hdr[4];\n'
                                      'f() { load("A.HDR", hdr, 80); }\n'})
        self.assertEqual(len(_kinds(found, 'ds/game/f.c', 'span')), 1)

    def test_a_length_table_read_from_the_data_file(self):
        """``record_size[type]`` comes from the file the sidecar reads it
        from: type 1 is 72 bytes, more than the 16 declared."""
        sidecar = {'data_files': {'MASTER.HDR': {'parts': [
            {'memory': 'record_size', 'size': 6}]}}}
        files = {
            'ds/data/globals.c': 'char record_size[6];\nchar name[16];\n',
            'ds/game/io.c': 'extern int record_size[];\n'
                            'io(type, buf)\nint type;\nchar *buf;\n{\n'
                            '\taztec_read(3, buf, record_size[type]);\n}\n',
            'vmnpc/f.c': 'extern char name[];\n'
                         'f() { io(1, name); io(0, name); }\n'}
        data = {'MASTER.HDR': bytes([10, 0, 72, 0, 4, 0])}
        found = _tree(files, data, sidecar)
        spans = _kinds(found, 'vmnpc/f.c', 'span')
        self.assertEqual(len(spans), 1)
        self.assertIn('72 bytes', spans[0])

    def test_an_open_array_keeps_its_row_shape(self):
        found = _tree({'ds/data/globals.c': 'unsigned char hdr[64];\n',
                       'vmaze/f.c': 'extern unsigned char hdr[][16];\n'
                                    'f(i, d) { aztec_movmem(hdr[i], d, 16); }\n'})
        self.assertEqual(found, {})


class ShapeTest(unittest.TestCase):

    def test_a_byte_blob_used_as_an_int(self):
        found = _tree({'ds/data/globals.c': 'char index[14];\n',
                       'ds/game/f.c': 'extern int index[];\nf() { index[0]; }\n',
                       'ds/game/g.c': 'extern int index[];\ng() { index[1]; }\n'})
        self.assertEqual(len(_kinds(found, 'ds/data/globals.c', 'shape')), 1)
        self.assertEqual(_kinds(found, 'ds/game/f.c', 'shape'), [])

    def test_a_struct_wins_over_bytes(self):
        found = _tree({'ds/data/globals.c': 'char recs[40];\n',
                       'ds/game/f.c': 'struct r { int a; char b[2]; };\n'
                                      'extern struct r recs[];\n'})
        self.assertIn('struct r', _kinds(found, 'ds/data/globals.c',
                                         'shape')[0])

    def test_signedness_alone_is_not_a_shape(self):
        found = _tree({'ds/data/globals.c': 'char codes[8];\n',
                       'ds/game/f.c': 'extern unsigned char codes[];\n'})
        self.assertEqual(found, {})

    def test_parameters_and_locals_are_not_globals(self):
        found = _tree({'ds/data/globals.c': 'long x;\n',
                       'ds/game/f.c': 'long f(x, y)\nint x, y;\n{\n'
                                      '\tint z;\n\treturn x;\n}\n',
                       'ds/game/g.c': 'g()\n{\n\tchar x[4];\n}\n'})
        self.assertEqual(found, {})

    def test_each_overlay_has_its_own_globals(self):
        found = _tree({'vmaze/data/globals.c': 'int count;\n',
                       'vmaze/f.c': 'extern int count;\n',
                       'vmnpc/data/globals.c': 'char count[4];\n',
                       'vmnpc/f.c': 'extern char count[];\n'})
        self.assertEqual(found, {})


if __name__ == '__main__':
    unittest.main()
