"""D7.0c: the pre-NASM link step (``lib.link``).

The step assembles the host as it stands and reads the geometry symbols an
overlay names but cannot see, so those values live in ``.cache`` rather than as
frozen literals in ``asm_<project>``.
"""

import os
import tempfile
import unittest

from lib.link import (
    HOST_DATA_INCLUDE,
    HOST_GEOMETRY_SYMBOLS,
    HOST_VALUES_INCLUDE,
    LinkError,
    collect_host_data,
    host_data_names,
    include_args,
    probe_labels,
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

    def test_custom_header(self):
        text = render_values({'x': 0x1}, header=['; hello'])
        self.assertTrue(text.startswith('; hello\n'))


class HostDataMapTests(unittest.TestCase):
    """D7.1: the one shared host DS name map (``host_data.inc``)."""

    def test_include_directive_is_cache_relative(self):
        self.assertEqual(HOST_DATA_INCLUDE, 'labels/host_data.inc')

    def test_host_data_names_reads_only_ds_declarations(self):
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'ds.asm')
            with open(path, 'w') as f:
                f.write(
                    'dseg_0002 equ __zdseg_0002 - __zdataseg_start\n'
                    'bss_5218 equ (__zimage_end - __zdataseg_start) + 0x4522\n'
                    'bss_9abc equ __zdataseg_end + 0x1\n'
                    'IMAGE_BASE equ 0x0200\n'
                    '__zdataseg_end equ '
                    '(__zimage_end - __zdataseg_start) + __zbss_size\n'
                    '    mov ax, [dseg_0002]\n'
                )
            self.assertEqual(
                host_data_names(path),
                ['bss_5218', 'bss_9abc', 'dseg_0002'],
            )

    def test_collect_host_data_merges_exports(self):
        import json
        with tempfile.TemporaryDirectory() as d:
            with open(os.path.join(d, 'vbase_hostdata.json'), 'w') as f:
                json.dump({'bss_1': 0x1, 'dseg_2': 0x2}, f)
            with open(os.path.join(d, 'vmaze_hostdata.json'), 'w') as f:
                json.dump({'bss_1': 0x1, 'bss_3': 0x3}, f)
            self.assertEqual(collect_host_data(d),
                             {'bss_1': 0x1, 'dseg_2': 0x2, 'bss_3': 0x3})

    def test_collect_host_data_conflict_is_a_link_error(self):
        import json
        with tempfile.TemporaryDirectory() as d:
            with open(os.path.join(d, 'a_hostdata.json'), 'w') as f:
                json.dump({'bss_1': 0x1}, f)
            with open(os.path.join(d, 'b_hostdata.json'), 'w') as f:
                json.dump({'bss_1': 0x2}, f)
            with self.assertRaises(LinkError):
                collect_host_data(d)

    def test_collect_host_data_empty_when_no_exports(self):
        with tempfile.TemporaryDirectory() as d:
            self.assertEqual(collect_host_data(d), {})


class ProbeLabelsTests(unittest.TestCase):
    """D7.1: host code labels are re-probed by name for the handle table."""

    def _host(self, path, body='    nop\n'):
        with open(path, 'w') as f:
            f.write('org 0\nbits 16\n' + body)

    def test_probe_reprobes_offsets_by_name(self):
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'host.asm')
            self._host(path, 'start:\n    nop\nroutine:\n    nop\n')
            self.assertEqual(
                probe_labels(d, 'host.asm', {0: 'start', 1: 'routine'}),
                {'start': 0, 'routine': 1})
            # A code byte inserted before ``routine`` moves it by one.
            self._host(path, 'start:\n    nop\n    nop\nroutine:\n    nop\n')
            self.assertEqual(
                probe_labels(d, 'host.asm', {0: 'start', 1: 'routine'}),
                {'start': 0, 'routine': 2})

    def test_undefined_name_keeps_its_recorded_offset(self):
        with tempfile.TemporaryDirectory() as d:
            self._host(os.path.join(d, 'host.asm'), 'start:\n    nop\n')
            self.assertEqual(
                probe_labels(d, 'host.asm', {0: 'start', 9: 'ghost'}),
                {'start': 0, 'ghost': 9})


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
