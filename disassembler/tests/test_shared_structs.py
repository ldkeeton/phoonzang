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
