"""ForceCodePhase must stop a function body at DOS exits."""

import unittest

import numpy as np
import polars as pl

from lib.model import PhaseContext
from lib.phases.forcecode import ForceCodePhase


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


if __name__ == '__main__':
    unittest.main()
