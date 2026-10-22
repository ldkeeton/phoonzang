import unittest

import numpy as np
import polars as pl

from lib.model import PhaseContext
from lib.phases.error import ErrorHandlerPhase, _print_prologue_start

_PRINT_EXIT = bytes((0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21))


def _stub(prologue, msg):
    """ret; <prologue> mov dx, msg; print-and-exit."""
    return b'\xc3' + prologue + b'\xba' + msg.to_bytes(2, 'little') + _PRINT_EXIT


class ErrorHandlerStartTests(unittest.TestCase):
    def _seeds(self, data, sidecar_entry=None):
        ctx = PhaseContext(data, sidecar_entry=sidecar_entry)
        ctx.add_layer('seed', pl.Series('seed', np.zeros(len(data), dtype=np.float32)))
        ErrorHandlerPhase().run(None, ctx)
        return [s.address for s in ctx.seeds if s.source_phase == 'error_handler']

    def test_prologue_found_whatever_the_message_address(self):
        # High bytes 0x41 (inc cx) and 0x0e (push cs) used to derail the walk back.
        for prologue in (b'\x8c\xc8\x8e\xd8', b'\x8c\xcb\x8e\xdb'):
            for msg in (0x41dd, 0x0e2e, 0x451e):
                with self.subTest(prologue=prologue.hex(), msg=hex(msg)):
                    data = _stub(prologue, msg)
                    self.assertEqual(_print_prologue_start(data, 8), 1)
                    self.assertEqual(self._seeds(data), [1])

    def test_mismatched_registers_are_not_a_prologue(self):
        # mov ax, cs; mov ds, bx
        self.assertIsNone(_print_prologue_start(_stub(b'\x8c\xc8\x8e\xdb', 0x41dd), 8))

    def test_sidecar_routine_at_the_print_keeps_its_entry(self):
        data = _stub(b'\x8c\xcb\x8e\xdb', 0x3b18)
        seeds = self._seeds(data, {'function_names': {'0008': {'name': 'print_msg_and_exit'}}})
        self.assertNotIn(1, seeds)


if __name__ == '__main__':
    unittest.main()
