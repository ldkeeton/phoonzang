"""Tests for segment-register dataflow (``lib.segdataflow``)."""

import os
import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_MEM

from lib.segments import from_binary
from lib.segdataflow import (DATA, LOAD, PSP, analyze,
                             immediate_pointer_spaces)

ASM = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PROJECT = os.path.dirname(ASM)

_MD = Cs(CS_ARCH_X86, CS_MODE_16)
_MD.detail = True


def _disasm(code, base):
    return list(_MD.disasm(code, base))


def _model(**kwargs):
    from lib.segments import SegmentModel
    defaults = dict(
        kind='mz', file_size=0x2000, load_size=0x1000,
        cs_origin=0x200, data_origin=0x1200, cs_base=0, data_base=0x1000,
        bss_boundary=0x100, psp=True, entry_offset=None,
        relocations=(), header_size=0x200,
    )
    defaults.update(kwargs)
    return SegmentModel(**defaults)


class SynthesisTest(unittest.TestCase):
    def test_nonzero_test_prunes_fallthrough(self):
        # mov bp, imm16 (relocated selector); test bp,bp; jne target;
        # mov bp, ds   <- unreachable; target: nop
        code = bytes.fromhex('bd0001' '85ed' '7502' '8cda' '90')
        # layout: 0x200 mov(3) 0x203 test(2) 0x205 jne(2) 0x207 mov(2) 0x209 nop
        model = _model(relocations=({'offset': 1, 'segment': 0},))
        insns = _disasm(code, 0x200)
        flow = analyze(insns, model, binary_data=bytes(0x2000),
                       function_roots={0x200})
        self.assertEqual(flow.space_of(0x205, 'bp'), DATA)
        # jne target is 0x209; the fallthrough 0x207 is pruned.
        self.assertNotIn(0x207, flow.states)
        self.assertIn(0x209, flow.states)
        self.assertEqual(flow.space_of(0x209, 'bp'), DATA)

    def test_register_selector_chain(self):
        # mov ax, cs; mov ds, ax; nop
        code = bytes.fromhex('8cc8' '8ed8' '90')
        model = _model()
        insns = _disasm(code, 0x200)
        flow = analyze(insns, model, binary_data=bytes(0x2000),
                       function_roots={0x200})
        self.assertEqual(flow.space_of(0x204, 'ds'), LOAD)

    def test_psp_written_selector_is_unknown(self):
        # mov es, word [0x2c]  (PSP env segment: an arbitrary selector)
        code = bytes.fromhex('8e062c00' '90')
        model = _model()
        insns = _disasm(code, 0x200)
        flow = analyze(insns, model, binary_data=bytes(0x2000),
                       function_roots={0x200})
        self.assertIsNone(flow.space_of(0x204, 'es'))

    def test_effective_segment_defaults(self):
        # mov ax, word [bx+2]  and  mov ax, word [bp+2]
        code = bytes.fromhex('8b4702' '8b4602')
        model = _model()
        insns = _disasm(code, 0x200)
        flow = analyze(insns, model, binary_data=bytes(0x2000),
                       function_roots={0x200})
        bx_mem = [o for i in insns if i.address == 0x200
                  for o in i.operands if o.type == CS_OP_MEM][0]
        bp_mem = [o for i in insns if i.address == 0x203
                  for o in i.operands if o.type == CS_OP_MEM][0]
        self.assertEqual(flow.effective_segment(insns[0], bx_mem), ('ds', DATA))
        self.assertEqual(flow.effective_segment(insns[1], bp_mem), ('ss', DATA))


class ImmediatePointerTest(unittest.TestCase):
    """``mov reg, imm16`` is a pointer when *reg* is next used as a base."""

    def _proven(self, code):
        insns = _disasm(bytes.fromhex(code), 0x200)
        flow = analyze(insns, _model(), binary_data=bytes(0x2000),
                       function_roots={0x200})
        return immediate_pointer_spaces(insns, flow)

    def test_cs_xlatb_proves_bx_a_code_segment_pointer(self):
        # mov bx, 0x1a3a; cs xlatb -- the table read has no listed operand.
        self.assertEqual(self._proven('bb3a1a' '2ed7'), {(0x200, 1): LOAD})

    def test_plain_xlatb_reads_through_ds(self):
        self.assertEqual(self._proven('bb3a1a' 'd7'), {(0x200, 1): DATA})

    def test_xlatb_proves_only_bx(self):
        self.assertEqual(self._proven('be3a1a' '2ed7'), {})

    def test_a_forward_jmp_is_followed(self):
        # mov bx, 0x1a3a; jmp +1; nop; mov [cs:bx], ah
        self.assertEqual(self._proven('bb3a1a' 'eb01' '90' '2e8827'),
                         {(0x200, 1): LOAD})

    def test_a_backward_jmp_ends_the_scan(self):
        # nop; mov bx, 0x1a3a; jmp 0x200 (back over the definition); [cs:bx]
        self.assertEqual(self._proven('90' 'bb3a1a' 'ebfa' '2e8827'), {})


class CallerStateTest(unittest.TestCase):
    """A root reached only by direct calls starts in its callers' state."""

    # 0x200 mov ax, cs; mov ds, ax; call 0x208; ret / 0x208 ret
    _CODE = '8cc8' '8ed8' 'e80100' 'c3' 'c3'

    def _flow(self, code, roots, entry_roots=()):
        insns = _disasm(bytes.fromhex(code), 0x200)
        return analyze(insns, _model(), binary_data=bytes(0x2000),
                       function_roots=roots, entry_roots=entry_roots)

    def test_callee_inherits_ds_equals_cs(self):
        flow = self._flow(self._CODE, {0x200, 0x208})
        self.assertEqual(flow.space_of(0x208, 'ds'), LOAD)

    def test_an_entry_root_keeps_the_convention(self):
        flow = self._flow(self._CODE, {0x200, 0x208}, entry_roots={0x208})
        self.assertEqual(flow.space_of(0x208, 'ds'), DATA)

    def test_callers_that_disagree_leave_ds_unknown(self):
        # 0x200 call 0x20b; mov ax, cs; mov ds, ax; call 0x20b; ret / 0x20b ret
        flow = self._flow('e80800' '8cc8' '8ed8' 'e80100' 'c3' 'c3',
                          {0x200, 0x20b})
        self.assertIsNone(flow.space_of(0x20b, 'ds'))


class RealAztecBeginTest(unittest.TestCase):
    def _ds(self):
        path = os.path.join(PROJECT, 'apps', 'DSAVANT', 'DS.EXE')
        if not os.path.isfile(path):
            self.skipTest('DS.EXE not available')
        with open(path, 'rb') as f:
            return f.read()

    def test_psp_to_data_transition(self):
        data = self._ds()
        model = from_binary(data, 'mz')
        entry = model.entry_offset
        insns = _disasm(data[entry:entry + 0x180], entry)
        flow = analyze(insns, model, binary_data=data,
                       function_roots={entry})
        # The startup reads PSP fields before reassigning DS.
        self.assertEqual(flow.space_of(0x4d48, 'ds'), PSP)   # [data_0002]
        self.assertEqual(flow.space_of(0x4df1, 'ds'), PSP)   # [data_002c]
        self.assertEqual(flow.space_of(0x4e0a, 'ds'), PSP)   # [data_0080]
        # bp receives the relocated DATA selector; ES/SS/DS follow it.
        self.assertEqual(flow.space_of(0x4d43, 'bp'), DATA)
        self.assertEqual(flow.space_of(0x4e24, 'es'), DATA)
        self.assertEqual(flow.space_of(0x4e65, 'ds'), DATA)

    def test_cs_override_is_load(self):
        data = self._ds()
        model = from_binary(data, 'mz')
        entry = model.entry_offset
        insns = _disasm(data[entry:entry + 0x180], entry)
        flow = analyze(insns, model, binary_data=data,
                       function_roots={entry})
        insn = next(i for i in insns if i.address == 0x4d43)
        mem = next(o for o in insn.operands if o.type == CS_OP_MEM)
        self.assertEqual(flow.effective_segment(insn, mem), ('cs', LOAD))


class OverlayIslandTest(unittest.TestCase):
    """Unreached overlay code gets the caller-convention segment state.

    Overlay switch arms are often promoted to code after the first decode, so
    the dataflow walk never reaches them.  Their DS is still the host data
    segment, so they must resolve rather than fall back to ``data_``.
    """

    def test_unreached_island_seeded_for_overlay(self):
        # 0x200 jmp 0x205 ; 0x202 mov ax, [0x300] (unreachable) ; 0x205 nop
        code = bytes.fromhex('eb03' 'a10003' '90')
        model = _model(kind='overlay', psp=False, header_size=14)
        insns = _disasm(code, 0x200)
        flow = analyze(insns, model, binary_data=bytes(0x2000),
                       function_roots={0x200})
        self.assertEqual(flow.space_of(0x202, 'ds'), DATA)

    def test_unreached_island_left_unseeded_for_mz(self):
        code = bytes.fromhex('eb03' 'a10003' '90')
        model = _model()
        insns = _disasm(code, 0x200)
        flow = analyze(insns, model, binary_data=bytes(0x2000),
                       function_roots={0x200})
        self.assertNotIn(0x202, flow.states)


if __name__ == '__main__':
    unittest.main()
