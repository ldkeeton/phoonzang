"""D7.0c: the pre-NASM link step (``lib.link``).

The step assembles the host as it stands and reads the geometry symbols an
overlay names but cannot see, so those values live in ``.cache`` rather than as
frozen literals in ``asm_<project>``.
"""

import os
import tempfile
import unittest

from lib.link import (
    HOST_GEOMETRY_SYMBOLS,
    HOST_VALUES_INCLUDE,
    LinkError,
    include_args,
    probe_symbols,
    project_of_asm_dir,
    render_values,
)


class ProbeSymbolsTests(unittest.TestCase):
    def test_reads_symbol_values_from_the_assembled_host(self):
        with tempfile.TemporaryDirectory() as d:
            with open(os.path.join(d, 'host.asm'), 'w') as f:
                f.write(
                    'org 0\nbits 16\n'
                    '__zdataseg_start:\n'
                    '    times 0x20 db 0xaa\n'
                    '__zimage_end:\n'
                    '__zbss_size equ 0x08\n'
                    '__zdataseg_end equ '
                    '(__zimage_end - __zdataseg_start) + __zbss_size\n'
                )
            values = probe_symbols(d, 'host.asm', HOST_GEOMETRY_SYMBOLS)
            self.assertEqual(values['__zdataseg_end'], 0x28)

    def test_missing_symbol_is_a_link_error(self):
        with tempfile.TemporaryDirectory() as d:
            with open(os.path.join(d, 'host.asm'), 'w') as f:
                f.write('org 0\nbits 16\n')
            with self.assertRaises(LinkError):
                probe_symbols(d, 'host.asm', ('__nope',))

    def test_missing_master_is_a_link_error(self):
        with tempfile.TemporaryDirectory() as d:
            with self.assertRaises(LinkError):
                probe_symbols(d, 'host.asm', HOST_GEOMETRY_SYMBOLS)

    def test_no_names_is_empty(self):
        with tempfile.TemporaryDirectory() as d:
            self.assertEqual(probe_symbols(d, 'host.asm', ()), {})


class RenderValuesTests(unittest.TestCase):
    def test_numeric_and_sorted(self):
        text = render_values({'b': 0x2, 'a': 0x1})
        self.assertIn('a equ 0x0001', text)
        self.assertIn('b equ 0x0002', text)
        self.assertLess(text.index('a equ'), text.index('b equ'))

    def test_deterministic(self):
        values = {'x': 0x1234, 'y': 0x0001}
        self.assertEqual(render_values(values), render_values(values))


class IncludeArgsTests(unittest.TestCase):
    def test_tree_root_is_first(self):
        args = include_args('/tmp/asm_DSAVANT')
        self.assertEqual(args[0], '-I/tmp/asm_DSAVANT/')

    def test_exposes_the_project_cache(self):
        args = include_args('/tmp/asm_DSAVANT')
        self.assertEqual(len(args), 2)
        self.assertTrue(args[1].endswith('.cache/DSAVANT/'))

    def test_project_of_asm_dir(self):
        self.assertEqual(project_of_asm_dir('/tmp/asm_DSAVANT'), 'DSAVANT')
        self.assertIsNone(project_of_asm_dir('/tmp/foo'))

    def test_include_directive_is_cache_relative(self):
        self.assertEqual(HOST_VALUES_INCLUDE, 'labels/host_values.inc')


if __name__ == '__main__':
    unittest.main()
