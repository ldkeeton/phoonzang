import unittest

from lib.cross_ref import overlay_host_aliases
from lib.segments import SegmentModel


class _Op:
    def __init__(self, imm):
        self.type = 2  # CS_OP_IMM
        self.imm = imm


class _Insn:
    def __init__(self, mnemonic, imm):
        self.mnemonic = mnemonic
        self.operands = [_Op(imm)] if imm is not None else [_Op(0)]


def _overlay():
    host = SegmentModel(kind='mz', file_size=0x11000, cs_origin=0x200)
    overlay = {'o_corg': 0x5055, 'o_csize': 0x524b, 'o_dorg': 0x9098}
    return SegmentModel(
        kind='overlay', file_size=0x5341, cs_origin=14,
        overlay=overlay, host=host,
    )


class OverlayHostAliasesTest(unittest.TestCase):
    def setUp(self):
        self.foreign = {
            0x4266: 'ds_bios_mouse_loc_4266',
            0x0200: 'ds_app_malloc',
            0x23ef: 'ds_app_file_23ef',
        }

    def test_real_host_name_is_reused(self):
        insns = [_Insn('call', 0xf01f)]
        aliases = overlay_host_aliases(
            self.foreign, _overlay(), insns, 14, 0x5341, 'ds')
        self.assertEqual(aliases, {0xf01f: 'ds_bios_mouse_loc_4266'})

    def test_internal_target_is_skipped(self):
        insns = [_Insn('call', 0x1234)]
        aliases = overlay_host_aliases(
            self.foreign, _overlay(), insns, 14, 0x5341, 'ds')
        self.assertEqual(aliases, {})

    def test_unlabelled_host_target_falls_back(self):
        # 0x7fff -> host 0xd046, in host file but not in the label map.
        insns = [_Insn('call', 0x7fff)]
        aliases = overlay_host_aliases(
            self.foreign, _overlay(), insns, 14, 0x5341, 'ds')
        self.assertEqual(aliases, {0x7fff: 'ds_dispatch_7fff'})

    def test_non_overlay_is_unchanged(self):
        mz = SegmentModel(kind='mz', file_size=0x1000)
        self.assertIs(
            overlay_host_aliases(self.foreign, mz, [], 0, 0x1000, 'ds'),
            self.foreign,
        )


class HostCallTableTest(unittest.TestCase):
    """The one shared overlay-handle table (plan D7.1 step 1).

    Every overlay used to carry its own subset copy of the same names/values;
    the handle is one affine map of the host offset, so a single table serves
    them all, keyed by the source's exported labels.
    """

    def test_table_covers_every_label_at_the_inverse_handle(self):
        from lib.cross_ref import host_call_table
        labels = {0x0200: 'app_malloc', 0x4266: 'loc_4266'}
        self.assertEqual(
            host_call_table('ds', labels, _overlay()),
            {'ds_app_malloc': 0xafb9, 'ds_loc_4266': 0xf01f},
        )

    def test_non_overlay_model_has_no_table(self):
        from lib.cross_ref import host_call_table
        mz = SegmentModel(kind='mz', file_size=0x1000)
        self.assertIsNone(host_call_table('ds', {0x100: 'x'}, mz))

    def test_equ_table_is_deterministic(self):
        import os
        import tempfile
        from lib.cross_ref import write_equ_table
        with tempfile.TemporaryDirectory() as d:
            path = os.path.join(d, 'host_calls.inc')
            write_equ_table({'b_2': 0x2, 'a_1': 0x1}, path)
            with open(path) as f:
                self.assertEqual(f.read(), 'a_1 equ 0x0001\nb_2 equ 0x0002\n')


if __name__ == '__main__':
    unittest.main()
