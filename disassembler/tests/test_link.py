"""Host helpers for overlay assembly (``lib.link``).

Overlays see the host's labels by including the host source (no generated
table); what ``lib.link`` still owns is the include arguments for a generated
tree and the union of the host DS offsets the overlays reference.
"""

import os
import tempfile
import unittest

from lib.link import (
    LinkError,
    begin_run,
    collect_ds_starts,
    collect_host_data,
    end_run,
    host_name,
    include_args,
    project_of_src_dir,
    read_export,
    write_export,
)


def _export(d, filename, data):
    write_export(os.path.join(d, filename), data)


class HostDataMapTests(unittest.TestCase):
    """D7.1: the union of the DS names the overlays reference."""

    def test_collect_host_data_merges_exports(self):
        with tempfile.TemporaryDirectory() as d:
            _export(d, 'vbase_hostdata.json', {'bss_1': 0x1, 'dseg_2': 0x2})
            _export(d, 'vmaze_hostdata.json', {'bss_1': 0x1, 'bss_3': 0x3})
            self.assertEqual(collect_host_data(d, {'vbase', 'vmaze'}),
                             {'bss_1': 0x1, 'dseg_2': 0x2, 'bss_3': 0x3})

    def test_collect_host_data_conflict_is_a_link_error(self):
        with tempfile.TemporaryDirectory() as d:
            _export(d, 'a_hostdata.json', {'bss_1': 0x1})
            _export(d, 'b_hostdata.json', {'bss_1': 0x2})
            with self.assertRaises(LinkError):
                collect_host_data(d, {'a', 'b'})

    def test_a_consumer_that_exported_nothing_is_a_link_error(self):
        with tempfile.TemporaryDirectory() as d:
            _export(d, 'a_hostdata.json', {})
            with self.assertRaises(LinkError):
                collect_host_data(d, {'a', 'b'})


class DsStartsTests(unittest.TestCase):
    """The indexed-binding union is drawn from the host family only."""

    def test_collect_unites_the_named_binaries(self):
        with tempfile.TemporaryDirectory() as d:
            for name, starts in (('ds', [0x110, 0x8482]), ('vmele', [0x8490]),
                                 ('vinstall', [0x251a])):
                _export(d, f'{name}_dsstarts.json', starts)
            self.assertEqual(collect_ds_starts(d, {'ds', 'vmele'}),
                             {0x110, 0x8482, 0x8490})


class RunTests(unittest.TestCase):
    """A build reads only what it exported itself."""

    def setUp(self):
        self.previous = begin_run()
        self.addCleanup(end_run, self.previous)

    def test_an_earlier_builds_export_is_a_link_error(self):
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'ds_ptrparams.json')
            write_export(path, {'f': [0]})
            self.assertEqual(read_export(path), {'f': [0]})
            begin_run()
            with self.assertRaises(LinkError):
                read_export(path)

    def test_a_missing_export_is_a_link_error_not_empty(self):
        with tempfile.TemporaryDirectory() as d:
            with self.assertRaises(LinkError):
                read_export(os.path.join(d, 'ds_ptrparams.json'))

    def test_outside_a_build_any_builds_export_is_read(self):
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'ds_labels.json')
            write_export(path, {'1': 'x'})
            end_run(None)
            self.assertEqual(read_export(path), {'1': 'x'})

    def test_rewriting_the_same_data_is_allowed(self):
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'ds_ptrparams.json')
            write_export(path, {'f': [0]})
            write_export(path, {'f': [0]})
            self.assertEqual(read_export(path), {'f': [0]})

    def test_changing_an_export_within_a_build_is_a_link_error(self):
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'ds_ptrparams.json')
            write_export(path, {'f': [0]})
            with self.assertRaises(LinkError):
                write_export(path, {'f': [0, 1]})

    def test_once_keeps_the_first_write(self):
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'ds_dsstarts.json')
            write_export(path, [1], once=True)
            write_export(path, [1, 2], once=True)
            self.assertEqual(read_export(path), [1])


class IncludeArgsTests(unittest.TestCase):
    def test_tree_root_is_first(self):
        args = include_args('/tmp/src_DSAVANT')
        self.assertEqual(args[0], '-I/tmp/src_DSAVANT/')

    def test_exposes_the_project_cache(self):
        args = include_args('/tmp/src_DSAVANT')
        self.assertEqual(len(args), 2)
        self.assertTrue(args[1].endswith('.cache/DSAVANT/'))

    def test_project_of_src_dir(self):
        self.assertEqual(project_of_src_dir('/tmp/src_DSAVANT'), 'DSAVANT')
        self.assertIsNone(project_of_src_dir('/tmp/foo'))

    def test_host_name_prefers_ds_then_the_0x200_image(self):
        self.assertEqual(host_name({'ds': ('DS.EXE', 0x200),
                                    'vbase': ('VBASE.OVR', 14)}), 'ds')
        self.assertEqual(host_name({'game': ('GAME.EXE', 0x200),
                                    'ov': ('A.OVR', 14)}), 'game')
        self.assertIsNone(host_name({'ov': ('A.OVR', 14)}))


if __name__ == '__main__':
    unittest.main()
