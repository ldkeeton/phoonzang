"""Record layouts live in ``src_DSAVANT/include/structs``, once each.

The rules that keep them there (one body per tag, one tag per object) run
in the build, from :mod:`lint.c_structs`; these tests pin those rules on
small trees, and check the generated ``structs.inc`` against the headers.
"""

import os
import pathlib
import re
import tempfile
import unittest

from lib.aztec.compile import project_headers
from lint.c_structs import check_project, code_only, struct_bodies

_TREE = pathlib.Path(__file__).resolve().parents[2] / 'src_DSAVANT'
_STRUCTS = _TREE / 'include' / 'structs'

_DOS_NAME = re.compile(r'^[a-z0-9_]{1,8}\.h$')
_code = code_only


class StructBodiesTest(unittest.TestCase):
    def test_bodies_are_found_and_uses_are_not(self):
        text = ('struct rec {\n\tint a;\n};\n'
                'extern struct rec *p[];\n'
                'union {\n\tint b;\n} u;\n')
        self.assertEqual(struct_bodies(text),
                         [(1, 'struct rec'), (5, 'union <anonymous>')])

    def test_comments_and_strings_are_ignored(self):
        text = '/* struct x { */\nchar *s = "struct y {";\n'
        self.assertEqual(struct_bodies(text), [])


class ProjectStructRulesTest(unittest.TestCase):
    """The build-time rules in :mod:`lint.c_structs`, on small trees."""

    def _findings(self, files):
        with tempfile.TemporaryDirectory() as root:
            for name, text in files.items():
                path = pathlib.Path(root, name)
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(text)
            return sorted((os.path.relpath(f.path, root), f.line, f.rule)
                          for f in check_project(root))

    def test_tag_in_two_c_files(self):
        body = 'struct rec {\n\tint a;\n};\n'
        self.assertEqual(
            self._findings({'a/x.c': body, 'b/y.c': body}),
            [('a/x.c', 1, 'c-struct-duplicate'),
             ('b/y.c', 1, 'c-struct-duplicate')])

    def test_tag_in_header_and_c_file(self):
        body = 'struct rec {\n\tint a;\n};\n'
        self.assertEqual(
            self._findings({'include/structs/rec.h': body, 'a/x.c': body}),
            [('a/x.c', 1, 'c-struct-duplicate')])

    def test_tag_in_two_headers(self):
        body = 'struct rec {\n\tint a;\n};\n'
        self.assertEqual(
            self._findings({'include/structs/one.h': body,
                            'include/structs/two.h': body}),
            [('include/structs/two.h', 1, 'c-struct-header-duplicate')])

    def test_vendor_sources_are_exempt(self):
        body = 'struct rec {\n\tint a;\n};\n'
        self.assertEqual(
            self._findings({'a/aztec/x.c': body, 'a/aztec_y.c': body,
                            'a/z.c': body}), [])

    def test_one_object_two_struct_tags(self):
        self.assertEqual(
            self._findings({
                'a/x.c': 'extern struct one *tables;\n',
                'a/y.c': 'extern int n;\nextern struct two *other, *tables;\n',
                'a/z.c': 'extern char tables[];\n'}),
            [('a/x.c', 1, 'c-struct-one-object'),
             ('a/y.c', 2, 'c-struct-one-object')])

    def test_one_struct_tag_is_clean(self):
        self.assertEqual(
            self._findings({
                'a/x.c': 'extern struct one *tables;\n',
                'a/y.c': 'extern struct one *tables;\n'
                         'extern struct two *lookup();\n'}),
            [])


class SharedStructsTest(unittest.TestCase):
    def test_headers_have_dos_names(self):
        bad = [path.name for path in _STRUCTS.iterdir()
               if not _DOS_NAME.match(path.name)]
        self.assertEqual(bad, [])


#: The generated record layouts (``lib.record_layout``), and the sidecar
#: whose ``data_names`` place each label.
_STRUCTS_INC = _TREE / 'include' / 'structs.inc'
_SIDECAR = pathlib.Path(__file__).resolve().parents[1] / 'sidecar' / 'DSAVANT.json'

_SIZES = {'char': 1, 'short': 2, 'int': 2, 'long': 4, 'unsigned': 2,
          'signed': 2}
_TYPE_WORDS = {'unsigned', 'signed', 'char', 'short', 'int', 'long',
               'register'}
_EXTERN = re.compile(r'^extern\s+struct\s+(\w+)\s+(\*?)\s*(\w+)'
                     r'((?:\s*\[[^\]]*\])*)\s*;', re.M)
_INCLUDE = re.compile(r'^#include\s+"(structs/\w+\.h)"', re.M)


def _scalar_size(words, pointer):
    """The size of a scalar member type, or None when it is not one."""
    if pointer:
        return 2
    words = [w for w in words if w not in ('unsigned', 'signed', 'register')
             ] or ['int']
    return _SIZES.get(words[-1]) if len(words) == 1 else (
        4 if words == ['long', 'int'] else None)


def _dim(text):
    """An array bound: a constant expression (``584 - 28``), else None."""
    if not re.fullmatch(r'[0-9a-fA-FxX\s+\-*()]+', text):
        return None
    try:
        return int(eval(text, {'__builtins__': {}}))
    except (SyntaxError, ValueError):
        return None


def struct_layouts(text):
    """``{tag: (size, leaf starts)}`` of the struct bodies in *text*, members
    packed as Aztec lays them out; a tag with a member this cannot size
    (a union, a bit field) is left out."""
    code = _code(text)
    bodies = {}
    for match in re.finditer(r'\bstruct\s+(\w+)\s*\{([^{}]*)\}', code):
        bodies[match.group(1)] = match.group(2)
    layouts = {}

    def layout(tag, depth=0):
        if tag in layouts or tag not in bodies or depth > 8:
            return layouts.get(tag)
        at, starts = 0, set()
        for member in bodies[tag].split(';'):
            member = member.strip()
            if not member:
                continue
            if ':' in member:
                return None
            words = member.split()
            if words[0] == 'struct':
                kind, rest = words[:2], ' '.join(words[2:])
            else:
                n = 0
                while n < len(words) and words[n] in _TYPE_WORDS:
                    n += 1
                kind, rest = words[:n], ' '.join(words[n:])
            if not kind or not rest:
                return None
            for decl in rest.split(','):
                d = re.match(r'\s*(\*?)\s*(\w+)((?:\s*\[[^\]]*\])*)', decl)
                dims = [_dim(x) for x in re.findall(r'\[([^\]]*)\]',
                                                    d.group(3))]
                if None in dims:
                    return None
                if kind[0] == 'struct' and not d.group(1):
                    inner = layout(kind[1], depth + 1)
                    if inner is None:
                        return None
                    size, inner_starts = inner
                else:
                    size = _scalar_size(kind, d.group(1))
                    if size is None:
                        return None
                    inner_starts = {0}
                count = 1
                for dim in dims:
                    count *= dim
                for k in range(count):
                    starts |= {at + k * size + s for s in inner_starts}
                at += size * count
        layouts[tag] = (at, frozenset(starts))
        return layouts[tag]

    for tag in list(bodies):
        layout(tag)
    return layouts


def generated_layouts(text):
    """``{DS offset: (pointer, size or None, field offsets)}`` of the
    ``include/structs.inc`` text."""
    out = {}
    blocks = re.finditer(r'^; records (at|pointed at by) DS 0x([0-9a-f]+)\n'
                         r'struc \w+\n(.*?)^endstruc', text, re.M | re.S)
    for match in blocks:
        at, fields = 0, []
        for name, span in re.findall(r'^\s+\.(\w+): resb (\d+)$',
                                     match.group(3), re.M):
            if not name.startswith('pad_'):
                fields.append(at)
            at += int(span)
        pointer = match.group(1) != 'at'
        out[int(match.group(2), 16)] = (pointer, None if pointer else at,
                                        fields)
    return out


class GeneratedLayoutTest(unittest.TestCase):
    """The hand-written struct views agree with the layouts the build found.

    The build never reads them (it works from the original bytes alone); this
    checks them afterwards.  Every field the code was seen to use must start
    a scalar of the C view, and an indexed record's stride must be the C
    element's size (or the struct's own, when the sidecar gave the record a
    smaller ``size``).
    """

    def test_parsers(self):
        text = ('struct cell { int key; unsigned char a, b[3]; char *p; };\n'
                'struct row { struct cell c[2]; char pad; };\n')
        layouts = struct_layouts(text)
        self.assertEqual(layouts['cell'], (8, frozenset({0, 2, 3, 4, 5, 6})))
        self.assertEqual(layouts['row'][0], 17)
        inc = ('; records at DS 0x6a1a\nstruc slot_rec\n'
               '    .pad_0000: resb 4\n    .f_0004: resb 4\nendstruc\n')
        self.assertEqual(generated_layouts(inc), {0x6a1a: (False, 8, [4])})

    def test_c_views_match_the_generated_layouts(self):
        if not _STRUCTS_INC.is_file():
            self.skipTest('no generated include/structs.inc; run make build')
        import json
        generated = generated_layouts(_STRUCTS_INC.read_text())
        sidecar = json.loads(_SIDECAR.read_text())
        place = {}
        for info in (sidecar.get('binaries') or {}).values():
            for key, entry in (info.get('data_names') or {}).items():
                place.setdefault(entry['name'], int(key, 16))
        problems = []
        for path in sorted(_TREE.rglob('*.c')):
            text = path.read_text(errors='replace')
            if '\nextern struct' not in '\n' + text:
                continue
            full = text + ''.join(
                (_TREE / 'include' / inc).read_text(errors='replace')
                for inc in _INCLUDE.findall(text)
                if (_TREE / 'include' / inc).is_file())
            views = struct_layouts(full)
            for tag, star, label, dims in _EXTERN.findall(_code(text)):
                found = generated.get(place.get(label))
                if found is None or tag not in views:
                    continue
                pointer, size, fields = found
                if pointer != bool(star):
                    continue
                c_size, starts = views[tag]
                where = f'{path.relative_to(_TREE)}: struct {tag} {label}'
                inner = [_dim(x) or 1
                         for x in re.findall(r'\[([^\]]+)\]', dims)]
                stride = c_size
                for dim in inner:
                    stride *= dim
                if size is not None and size not in (c_size, stride):
                    problems.append(f'{where}: the code steps {size} bytes, '
                                    f'the C element is {stride}')
                    continue
                bad = [f for f in fields
                       if f < c_size and f % c_size not in starts]
                if bad:
                    problems.append(f'{where}: the code uses '
                                    + ', '.join(f'+0x{f:x}' for f in bad)
                                    + ', inside a C member')
        if problems:
            self.fail(f'{len(problems)} C struct views disagree with '
                      'include/structs.inc:\n' + '\n'.join(problems))


class HeaderCacheKeyTest(unittest.TestCase):
    """An edited header must change the compile cache key of its users."""

    def setUp(self):
        self._dir = tempfile.TemporaryDirectory()
        self.addCleanup(self._dir.cleanup)
        self.inc = self._dir.name
        os.makedirs(os.path.join(self.inc, 'structs'))

    def _write(self, name, text):
        with open(os.path.join(self.inc, name), 'w') as f:
            f.write(text)

    def test_included_headers_are_in_the_key(self):
        self._write('structs/a.h', '#include "structs/b.h"\nstruct a {};\n')
        self._write('structs/b.h', 'struct b {};\n')
        source = '#include "structs/a.h"\n'
        before = project_headers(source, self.inc)
        self.assertIn('struct b', before)
        self._write('structs/b.h', 'struct b { int x; };\n')
        self.assertNotEqual(project_headers(source, self.inc), before)

    def test_missing_and_repeated_includes(self):
        self._write('one.h', '#include "one.h"\n')
        self.assertEqual(project_headers('#include "none.h"\n', self.inc), '')
        self.assertEqual(
            project_headers('#include "one.h"\n#include "one.h"\n',
                            self.inc).count('#one.h'), 1)


if __name__ == '__main__':
    unittest.main()
