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


if __name__ == '__main__':
    unittest.main()
