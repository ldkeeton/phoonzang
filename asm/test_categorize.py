import contextlib
import io
import pathlib
import tempfile
import unittest
from unittest.mock import patch

import main
from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from lib.match.categorize import _detect_category


def _disassemble(data):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(data, 0))


class FunctionCategoryTests(unittest.TestCase):
    def test_single_multiply_in_long_routine_is_not_math_evidence(self):
        insns = _disassemble(b'\x90' * 20 + bytes.fromhex('f7 e3 c3'))
        self.assertEqual(_detect_category(insns, 0, 0), 'leaf')

    def test_repeated_arithmetic_is_math_evidence(self):
        insns = _disassemble(bytes.fromhex('f7 e3 f7 f1 c3'))
        self.assertEqual(_detect_category(insns, 0, 0), 'math')


class DSAVANTEgaNamingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls._output = tempfile.TemporaryDirectory(prefix='ds-ega-names-')
        project_dir = pathlib.Path(main.APPS_DIR) / 'DSAVANT'
        sidecar = main.load_sidecar('DSAVANT')
        sidecar_entry = main.sidecar_per_binary(sidecar, 'ega')
        with (patch('main.write_report', return_value=''),
              patch('main.write_layers', return_value=''),
              patch('main.print_short_report'),
              contextlib.redirect_stdout(io.StringIO())):
            _, cls.label_map = main.process(
                'ega', str(project_dir), 'EGA.DRV', 0,
                output_dir=cls._output.name,
                sidecar_entry=sidecar_entry,
            )

    @classmethod
    def tearDownClass(cls):
        cls._output.cleanup()

    def test_masked_renderer_is_categorized_as_graphics(self):
        self.assertEqual(self.label_map[0x3a8b], 'graphics_loc_3a8b')


if __name__ == '__main__':
    unittest.main()
