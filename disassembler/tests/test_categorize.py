import contextlib
import io
import pathlib
import tempfile
import unittest

from tests.slow import slow
from unittest.mock import patch

from lib.sidecar.binary import per_binary as sidecar_per_binary
from tests.syms import routine
from lib.sidecar.loader import load as load_sidecar
from main.options import APPS_DIR
from main.runner import process
from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from lib.match.categorize import categorize_call_targets
from lib.match.pattern import match_patterns
from lib.model import PhaseContext, SeedInfo, TargetInfo


def _disassemble(data):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(data, 0))


class FunctionCategoryTests(unittest.TestCase):
    def test_decode_only_seeds_do_not_establish_function_entries(self):
        ctx = PhaseContext(b'\x90' * 16, entry_points=[])
        ctx.seeds = [SeedInfo(address=i, source_phase=phase,
                              confidence=0.9, reason='test')
                     for i, phase in enumerate((
                         'error_handler', 'force_code', 'sidecar', 'pattern_seed'))]
        self.assertEqual(ctx.function_entry_seeds, {2, 3})
        self.assertEqual(len(ctx.seeds), 4)

    def test_decode_only_seed_does_not_need_an_unused_label(self):
        ctx = PhaseContext(b'\x90' * 16, entry_points=[])
        ctx.seeds = [SeedInfo(4, 'error_handler', 0.9)]
        ctx.code_targets[4] = TargetInfo(4, 'seed', 0.9)
        ctx.entry_targets.add(4)
        self.assertNotIn(4, ctx.label_target_set)
        ctx.code_targets[4] = TargetInfo(4, 'direct_call', 1.0)
        self.assertIn(4, ctx.label_target_set)

    def test_string_ops_inside_named_function_do_not_create_an_entry(self):
        # configure_music_device's shape: frame, saved registers, string ops,
        # restored registers and return. The target at push di is internal.
        data = bytes.fromhex('55 89 e5 06 57 ab 5f 07 5d c3')
        labels = categorize_call_targets(
            data, {0, 4}, {0: routine('configure_music_device', 0)},
            instructions=_disassemble(data), function_roots={0},
            bounded_targets={0},
        )
        self.assertNotIn(4, labels)

    def test_proven_string_entry_keeps_its_category(self):
        data = bytes.fromhex('57 ab 5f c3')
        labels = categorize_call_targets(
            data, {0}, {}, instructions=_disassemble(data),
            function_roots={0}, bounded_targets={0},
        )
        self.assertEqual(labels[0], 'string_loc_0000')

    def test_classified_body_does_not_borrow_string_ops_after_return(self):
        data = bytes.fromhex('90 c3 ab c3')
        labels = categorize_call_targets(
            data, {0}, {}, instructions=_disassemble(data),
            function_roots={0}, bounded_targets={0},
        )
        self.assertEqual(labels[0], 'leaf_loc_0000')

    def test_named_signature_anchors_to_call_target_prefix(self):
        data = bytes.fromhex('5b 55 8b ec 03 e0 3b e5 c3')
        known_db = {
            'signatures': [
                {'name': 'stack_alloc_check', 'patterns': ['03 E0 3B E5']},
            ],
        }

        labels = match_patterns(data, {0}, known_db)

        self.assertEqual(labels, {0: 'stack_alloc_check'})

    def test_single_instruction_prefix_to_named_root_is_not_a_leaf_function(self):
        data = bytes.fromhex('5b 55 8b ec')
        instructions = _disassemble(data)

        labels = categorize_call_targets(
            data, {0}, {1: routine('stack_alloc_check', 1)},
            instructions=instructions,
            function_roots={0, 1},
            bounded_targets={0},
        )

        self.assertNotIn(0, labels)
        self.assertEqual(labels[1], 'stack_alloc_check')

    def test_single_instruction_leaf_without_adjacent_named_root_stays_leaf(self):
        data = bytes.fromhex('5b 90 90')
        instructions = _disassemble(bytes.fromhex('5b'))

        labels = categorize_call_targets(
            data, {0}, {}, instructions=instructions,
            function_roots={0}, bounded_targets={0},
        )

        self.assertEqual(labels[0], 'leaf_loc_0000')


@slow
class DSAVANTEgaNamingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls._output = tempfile.TemporaryDirectory(prefix='ds-ega-names-')
        project_dir = pathlib.Path(APPS_DIR) / 'DSAVANT'
        sidecar = load_sidecar('DSAVANT')
        sidecar_entry = sidecar_per_binary(sidecar, 'ega')
        with (patch('main.runner.write_report', return_value=''),
              patch('main.runner.write_layers', return_value=''),
              patch('main.runner.print_short_report'),
              contextlib.redirect_stdout(io.StringIO())):
            _, cls.label_map = process(
                'ega', str(project_dir), 'EGA.DRV', 0,
                output_dir=cls._output.name,
                sidecar_entry=sidecar_entry,
            )

    @classmethod
    def tearDownClass(cls):
        cls._output.cleanup()

    def test_masked_renderer_is_categorized_as_graphics(self):
        # A generic routine name ends in the tag of its own code (lib.names).
        self.assertRegex(self.label_map[0x3a8b], r'^graphics_loc_[G-V]{4}$')


if __name__ == '__main__':
    unittest.main()
