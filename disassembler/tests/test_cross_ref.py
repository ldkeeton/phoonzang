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


if __name__ == '__main__':
    unittest.main()
