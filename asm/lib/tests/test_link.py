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
    collect_host_data,
    host_name,
    include_args,
    project_of_asm_dir,
)


class HostDataMapTests(unittest.TestCase):
    """D7.1: the union of the DS names the overlays reference."""

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

    def test_host_name_prefers_ds_then_the_0x200_image(self):
        self.assertEqual(host_name({'ds': ('DS.EXE', 0x200),
                                    'vbase': ('VBASE.OVR', 14)}), 'ds')
        self.assertEqual(host_name({'game': ('GAME.EXE', 0x200),
                                    'ov': ('A.OVR', 14)}), 'game')
        self.assertIsNone(host_name({'ov': ('A.OVR', 14)}))


if __name__ == '__main__':
    unittest.main()
