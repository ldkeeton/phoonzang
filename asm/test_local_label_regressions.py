import contextlib
import io
import pathlib
import re
import tempfile
import unittest
from unittest.mock import patch

import main


_PREVIOUS_LOCAL_TARGETS = {
    0x0262, 0x0271, 0x0280, 0x028f, 0x029b, 0x02ab, 0x02b7, 0x02c7,
    0x02d3, 0x02e3, 0x02ff, 0x030f, 0x031b, 0x032b, 0x0337, 0x0347,
    0x0361, 0x03a1, 0x03ae, 0x03b7, 0x0557, 0x0577, 0x0595, 0x059e,
    0x05b5, 0x05b7, 0x0b8a, 0x0b95, 0x0b9a, 0x0bc9, 0x0bd4, 0x0bd9,
    0x0bef, 0x0bfb, 0x0c0a, 0x0f9e, 0x1a84, 0x1a9d, 0x1b0f, 0x1b1c,
    0x2465, 0x246b, 0x2471, 0x2487, 0x24b7, 0x260c, 0x2662, 0x26e0,
    0x26f2, 0x26f4, 0x2724, 0x2727, 0x273e, 0x2746, 0x2750, 0x2774,
    0x27b5, 0x27c6, 0x27e8, 0x27fb, 0x2802, 0x280c, 0x281f, 0x2822,
    0x2862, 0x2c74, 0x2d5c, 0x2de1, 0x2f1c, 0x2f29, 0x392f, 0x395b,
    0x3a91, 0x3cac, 0x3ce3, 0x3cfc, 0x3cfe, 0x3d01, 0x3d08, 0x3d1b,
    0x3d4b, 0x3d8b, 0x3ddb, 0x3de4, 0x3deb, 0x3dfe, 0x3e2d, 0x3e5b,
    0x3fce, 0x42d5, 0x43c8, 0x43e6, 0x43f5, 0x440c, 0x441a, 0x4422,
    0x444a, 0x4452, 0x4676, 0x47fb, 0x4800, 0x4879, 0x4894, 0x48a5,
    0x48b0, 0x48ba, 0x48ca, 0x48d4, 0x48dd, 0x48ea, 0x48f8, 0x48fc,
    0x4aff, 0x4b1b, 0x4b1f, 0x4b38, 0x4bb4, 0x4bba, 0x4bd9, 0x4be2,
    0x4d2c, 0x4ef8, 0x4f02, 0x4f05, 0x4f39, 0x4f49, 0x4f4f, 0x4f51,
    0x4f53, 0x4f87, 0x5000, 0x5184, 0x519d, 0x51a1, 0x51ac, 0x51b1,
    0x51e6, 0x51ea, 0x51fb, 0x523b,
}

# These old local names have branch sources owned by other named entries too,
# so their generated labels must remain globally addressable.
_SHARED_OR_CROSS_FUNCTION_TARGETS = {
    0x1a84, 0x1a9d, 0x1b0f, 0x1b1c,
    0x2c74, 0x2d5c,
    0x4879, 0x4894, 0x48a5, 0x48b0, 0x48ba, 0x48ca,
    0x48d4, 0x48dd, 0x48ea, 0x48f8, 0x48fc,
}
_EXPECTED_LOCAL_TARGETS = (
    _PREVIOUS_LOCAL_TARGETS - _SHARED_OR_CROSS_FUNCTION_TARGETS
)


def _local_labels_by_offset(output_dir):
    labels = {}
    for path in pathlib.Path(output_dir).rglob('*.asm'):
        pending = []
        for line in path.read_text().splitlines():
            match = re.match(r'\s*(@\.\.[\w.]+):\s*$', line)
            if match:
                pending.append(match.group(1))
                continue
            match = re.search(r';\s*0x([0-9a-fA-F]+)\s*$', line)
            if match:
                for name in pending:
                    labels[int(match.group(1), 16)] = name
                pending = []
    return labels


class DSAVANTLocalLabelRegressionTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls._output = tempfile.TemporaryDirectory(prefix='ds-local-labels-')
        project_dir = pathlib.Path(main.APPS_DIR) / 'DSAVANT'
        sidecar = main.load_sidecar('DSAVANT')
        sidecar_entry = main.sidecar_per_binary(sidecar, 'ds')
        with (patch('main.write_report', return_value=''),
              patch('main.write_layers', return_value=''),
              patch('main.print_short_report'),
              contextlib.redirect_stdout(io.StringIO())):
            cls.bitmap, cls.label_map = main.process(
                'ds', str(project_dir), 'DS.EXE', 0x200,
                output_dir=cls._output.name,
                export_labels=True,
                sidecar_entry=sidecar_entry,
            )
        cls.local_labels = _local_labels_by_offset(cls._output.name)

    @classmethod
    def tearDownClass(cls):
        cls._output.cleanup()

    def test_historical_local_targets_keep_local_scope(self):
        missing = sorted(
            offset for offset in _EXPECTED_LOCAL_TARGETS
            if offset not in self.local_labels or offset in self.label_map
        )
        self.assertEqual(
            missing, [],
            'DSAVANT targets no longer rendered as local labels: '
            + ', '.join(f'0x{offset:04x}' for offset in missing),
        )

    def test_shared_or_cross_function_targets_stay_exportable(self):
        wrong = {
            offset: self.label_map.get(offset)
            for offset in _SHARED_OR_CROSS_FUNCTION_TARGETS
            if self.label_map.get(offset) != f'loc_{offset:04x}'
        }
        self.assertEqual(wrong, {})

    def test_shared_epilogue_label_uses_its_function_scope(self):
        self.assertEqual(
            self.local_labels.get(0x47fb), '@..math_loc_47e8.l1',
        )

    def test_sidecar_data_anchors_remain_data(self):
        data_ranges = (
            (0x08d4, 0x08e1),
            (0x3140, 0x343d),
            (0x3940, 0x395a),
            (0x396c, 0x3988),
            (0x10161, 0x10e55),
        )
        for start, end in data_ranges:
            with self.subTest(start=hex(start), end=hex(end)):
                self.assertTrue(
                    all(value == main.IS_DATA
                        for value in self.bitmap[start:end + 1]),
                )

    def test_long_data_after_main_return_is_emitted_as_data(self):
        self.assertEqual(self.bitmap[0x2f34], main.IS_CODE)
        self.assertTrue(all(value == main.IS_DATA
                            for value in self.bitmap[0x2f35:0x3067]))

        asm_text = (pathlib.Path(self._output.name) / 'ds.asm').read_text()
        emitted_instruction_offsets = {
            int(match.group(1), 16)
            for line in asm_text.splitlines()
            if (match := re.search(r';\s*0x([0-9a-fA-F]+)\s*$', line))
        }
        self.assertFalse(
            any(0x2f35 <= offset <= 0x3066
                for offset in emitted_instruction_offsets),
            'the data region after main should not emit instruction records',
        )

    def test_sidecar_code_anchors_decode_as_code(self):
        code_starts = (0x0fdf, 0x3067, 0x30f7, 0x343e, 0x3490, 0x457c)
        for address in code_starts:
            with self.subTest(address=hex(address)):
                self.assertEqual(self.bitmap[address], main.IS_CODE)
                self.assertIn(address, self.label_map)

        self.assertEqual(self.bitmap[0x1033], main.IS_CODE)
        self.assertEqual(self.bitmap[0x30a2], main.IS_CODE)
        self.assertEqual(self.bitmap[0x348f], main.IS_CODE)
        self.assertEqual(self.bitmap[0x45aa], main.IS_CODE)

    def test_shared_exit_helper_remains_global(self):
        asm_text = (pathlib.Path(self._output.name) / 'ds.asm').read_text()
        self.assertIn('dos_proc_loc_4e7e:', asm_text)
        self.assertEqual(asm_text.count('call dos_proc_loc_4e7e'), 3)


if __name__ == '__main__':
    unittest.main()
