"""Phase 4: segment-aware operand symbolization."""

import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_MEM

from lib.segments import SegmentModel
from lib.segdataflow import LOAD, DATA, PSP, UNKNOWN
from lib.compare.symbols import (
    _resolve_declared_immediates,
    _resolve_mem_symbols,
    _resolve_imm_symbols,
)
from lib.format import format_instruction


def _disasm(code_hex, base):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(bytes.fromhex(code_hex), base))


class _FakeFlow:
    """Minimal stand-in that maps a memory displacement to a space."""

    def __init__(self, spaces):
        self.spaces = spaces

    def effective_segment(self, insn, op):
        return ('ds', self.spaces[op.mem.disp & 0xFFFF])

    def space_of(self, address, reg):
        return None


def _model():
    return SegmentModel(
        kind='mz', file_size=0x3000, load_size=0x1000,
        cs_origin=0x200, data_origin=0x1000, cs_base=0, data_base=0xe00,
        bss_boundary=0x200, psp=True, entry_offset=0x200, header_size=0x200,
    )


class ResolveMemSymbolsTest(unittest.TestCase):
    def test_spaces_map_to_namespaces(self):
        # mov bx, [0x0002] | mov ax, [0x0100] | mov ax, [0x0400] | mov al, [cs:0x0050]
        insns = _disasm('8b1e0200' 'a10001' 'a10004' '2e8a065000', 0x200)
        self.assertEqual(len(insns), 4)
        flow = _FakeFlow({0x0002: PSP, 0x0100: DATA, 0x0400: DATA, 0x0050: LOAD})
        symbols, equ = _resolve_mem_symbols(insns, flow, _model(), {}, 0x200)

        self.assertEqual(symbols[(0x200, 1)], 'psp_top_of_memory')
        self.assertEqual(symbols[(0x204, 1)], 'dseg_0100')  # < bss_boundary
        self.assertEqual(symbols[(0x207, 1)], 'bss_0400')   # >= bss_boundary
        self.assertEqual(symbols[(0x20a, 1)], 'cseg_0250 - IMAGE_BASE')

        self.assertEqual(equ['psp_top_of_memory'], 0x0002)
        self.assertEqual(equ['bss_0400'], 0x0400)
        self.assertEqual(equ['cseg_0250'], 0x0250)

    def test_unknown_space_is_left_out(self):
        insns = _disasm('a10001', 0x200)
        symbols, equ = _resolve_mem_symbols(
            insns, _FakeFlow({0x0100: UNKNOWN}), _model(), {}, 0x200)
        self.assertEqual(symbols, {})
        self.assertEqual(equ, {})

    def test_reuses_existing_label_at_file_offset(self):
        insns = _disasm('2e8b065000', 0x200)
        symbols, equ = _resolve_mem_symbols(
            insns, _FakeFlow({0x0050: LOAD}), _model(),
            {0x250: 'string_loc_0250'}, 0x200)
        self.assertEqual(symbols[(0x200, 1)], 'string_loc_0250 - IMAGE_BASE')
        self.assertNotIn('cseg_0250', equ)


class ResolveIndexedSymbolsTest(unittest.TestCase):
    """An indexed DATA displacement binds only to a named object's start."""

    _FLOW = _FakeFlow({0x0400: DATA, 0x0500: DATA, 0x01a1: DATA})

    def _resolve(self, code_hex, segments=None, ds_starts=frozenset()):
        insns = _disasm(code_hex, 0x200)
        return _resolve_mem_symbols(insns, self._FLOW, segments or _model(),
                                    {}, 0x200, ds_starts=ds_starts)

    def test_binds_a_start_this_binary_names(self):
        # mov ax, [0x0400] | mov ax, [bx + 0x400]
        symbols, _ = self._resolve('a10004' '8b870004')
        self.assertEqual(symbols[(0x203, 1)], 'bss_0400')

    def test_a_field_offset_is_not_bound(self):
        # mov ax, [si + 0x1a1]: in the DS range, but no object starts there
        symbols, equ = self._resolve('8b84a101')
        self.assertEqual(symbols, {})
        self.assertEqual(equ, {})

    def test_frame_slot_and_cs_table_are_skipped(self):
        # mov ax, [0x0400] | mov ax, [bp + 0x400] | mov ax, [cs:bx + 0x400]
        symbols, _ = self._resolve('a10004' '8b860004' '2e8b870004')
        self.assertEqual(set(symbols), {(0x200, 1)})

    def test_binds_a_start_another_binary_names(self):
        # mov ax, [bx + 0x500], 0x500 named only in the union
        symbols, equ = self._resolve('8b870005', ds_starts={0x500})
        self.assertEqual(symbols[(0x200, 1)], 'bss_0500')
        self.assertEqual(equ['bss_0500'], 0x500)

    def test_overlay_ignores_union_starts_in_its_own_data(self):
        # Past ``o_dorg`` the offset names a different object in each overlay.
        class _Overlay:
            kind = 'overlay'
            overlay = {'o_dorg': 0x450}
            data_names = {}

            def data_space(self, offset):
                return 'bss'
        symbols, _ = self._resolve('8b870004' '8b870005', segments=_Overlay(),
                                   ds_starts={0x400, 0x500})
        self.assertEqual(set(symbols), {(0x200, 1)})


class ResolveImmSymbolsTest(unittest.TestCase):
    def test_immediate_pointer_via_dataflow(self):
        from lib.segdataflow import analyze
        # mov di, cs ; mov es, di ; mov di, 0x0100 ; scasb  (es=LOAD, di pointer)
        insns = _disasm('8ccf' '8ec7' 'bf0001' 'ae', 0x200)
        flow = analyze(insns, _model(), binary_data=bytes(0x3000))
        result = _resolve_imm_symbols(insns, flow, _model(), {}, {}, 0x200)
        self.assertEqual(result[(0x204, 1)], 'cseg_0300 - IMAGE_BASE')


class FormatOverrideTest(unittest.TestCase):
    def test_mem_override_is_rendered(self):
        insn = _disasm('8b1e0200', 0x200)[0]
        text = format_instruction(
            insn, {}, {}, mem_symbols={(0x200, 1): 'psp_top_of_memory'})
        self.assertEqual(text, 'mov bx, word [psp_top_of_memory]')

    def test_imm_override_is_rendered(self):
        insn = _disasm('bf0001', 0x200)[0]
        text = format_instruction(
            insn, {}, {}, mem_symbols={(0x200, 1): 'cseg_0300 - IMAGE_BASE'})
        self.assertEqual(text, 'mov di, cseg_0300 - IMAGE_BASE')


class DeclaredImmediateTests(unittest.TestCase):
    """Sidecar ``immediate_pointers``: a dead store of a table address."""

    _DRIVER = type('Seg', (), {'load_offset': 0x100, 'file_size': 0x2000,
                               'overlay': None})()

    def _resolve(self, code_hex, offset, **entry):
        insns = _disasm(code_hex, offset)
        mem_equ = {}
        result = _resolve_declared_immediates(
            insns, [{'offset': offset, **entry}], self._DRIVER, {}, mem_equ,
            0, owner='play')
        return result, mem_equ

    def test_a_declared_mov_is_a_code_segment_pointer(self):
        # mov di, 0x1a3a: a driver's CS 0x1a3a is file 0x193a.
        result, equ = self._resolve('bf3a1a', 0x65c, space='cs')
        self.assertEqual(result, {(0x65c, 1): 'cseg_193a - IMAGE_BASE'})
        self.assertEqual(list(equ.values()), [0x193a])

    def test_a_declared_loop_bound_is_a_code_segment_pointer(self):
        # cmp bx, 0xe3a: the end of a table the loop walks.
        result, _ = self._resolve('81fb3a0e', 0x72, space='cs')
        self.assertEqual(result, {(0x72, 1): 'cseg_0d3a - IMAGE_BASE'})

    def test_a_declaration_on_another_instruction_is_an_error(self):
        from lib.sidecar.errors import SidecarError
        with self.assertRaises(SidecarError):
            self._resolve('8bc3', 0x65c)            # mov ax, bx

    def test_a_value_outside_the_image_is_an_error(self):
        from lib.sidecar.errors import SidecarError
        with self.assertRaises(SidecarError):
            self._resolve('bf3a00', 0x65c)          # CS 0x003a: below the image


if __name__ == '__main__':
    unittest.main()
