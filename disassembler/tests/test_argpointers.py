"""``lib.argpointers``: a constant passed into an argument read as a pointer."""

import struct
import unittest

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.argpointers import argument_pointer_immediates
from lib.segdataflow import DATA


class _AllData:
    """Every memory operand and segment register addresses DS."""

    def effective_segment(self, insn, op):
        return ('ds', DATA)

    def space_of(self, address, reg):
        return DATA


def _disasm(code, base=0x100):
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    return list(md.disasm(code, base))


def _call(at, target):
    return b'\xe8' + struct.pack('<h', target - (at + 3))


_FRAME = bytes.fromhex('5589e5')          # push bp; mov bp, sp
_RET = bytes.fromhex('5dc3')              # pop bp; ret


def _program(callee_body, caller):
    """A callee at 0x100 and *caller(at)* bytes right after it."""
    callee = _FRAME + callee_body + _RET
    at = 0x100 + len(callee)
    return _disasm(callee + caller(at)), at


def _proven(insns, **kw):
    proven, _ = argument_pointer_immediates(insns, _AllData(), **kw)
    return proven


class ArgumentPointerTests(unittest.TestCase):
    _READS_ARG0 = bytes.fromhex('8b5e04' '8a07')     # mov bx,[bp+4]; mov al,[bx]

    def test_a_constant_into_a_read_argument_is_an_address(self):
        insns, at = _program(self._READS_ARG0, lambda at: (
            bytes.fromhex('b83016' '50') + _call(at + 4, 0x100)))
        self.assertEqual(_proven(insns), {(at, 1): DATA})

    def test_an_argument_used_as_a_number_proves_nothing(self):
        body = bytes.fromhex('8b4604' '050100')     # mov ax,[bp+4]; add ax,1
        insns, _ = _program(body, lambda at: (
            bytes.fromhex('b83016' '50') + _call(at + 4, 0x100)))
        self.assertEqual(_proven(insns), {})

    def test_a_table_index_is_not_a_pointer(self):
        body = bytes.fromhex('8b5e04' '8a87085c')   # mov al,[bx+0x5c08]
        insns, _ = _program(body, lambda at: (
            bytes.fromhex('b83016' '50') + _call(at + 4, 0x100)))
        self.assertEqual(_proven(insns), {})

    def test_only_the_read_slot_is_proven(self):
        # f(0x200, 0x1630): 0x1630 is pushed first, so it is argument 1.
        insns, at = _program(self._READS_ARG0, lambda at: (
            bytes.fromhex('b83016' '50' 'b80002' '50') + _call(at + 8, 0x100)))
        self.assertEqual(_proven(insns), {(at + 4, 1): DATA})

    def test_a_small_constant_is_left_a_number(self):
        insns, _ = _program(self._READS_ARG0, lambda at: (
            bytes.fromhex('b82000' '50') + _call(at + 4, 0x100)))
        self.assertEqual(_proven(insns), {})

    def test_an_intervening_call_breaks_the_match(self):
        # The push before another call belongs to that call's arguments.
        insns, _ = _program(self._READS_ARG0, lambda at: (
            bytes.fromhex('b83016' '50') + _call(at + 4, 0x400)
            + _call(at + 7, 0x100)))
        self.assertEqual(_proven(insns), {})

    def test_an_argument_handed_on_is_a_pointer_too(self):
        # g(p) { f(p); } -- g's argument reaches f's read argument.
        f = _FRAME + self._READS_ARG0 + _RET            # 0x100 .. 0x109
        g_at = 0x100 + len(f)
        g_body = bytes.fromhex('ff7604') + _call(g_at + 6, 0x100) + b'\x59'
        g = _FRAME + g_body + _RET
        at = g_at + len(g)
        code = f + g + bytes.fromhex('b83016' '50') + _call(at + 4, g_at)
        self.assertEqual(_proven(_disasm(code)), {(at, 1): DATA})

    def test_a_library_routine_passes_its_buffer_to_dos(self):
        # write(1, 0x1630, n): ``aztec_write`` reads no byte of the buffer.
        code = bytes.fromhex('b80500' '50' 'b83016' '50' 'b80100' '50')
        insns = _disasm(code + _call(0x100 + len(code), 0x500))
        names = {0x500: 'aztec_write'}
        self.assertEqual(_proven(insns, name_of=names.get), {(0x104, 1): DATA})


    def test_a_declared_thunk_argument_is_a_pointer(self):
        # f(p) hands its frame to a driver: ``call far [0x2f8f]``, no read.
        f = _FRAME + bytes.fromhex('ff1e8f2f') + _RET    # 0x100 .. 0x109
        g_at = 0x100 + len(f)
        g_body = bytes.fromhex('ff7604') + _call(g_at + 6, 0x100) + b'\x59'
        g = _FRAME + g_body + _RET
        at = g_at + len(g)
        code = f + g + bytes.fromhex('b8fe59' '50') + _call(at + 4, g_at)
        self.assertEqual(_proven(_disasm(code)), {})
        self.assertEqual(_proven(_disasm(code), declared={0x100: {0}}),
                         {(at, 1): DATA})

    def test_the_offset_of_a_ds_far_pointer_is_an_address(self):
        # memmove(DS:0x8b7e, ...): ``push ds; mov ax, 0x8b7e; push ax``.
        code = bytes.fromhex('1e' 'b87e8b' '50')
        insns = _disasm(code + _call(0x100 + len(code), 0x500))
        self.assertEqual(_proven(insns), {(0x101, 1): DATA})

    def test_a_segment_copied_through_a_register_pairs_too(self):
        # mov dx, ds; push dx; mov ax, 0x8b7e; push ax
        code = bytes.fromhex('8cda' '52' 'b87e8b' '50')
        insns = _disasm(code + _call(0x100 + len(code), 0x500))
        self.assertEqual(_proven(insns), {(0x103, 1): DATA})

    def test_a_constant_beside_a_number_is_no_far_offset(self):
        # f(0x8b7e, 5): the word pushed before the constant is not a segment.
        code = bytes.fromhex('b80500' '50' 'b87e8b' '50')
        insns = _disasm(code + _call(0x100 + len(code), 0x500))
        self.assertEqual(_proven(insns), {})


class FrameLocalTests(unittest.TestCase):
    """``[bx + si]`` with a provable index, and arguments kept in locals."""

    @staticmethod
    def _arg0(body):
        insns, at = _program(bytes.fromhex(body), lambda at: (
            bytes.fromhex('b83016' '50') + _call(at + 4, 0x100)))
        return _proven(insns), at

    def test_an_argument_kept_in_a_local_and_stepped(self):
        # mov si,[bp+4]; mov [bp-2],si; mov si,[bp-2]; add word [bp-2],1; lodsb
        proven, at = self._arg0('8b7604' '8976fe' '8b76fe' '8346fe01' 'ac')
        self.assertEqual(proven, {(at, 1): DATA})

    def test_a_local_also_set_from_a_constant_is_no_alias(self):
        # ... plus mov word [bp-2], 0x200: the local is not only the argument
        proven, _ = self._arg0('8b7604' '8976fe' 'c746fe0002' '8b76fe' 'ac')
        self.assertEqual(proven, {})

    def test_a_loop_counter_is_the_index(self):
        # mov word [bp-2],0; mov bx,[bp+4]; mov si,[bp-2]; cmp byte [bx+si],0;
        # inc word [bp-2]
        proven, at = self._arg0('c746fe0000' '8b5e04' '8b76fe' '803800'
                                'ff46fe')
        self.assertEqual(proven, {(at, 1): DATA})

    def test_a_shifted_argument_is_the_index(self):
        # set_bitmap_bit: mov si,[bp+4]; mov bx,[bp+6]; mov cl,3; shr bx,cl;
        # and byte [bx+si], ah -- arg 0 is the pointer, arg 1 the bit number
        body = bytes.fromhex('8b7604' '8b5e06' 'b103' 'd3eb' '2020')
        insns, at = _program(body, lambda at: (
            bytes.fromhex('b80005' '50' 'b83016' '50') + _call(at + 8, 0x100)))
        self.assertEqual(_proven(insns), {(at + 4, 1): DATA})

    def test_a_labelled_routine_nobody_here_calls_is_analysed(self):
        # The host's set_bitmap_bit is called only by the overlays: its
        # pointer argument is still found, for export.
        from lib.argpointers import pointer_params
        body = bytes.fromhex('8b7604' '8b5e06' 'b103' 'd3eb' '2020')
        insns = _disasm(_FRAME + body + _RET)
        self.assertEqual(pointer_params(insns, _AllData()), {})
        self.assertEqual(pointer_params(insns, _AllData(), labels={0x100}),
                         {0x100: frozenset((0,))})

    def test_two_unknown_registers_prove_nothing(self):
        # mov bx,[bp+4]; mov si,[bp+6]; mov al,[bx+si]
        proven, _ = self._arg0('8b5e04' '8b7606' '8a00')
        self.assertEqual(proven, {})

    def test_a_local_whose_address_is_taken_is_no_counter(self):
        # lea di,[bp-2] lets a write through di change the counter unseen
        proven, _ = self._arg0('8d7efe' 'c746fe0000' '8b5e04' '8b76fe'
                               '803800')
        self.assertEqual(proven, {})


if __name__ == '__main__':
    unittest.main()
