"""Phase 4: segment-aware operand symbolization."""

import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_MEM

from lib.segments import SegmentModel
from lib.segdataflow import LOAD, DATA, PSP, UNKNOWN
from lib.compare.symbols import (
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


if __name__ == '__main__':
    unittest.main()
