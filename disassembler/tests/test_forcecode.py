"""ForceCodePhase must stop a function body at DOS exits, and leave switch
cases alone."""

import unittest

import numpy as np
import polars as pl

from lib.model import PhaseContext
from lib.phases.forcecode import ForceCodePhase
from lib.symtab import Kind, Source, Symbol


def _ctx(data, name):
    ctx = PhaseContext(bytes(data), start_offset=0, entry_points=[0])
    ctx.add_layer(
        'recursive',
        pl.Series('recursive', np.zeros(len(data), dtype=np.float32)),
    )
    ctx.label_map = {0: name}
    return ctx


class ForceCodeDosExitTests(unittest.TestCase):
    def test_inline_data_after_exit_stays_data(self):
        text = b'MAZE SET ERROR.'
        data = bytearray(b'\xb8\x01\x4c\xcd\x21')  # mov ax,0x4c01; int 0x21
        data += text
        ctx = _ctx(data, 'dos_print_str')

        result = ForceCodePhase().run(None, ctx).to_numpy()

        self.assertTrue(all(result[i] > 0.5 for i in range(5)))
        self.assertTrue(all(result[5 + i] == 0.0 for i in range(len(text))))

    def test_int20_exit_also_terminates(self):
        data = bytearray(b'\xb8\x00\x00\xcd\x20') + b'DATADATA'
        ctx = _ctx(data, 'dos_terminate')

        result = ForceCodePhase().run(None, ctx).to_numpy()

        self.assertTrue(all(result[i] > 0.5 for i in range(5)))
        self.assertTrue(all(result[i] == 0.0 for i in range(5, len(data))))


class ForceCodeSwitchCaseTests(unittest.TestCase):
    # A 0x55 byte, a zero gap, then a body at 7 (play's ``jumptable_035e``
    # arm at 0x03dc sits after a 15-byte zero gap).
    DATA = b'\x55' + b'\x00' * 6 + b'\xc3'

    def _forced(self, label):
        ctx = _ctx(self.DATA, 'unused')
        ctx.label_map = {7: label}
        return ForceCodePhase().run(None, ctx).to_numpy()

    def test_a_function_label_scans_back_for_its_prologue(self):
        label = Symbol('io_loc_KXYZ', kind=Kind.ROUTINE, source=Source.TAG,
                       offset=7)
        result = self._forced(label)
        self.assertTrue(all(result[i] > 0.5 for i in range(7)))

    def test_a_switch_case_is_not_a_function_entry(self):
        label = Symbol('jumptable_0010_case_1', kind=Kind.ROUTINE,
                       source=Source.TAG, offset=7, role='case')
        result = self._forced(label)
        self.assertTrue(all(result[i] == 0.0 for i in range(len(self.DATA))))


if __name__ == '__main__':
    unittest.main()
