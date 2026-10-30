"""The data-file C compiler (``lib.cdata``): parsing, layout, bytes, text."""

import pathlib
import re
import unittest

import tempfile

from lib.cdata.derive import Project, struct_definitions
from lib.cdata.emit import Image
from lib.cdata.lang import CDataError, parse_file, parse_text
from lib.cdata.layout import type_text
from lib.cdata.render import render_object

_TREE = pathlib.Path(__file__).resolve().parents[2] / 'src_DSAVANT'
_HEADERS = sorted((_TREE / 'include' / 'structs').glob('*.h'))

_EDGE = 'struct e { unsigned char a, b; char g; int w; };\n'


def _bytes(text):
    return Image(parse_text(text).objects).data


class LayoutTest(unittest.TestCase):
    def test_aztec_sizes_and_no_padding(self):
        p = parse_text('struct s { char c; int i; long l; char *p; '
                       'char far *f; unsigned char b[3]; };\n'
                       'union u { char c; long l; };\n')
        s = p.structs['struct s']
        self.assertEqual(s.offsets, [0, 1, 3, 7, 9, 13])
        self.assertEqual(s.size, 16)
        self.assertEqual(p.structs['union u'].size, 4)

    def test_header_offsets_match_their_comments(self):
        """Every ``/* +0x.. */`` field comment is the field's real offset."""
        # One declarator per line (``a, b; /* +0x0, +0x1 */`` is skipped).
        comment = re.compile(r'^\s*[^/,\n]*?(\w+)(?:\[[^\]]*\])*;\s*/\*\s*\+(0x[0-9a-f]+)',
                             re.M | re.I)
        for header in _HEADERS:
            parsed = parse_file(str(header), [str(_TREE / 'include')])
            fields = {}
            for st in parsed.structs.values():
                for (name, _t), at in zip(st.fields, st.offsets):
                    fields.setdefault(name, set()).add(at)
            for name, offset in comment.findall(header.read_text()):
                if name in fields:
                    self.assertIn(int(offset, 16), fields[name],
                                  f'{header.name}: {name}')


class InitializerTest(unittest.TestCase):
    def test_positional_designated_and_zero_fill(self):
        data = _bytes(_EDGE + 'struct e x[2] = { { 1, 2, -1, 0x1234 }, '
                      '[1] = { .w = 5, .a = 9 } };\n')
        self.assertEqual(data.hex(), '0102ff3412' + '0900000500')

    def test_strings_macros_and_expressions(self):
        data = _bytes('#define N (1 << 2)\nchar s[N] = "AB";\n'
                      "int v[] = { N * 3 - 1, 'A', ~0 };\n")
        self.assertEqual(data, b'AB\0\0' + bytes.fromhex('0b004100ffff'))

    def test_errors_name_the_line(self):
        cases = [
            ('char c = 300;\n', 'does not fit'),
            ('char s[2] = "ABC";\n', 'does not fit'),
            (_EDGE + 'struct e x = { .a = 1, .a = 2 };\n', 'initialized twice'),
            (_EDGE + 'struct e x = { .z = 1 };\n', 'no field z'),
            ('int x[2] = { 1, 2, 3 };\n', 'outside'),
            ('int x = y;\n', 'not a constant'),
        ]
        for text, message in cases:
            with self.assertRaises(CDataError) as caught:
                _bytes(text)
            self.assertIn(message, str(caught.exception))
            self.assertRegex(str(caught.exception), r'<text>:\d+')

    def test_where_names_the_field(self):
        p = parse_text(_EDGE + 'struct e x[3];\nchar tail[2];\n')
        image = Image(p.objects)
        self.assertEqual(image.where(5 + 3), 'x[1].w')
        self.assertEqual(image.where(16), 'tail[1]')


class RenderTest(unittest.TestCase):
    def _round_trip(self, decl_text, data, **labels):
        parsed = parse_text(_EDGE + decl_text)
        obj = parsed.objects[-1]
        text = render_object(obj.name, obj.type, data, **labels)
        again = parse_text(_EDGE + text).objects[-1]
        self.assertEqual(Image([again]).data, data)
        return text

    def test_records_round_trip_with_labels(self):
        data = bytes.fromhex('0102ff3412' '0300000000')
        text = self._round_trip('struct e x[2];\n', data,
                                element_labels={0: 'first'},
                                field_labels={'a': {1: 'one'}})
        self.assertIn('{ .a = 1, .b = 2, .g = -1, .w = 4660 },'
                      '\t/* 0: first; a: one */', text)
        self.assertIn('/* 1 */', text)

    def test_text_and_number_tables(self):
        text = self._round_trip('char s[8];\n', b'NEW\0\0\0\0\0')
        self.assertIn('"NEW"', text)
        text = self._round_trip('char s[4];\n', bytes([100, 0, 0, 0]))
        self.assertIn('{ 100, 0, 0, 0 }', text)
        text = self._round_trip('unsigned char t[32];\n', bytes(range(32)))
        self.assertIn('0x1f', text)


_CODE = {
    'include/structs/rec.h': 'struct rec { int a; unsigned char b; };\n'
                             'struct dir { int n; struct rec r[1]; };\n',
    'one.c': '#include "structs/rec.h"\n'
             'extern char recs[], block[];\n'
             'extern int size_a, size_b[];\n'
             'extern long base;\n'
             'extern struct { int x; long y; } info[];\n'
             'f() { long local_table[4]; }\n',
    'two.c': '#include "structs/rec.h"\n'
             'extern struct rec recs[];\n'
             'extern struct rec *recp;\n'
             'extern struct dir directory;\n',
}
_SIDECAR = {'binaries': {'ds': {'data_names': {
    '0100': {'name': 'size_b', 'note': 'sizes'},
    '0104': 'size_a',
    '0106': 'base',
    '0108': 'base_hi',
    '0200': 'block',
}}}}


class DeriveTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls._dir = tempfile.TemporaryDirectory()
        root = pathlib.Path(cls._dir.name)
        for rel, text in _CODE.items():
            (root / rel).parent.mkdir(parents=True, exist_ok=True)
            (root / rel).write_text(text)
        cls.project = Project(str(root), _SIDECAR, [str(root / 'include')])

    @classmethod
    def tearDownClass(cls):
        cls._dir.cleanup()

    def test_the_most_specific_declaration_wins(self):
        ctype, includes = self.project.element('recs')
        self.assertEqual(type_text(ctype), 'struct rec')
        self.assertEqual(includes, ['structs/rec.h'])
        self.assertEqual(type_text(self.project.element('recp')[0]), 'struct rec')

    def test_locals_anonymous_structs_and_bytes(self):
        ctype, _inc = self.project.element('local_table', 16, 'one.c')
        self.assertEqual(type_text(ctype), 'long [4]')
        ctype, _inc = self.project.element('info')
        self.assertEqual((ctype.key, ctype.size), ('struct info_rec', 6))
        ctype, _inc = self.project.element('block', 6)
        self.assertEqual(type_text(ctype), 'char [6]')

    def test_a_short_struct_grows_its_last_array_or_pads(self):
        ctype, _inc = self.project.element('directory', 2 + 3 * 3)
        self.assertEqual(type_text(ctype.fields[-1][1]), 'struct rec [3]')
        ctype, _inc = self.project.element('recs', 5)
        self.assertEqual([n for n, _t in ctype.fields], ['recs', 'pad_0003'])

    def test_memory_runs_follow_the_sidecar_names(self):
        ctype, _inc, notes = self.project.memory('size_b', 0x14)
        self.assertEqual([(n, type_text(t)) for n, t in ctype.fields], [
            ('size_b', 'int [2]'), ('size_a', 'int'), ('base', 'long'),
            ('bss_010a', 'int [5]')])       # base_hi lies inside base
        self.assertEqual(notes, {'size_b': 'sizes'})
        text = ''.join(struct_definitions(ctype, set(), notes))
        self.assertIn('int size_b[2];\t/* +0x000: sizes */', text)
        self.assertEqual(parse_text(text).structs[ctype.key].size, 0x14)


if __name__ == '__main__':
    unittest.main()
