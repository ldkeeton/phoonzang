"""Record layouts live in ``src_DSAVANT/include/structs``, once each.

A struct that only one ``.c`` uses may stay in it.  Once a second ``.c``
declares the same tag, the copies drift apart file by file, so a shared record
belongs in a header under ``include/structs`` (an 8.3 name, as DOS sees it),
each tag defined in one header only.  The tree test lists every tag that is
declared in two or more ``.c`` files, or in a ``.c`` and a shared header, to
work through.  Anonymous bodies have no tag to match and are not counted.
Vendor modules (an ``aztec/`` folder or an ``aztec_`` name) are Manx's own
library source and keep theirs.
"""

import os
import pathlib
import re
import tempfile
import unittest

from lib.aztec.compile import project_headers

_TREE = pathlib.Path(__file__).resolve().parents[2] / 'src_DSAVANT'
_STRUCTS = _TREE / 'include' / 'structs'

_COMMENT = re.compile(r'/\*.*?\*/', re.S)
_STRING = re.compile(r'"(?:\\.|[^"\\\n])*"|\'(?:\\.|[^\'\\\n])*\'')
#: ``struct tag {`` / ``union {``: a body, not a use of the tag.
_BODY = re.compile(r'\b(struct|union)\b\s*(\w*)\s*\{')
_DOS_NAME = re.compile(r'^[a-z0-9_]{1,8}\.h$')


def _code(text):
    """*text* with comments and literals blanked, newlines kept."""
    def blank(match):
        return re.sub(r'[^\n]', ' ', match.group(0))
    return _STRING.sub(blank, _COMMENT.sub(blank, text))


def struct_bodies(text):
    """``(line, 'struct tag')`` for each struct or union body in *text*."""
    code = _code(text)
    return [(code.count('\n', 0, match.start()) + 1,
             f'{match.group(1)} {match.group(2) or "<anonymous>"}')
            for match in _BODY.finditer(code)]


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


class SharedStructsTest(unittest.TestCase):
    def test_no_struct_is_declared_in_two_files(self):
        """A tag in 2+ .c files, or in a .c and a shared header."""
        owners = {}
        for path in sorted(_STRUCTS.glob('*.h')):
            for line, tag in struct_bodies(path.read_text(errors='replace')):
                owners.setdefault(tag, []).append(
                    f'include/structs/{path.name}:{line}')
        for path in sorted(_TREE.rglob('*.c')):
            if ('aztec' in path.relative_to(_TREE).parts[:-1]
                    or path.name.startswith('aztec_')):
                continue
            for line, tag in struct_bodies(path.read_text(errors='replace')):
                owners.setdefault(tag, []).append(
                    f'{path.relative_to(_TREE)}:{line}')
        twice = {tag: places for tag, places in sorted(owners.items())
                 if len(places) > 1 and not tag.endswith('<anonymous>')
                 and any('.c:' in place for place in places)}
        if twice:
            self.fail(f'{len(twice)} struct tags declared in more than one '
                      'file; move each to a header in '
                      'src_DSAVANT/include/structs and #include it:\n'
                      + '\n'.join(f'{tag}: {", ".join(places)}'
                                   for tag, places in twice.items()))

    def test_each_tag_is_defined_in_one_header(self):
        owners = {}
        for path in sorted(_STRUCTS.glob('*.h')):
            for _, tag in struct_bodies(path.read_text(errors='replace')):
                owners.setdefault(tag, []).append(path.name)
        twice = {tag: names for tag, names in owners.items()
                 if len(names) > 1 or tag.endswith('<anonymous>')}
        self.assertEqual(twice, {})

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
