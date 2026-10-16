import contextlib
import io
import pathlib
import re
import tempfile
import unittest
from unittest.mock import patch

from lib.model import IS_CODE, IS_DATA
from lib.sidecar.binary import per_binary as sidecar_per_binary
from lib.sidecar.loader import load as load_sidecar
from main.options import APPS_DIR
from main.runner import process
from main.verify import byte_verify
from lib.tests.syms import local
from lib.tests.syms import local


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
# Resolved as a named library routine rather than a local branch target.
_NOW_GLOBALLY_NAMED = {0x4f87}  # aztec_stkover
_EXPECTED_LOCAL_TARGETS = (
    _PREVIOUS_LOCAL_TARGETS - _SHARED_OR_CROSS_FUNCTION_TARGETS
    - _NOW_GLOBALLY_NAMED
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
        project_dir = pathlib.Path(APPS_DIR) / 'DSAVANT'
        sidecar = load_sidecar('DSAVANT')
        sidecar_entry = sidecar_per_binary(sidecar, 'ds')
        with (patch('main.runner.write_report', return_value=''),
              patch('main.runner.write_layers', return_value=''),
              patch('main.runner.print_short_report'),
              contextlib.redirect_stdout(io.StringIO())):
            cls.bitmap, cls.label_map = process(
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
        # The name is content-derived now (``ds_loc_<TAG>``), so assert the
        # property this case is about: a *global* label (not an ``@..`` local),
        # addressable from another routine.
        wrong = {
            offset: self.label_map.get(offset)
            for offset in _SHARED_OR_CROSS_FUNCTION_TARGETS
            if not (isinstance(self.label_map.get(offset), str)
                    and not self.label_map[offset].startswith('@..'))
        }
        self.assertEqual(wrong, {})

    def test_shared_epilogue_label_uses_its_function_scope(self):
        self.assertEqual(
            self.local_labels.get(0x47fb), '@..aztec__free.l1',
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
                    all(value == IS_DATA
                        for value in self.bitmap[start:end + 1]),
                )

    def test_long_data_after_main_return_is_emitted_as_data(self):
        self.assertEqual(self.bitmap[0x2f34], IS_CODE)
        self.assertTrue(all(value == IS_DATA
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

    def test_named_function_roots_are_split_but_generic_loc_labels_are_not(self):
        output = pathlib.Path(self._output.name)
        master = (output / 'ds.asm').read_text()

        # A generic name carries its code's tag, not its address: find the
        # routine by where the master includes it.
        generic = re.findall(r'%include "(?:\w+/)+(\w+)\.asm"\s*; 0x3067\b',
                             master)
        self.assertEqual(len(generic), 1, generic)
        for function_name in ('main', generic[0]):
            with self.subTest(function=function_name):
                # A hand-only routine (``int``, port I/O...) is filed under
                # ``ds/asm_only/``; the split itself is what is under test.
                folder = next(
                    (d for d in ('ds', 'ds/asm_only')
                     if (output / d / f'{function_name}.asm').is_file()), None)
                self.assertIsNotNone(folder, function_name)
                self.assertIn(f'%include "{folder}/{function_name}.asm"', master)

        self.assertFalse((output / 'ds' / 'ds_loc_23ef.asm').exists())

    def test_stack_check_name_owns_its_call_target_prefix(self):
        output = pathlib.Path(self._output.name)
        master = (output / 'ds.asm').read_text()
        all_text = '\n'.join(
            path.read_text() for path in output.rglob('*.asm'))
        stack_include = (output / 'ds' / 'aztec_csav.asm').read_text()

        self.assertEqual(self.label_map.get(0x4652), 'aztec_csav')
        self.assertNotIn(0x4653, self.label_map)
        self.assertIn('%include "ds/aztec_csav.asm"', master)
        self.assertNotIn('leaf_loc_4652', master)
        self.assertFalse((output / 'ds' / 'leaf_loc_4652.asm').exists())
        self.assertNotIn('loc_4653:', stack_include)
        self.assertIn('call aztec_csav', all_text)
        self.assertTrue(stack_include.split('\n', 1)[1].startswith('aztec_csav:'))
        self.assertIn('pop bx                           ; 0x4652', stack_include)

    def test_stack_check_local_error_tail_is_in_function_include(self):
        output = pathlib.Path(self._output.name)
        master = (output / 'ds.asm').read_text()
        cret_include = (output / 'ds' / 'aztec_cret.asm').read_text()

        self.assertIn('%include "ds/aztec_cret.asm"', master)
        self.assertNotIn('@..aztec_csav.l2:', master)
        self.assertIn('@..aztec_csav.l2:', cret_include)
        self.assertIn('mov sp, bp                       ; 0x4676', cret_include)
        self.assertIn('jmp near aztec__stkover          ; 0x4678', cret_include)

    def test_sidecar_code_anchors_decode_as_code(self):
        code_starts = (0x0fdf, 0x3067, 0x30f7, 0x343e, 0x3490, 0x457c)
        for address in code_starts:
            with self.subTest(address=hex(address)):
                self.assertEqual(self.bitmap[address], IS_CODE)
                self.assertIn(address, self.label_map)

        self.assertEqual(self.bitmap[0x1033], IS_CODE)
        self.assertEqual(self.bitmap[0x30a2], IS_CODE)
        self.assertEqual(self.bitmap[0x348f], IS_CODE)
        self.assertEqual(self.bitmap[0x45aa], IS_CODE)

    def test_byte_verifier_uses_sidecar_data_boundaries(self):
        project_dir = pathlib.Path(APPS_DIR) / 'DSAVANT'
        sidecar = load_sidecar('DSAVANT')
        sidecar_entry = sidecar_per_binary(sidecar, 'ds')
        with contextlib.redirect_stdout(io.StringIO()):
            verified = byte_verify(
                'ds', str(project_dir), 'DS.EXE', self._output.name, 0x200,
                sidecar_entry=sidecar_entry,
            )
        self.assertTrue(verified)

    def test_shared_exit_helper_remains_global(self):
        asm_text = '\n'.join(
            path.read_text()
            for path in pathlib.Path(self._output.name).rglob('*.asm')
        )
        master = (pathlib.Path(self._output.name) / 'ds.asm').read_text()
        names = re.findall(r'%include "(?:\w+/)+(\w+)\.asm"\s*; 0x4e7e\b',
                           master)
        self.assertEqual(len(names), 1, names)
        name = names[0]
        self.assertEqual(name, 'aztec__exit')
        self.assertIn(f'{name}:', asm_text)
        self.assertEqual(asm_text.count(f'call {name}'), 3)


class OverrideLocalLabelTests(unittest.TestCase):
    """A C override's branches must name labels the override itself defines.

    ``_override_local_labels`` derives them from the bytes being emitted.  The
    disassembly's table names bytes of the *original* routine, and ``relink``
    only sees relocations -- the Aztec compiler resolves some short forward
    branches itself -- so neither is enough on its own; before this, the text
    named a disassembly label that override never defined and NASM failed the
    whole binary with ``symbol ... not defined`` (D7.2c-2e).
    """

    # 0x100: je +3 -> 0x105; 0x102: jmp +0 -> 0x104; 0x104/0x105: ret
    BYTES = bytes.fromhex('74 03 eb 00 c3 c3')
    START, END = 0x100, 0x106

    def _derive(self, local_labels=None, linked=None, taken=frozenset()):
        from lib.compare.coverrides import _override_local_labels
        return _override_local_labels(
            self.BYTES, self.START, self.END, {}, local_labels, linked, 'foo',
            set(taken))

    def test_a_target_relink_never_saw_still_gets_a_definition(self):
        names, records = self._derive()
        self.assertEqual(names, {0x104: '@..foo.l1', 0x105: '@..foo.l2'})
        self.assertEqual([(r['text'], r['offset']) for r in records],
                         [('@..foo.l1:', 0x104), ('@..foo.l2:', 0x105)])

    def test_the_disassembly_name_is_reused_and_defined_once(self):
        names, records = self._derive(local_labels={0x105: local('foo', 0x105, 9)},
                                      taken={0x104})
        # 0x105 keeps the disassembly's name; 0x104 is numbered after it, and
        # only the target with no label record yet is defined.
        self.assertEqual(names, {0x105: '@..foo.l9', 0x104: '@..foo.l10'})
        self.assertEqual([r['offset'] for r in records], [0x105])

    def test_relinks_own_name_wins_and_is_not_redefined(self):
        class _Linked:
            local_names = {0x104: local('foo', 0x104, 1)}
        names, records = self._derive(linked=_Linked(), taken={0x104})
        self.assertEqual(names[0x104], '@..foo.l1')
        self.assertNotIn(0x104, [r['offset'] for r in records])

    def test_a_global_target_is_left_to_the_label_map(self):
        from lib.compare.coverrides import _override_local_labels
        names, records = _override_local_labels(
            self.BYTES, self.START, self.END, {0x105: 'leaf_loc_ABCD'}, {},
            None, 'foo', set())
        self.assertNotIn(0x105, names)
        self.assertEqual([r['offset'] for r in records], [0x104])


if __name__ == '__main__':
    unittest.main()
