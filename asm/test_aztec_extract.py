"""Tests for :mod:`lib.aztec.extract`.

These use the vendored v3.40b sources, so they need no DOSBox and always run.
"""

import unittest

from lib.aztec import extract, sources

_OPEN = 'open.c'
_MALLOC = 'malloc.c'
_CROOT = 'croot.c'
_TTYIO = 'ttyio.c'


def _src(name):
    text = sources.catalog('v340a').get(name)
    if text is None:
        raise unittest.SkipTest(f'{name} not in vendored v340a sources')
    return text


class BlocksTest(unittest.TestCase):
    def test_open_defines_creat_and_open_only(self):
        names = [b['name'] for b in extract._blocks(_src(_OPEN))]
        self.assertEqual(names, ['creat', 'open'])

    def test_malloc_defines_three_functions(self):
        names = [b['name'] for b in extract._blocks(_src(_MALLOC))]
        self.assertEqual(names, ['realloc', 'malloc', 'free'])


class ExtractTest(unittest.TestCase):
    def test_creat_excludes_open(self):
        out = extract.extract_routine(_src(_OPEN), 'creat')
        self.assertIsNotNone(out)
        self.assertIn('creat(name, mode)', out)
        self.assertNotIn('open(name, flag, mode)', out)
        self.assertIn('#include "errno.h"', out)

    def test_open_excludes_creat(self):
        out = extract.extract_routine(_src(_OPEN), 'open')
        self.assertIsNotNone(out)
        self.assertIn('open(name, flag, mode)', out)
        self.assertNotIn('creat(name, mode)', out)

    def test_realloc_keeps_return_type_line(self):
        out = extract.extract_routine(_src(_MALLOC), 'realloc')
        self.assertIsNotNone(out)
        self.assertIn('char *\nrealloc(area, size)', out)
        self.assertNotIn('malloc(size)', out.split('realloc(area, size)')[0])
        # The typedef/`#ifdef __LDATA` preamble must survive intact.
        self.assertIn('typedef struct list {', out)
        self.assertIn('#ifdef __LDATA', out)

    def test_free_excludes_siblings_but_keeps_preamble(self):
        out = extract.extract_routine(_src(_MALLOC), 'free')
        self.assertIsNotNone(out)
        self.assertIn('\nfree(p)', out)
        self.assertNotIn('realloc(area, size)', out)
        self.assertNotIn('\nmalloc(size)', out)
        self.assertIn('static l_t first, *current;', out)

    def test_croot_keeps_ifdef_and_referenced_helper(self):
        out = extract.extract_routine(_src(_CROOT), 'Croot')
        self.assertIsNotNone(out)
        self.assertIn('Croot(cp, first)', out)
        self.assertIn('#ifdef REDIR', out)
        self.assertIn('redirect:', out)
        # ``int (*cls_)() = noper;`` keeps its initializer's target alive.
        self.assertIn('noper()', out)
        # Definitions that follow the target stay out.
        self.assertNotIn('exit(code)', out)
        self.assertNotIn('redir_err(name)', out)

    def test_tty_rd_keeps_file_scope_data(self):
        out = extract.extract_routine(_src(_TTYIO), 'tty_rd')
        self.assertIsNotNone(out)
        self.assertIn('__tty_rd(fd,buff,len)', out)
        self.assertIn("char _Eol = '\\n';", out)
        self.assertIn('int _TTrem;', out)
        self.assertNotIn('__tty_wr', out)

    def test_name_is_normalized(self):
        expected = extract.extract_routine(_src(_CROOT), 'Croot')
        self.assertEqual(extract.extract_routine(_src(_CROOT), '_croot'),
                         expected)

    def test_missing_symbol_is_none(self):
        self.assertIsNone(extract.extract_routine(_src(_OPEN), 'not_there'))

    def test_ambiguous_definition_is_none(self):
        module = 'amb(x)\n{\n\treturn 1;\n}\n\namb(y)\n{\n\treturn 2;\n}\n'
        self.assertIsNone(extract.extract_routine(module, 'amb'))


if __name__ == '__main__':
    unittest.main()
