"""Code-pointer tables: a driver's IVT handler table is read with ``mov``.

A resident driver loads a mode-indexed handler offset with ``mov reg, word
[cs:base+disp]`` and stores it into the interrupt vector table, so the table
never sits behind a ``jmp`` and the indirect-table scan cannot see it.  The
recognizer keys on the *installer* (``xor ax,ax; mov es,ax; mov di,<vec>; mov
ax,<reg>; stosw``) so a plain data read through ``[cs:base+disp]`` is not
mistaken for a handler table.
"""

import pathlib
import struct
import tempfile
import unittest

import numpy as np

from lib.model import PhaseContext
from lib.phases.recursive import (
    _ivt_source_registers,
    _register_declared_code_table,
    _register_mov_code_tables,
)
from lib.segments import from_binary as build_segment_model
from tests.slow import slow

_PROJECT_ROOT = pathlib.Path(__file__).resolve().parents[2]
_PLAY = _PROJECT_ROOT / 'apps' / 'DSAVANT' / 'PLAY.DRV'
_TREE = _PROJECT_ROOT / 'src_DSAVANT'


def _driver_ctx(data):
    """A context whose LOAD space is ``CS:0x100`` (a raw driver)."""
    ctx = PhaseContext(bytes(data), start_offset=0, entry_points=[0])
    ctx.segments = build_segment_model(bytes(data), 'raw_drv', 0)
    return ctx


def _run_detector(ctx, data):
    n = len(data)
    boundary = np.full(n, np.inf, dtype=np.float32)
    result = np.zeros(n, dtype=np.float32)
    worklist = []
    _register_mov_code_tables(ctx, bytes(data), boundary, result,
                              None, worklist)
    return boundary, result, worklist


# A 3-entry table of runtime CS offsets and an IVT installer that stores DX
# into ``0000:0020``.  ``mov dx, word [cs:bx+0x0120]`` indexes the table at
# file 0x20.
def _synthetic_driver():
    img = bytearray(0x80)
    img[0x00:0x05] = bytes.fromhex('2e8b972001')   # mov dx,[cs:bx+0x120]
    # cld; xor ax,ax; mov es,ax; mov di,0x20; mov ax,dx; stosw; mov ax,cs; stosw
    img[0x10:0x1e] = bytes.fromhex('fc33c08ec0bf20008bc2ab8cc8ab')
    struct.pack_into('<3H', img, 0x20, 0x0140, 0x0150, 0x0160)
    for off in (0x40, 0x50, 0x60):
        img[off] = 0xC3
    return bytes(img)


class IvtSourceRegistersTests(unittest.TestCase):
    def test_installer_source_register_is_found(self):
        img = _synthetic_driver()
        self.assertEqual(_ivt_source_registers(img, 0, len(img)), {2})

    def test_an_ordinary_stosw_is_not_an_installer(self):
        # ``stosw`` with no zero-segment setup nearby.
        img = bytes.fromhex('8bc2ab') + bytes(32)
        self.assertEqual(_ivt_source_registers(img, 0, len(img)), set())


class MovCodeTableTests(unittest.TestCase):
    def test_detects_the_mov_form_table(self):
        img = _synthetic_driver()
        ctx = _driver_ctx(img)
        _, _, worklist = _run_detector(ctx, img)
        self.assertEqual([jt.table_addr for jt in ctx.jump_tables], [0x20])
        self.assertEqual(sorted(ctx.jump_tables[0].targets), [0x40, 0x50, 0x60])
        self.assertIn(0x40, ctx.code_targets)
        self.assertEqual(ctx.code_targets[0x40].reason, 'jt_target')

    def test_a_data_read_of_the_same_shape_is_ignored(self):
        img = bytearray(_synthetic_driver())
        # Read into AX instead of DX: the installer stores DX, so AX's table is
        # a data read and must not be registered.
        img[2] = 0x87                                # mov ax,[cs:bx+0x120]
        ctx = _driver_ctx(bytes(img))
        _run_detector(ctx, bytes(img))
        self.assertEqual(ctx.jump_tables, [])

    def test_real_play_tables_name_the_handlers(self):
        if not _PLAY.is_file():
            self.skipTest('needs apps/DSAVANT/PLAY.DRV')
        data = _PLAY.read_bytes()
        ctx = _driver_ctx(data)
        _run_detector(ctx, data)
        targets = set()
        for jt in ctx.jump_tables:
            targets |= set(jt.targets)
        self.assertEqual(
            targets, {0x841, 0x8AF, 0x975, 0x99F, 0xA41, 0x18E4},
        )


class DeclaredCodeTableTests(unittest.TestCase):
    def test_declared_table_seeds_hard_targets(self):
        img = _synthetic_driver()
        ctx = _driver_ctx(img)
        boundary = np.full(len(img), np.inf, dtype=np.float32)
        result = np.zeros(len(img), dtype=np.float32)
        worklist = []
        _register_declared_code_table(
            ctx, img, boundary, result, None, worklist,
            {'table': '20', 'entry_size': 2, 'count': 3},
        )
        self.assertEqual(sorted(ctx.jump_tables[0].targets), [0x40, 0x50, 0x60])
        self.assertTrue(all(ctx.code_targets[a].hard for a in (0x40, 0x50, 0x60)))
        self.assertEqual(ctx.code_targets[0x40].reason, 'code_table')
        # The table bytes are voted data so `cascade` cannot claim them.
        self.assertTrue(all(result[0x20:0x26] == -1.0))


    def test_declared_table_is_hard_data(self):
        """The words are data even where linear descent decodes them
        (``84 12`` is ``test [bp+si], dl``), so the span is hard data from
        the start, like ``force_data``."""
        img = _synthetic_driver()
        ctx = PhaseContext(img, start_offset=0, entry_points=[0],
                           sidecar_entry={'code_tables': [
                               {'table': '20', 'entry_size': 2, 'count': 3}]})
        self.assertTrue(ctx.hard_data[0x20:0x26].all())
        self.assertFalse(ctx.hard_data[0x26])


class SidecarCodeTableValidationTests(unittest.TestCase):
    def test_shipped_play_declaration_is_valid(self):
        from lib.sidecar.loader import load as load_sidecar
        from lib.sidecar.binary import per_binary
        sidecar = load_sidecar('DSAVANT')
        entry = per_binary(sidecar, 'play')
        self.assertTrue(entry['code_tables'])
        for table in entry['code_tables']:
            self.assertEqual(table['entry_size'], 2)
            self.assertIn('count', table)

    def test_bad_geometry_is_rejected(self):
        from lib.sidecar.jump_tables import _validate_code_tables
        from lib.sidecar.errors import SidecarError
        with self.assertRaises(SidecarError):
            _validate_code_tables([{'table': '20', 'entry_size': 3}], 't')


@slow
@unittest.skipUnless(_TREE.is_dir() and (_TREE / 'play.asm').exists(),
                     'generated src_DSAVANT tree not present')
class PlayBoundaryTreeTests(unittest.TestCase):
    """The committed tree must keep the handler boundaries this fixes."""

    def _play_ascii(self):
        return '\n'.join(
            p.read_text()
            for p in (_TREE / 'play.asm', *(_TREE / 'play').rglob('*.asm'))
        )

    def test_ivt_table_is_carved_as_data_with_case_labels(self):
        text = self._play_ascii()
        self.assertIn('jumptable_0495:', text)
        # A declared table is hard data, so no stale code name (once a dead
        # ``io_loc_0495 equ 0x0495``) survives on its first word.
        self.assertNotIn('io_loc_0495', (_TREE / 'play.asm').read_text())

    def test_handler_entries_decode_as_named_routines(self):
        # The table's targets (and the two extra entries the driver installs)
        # are real routine fragments, so the bytes are code rather than a `db`
        # blob glued into the master.
        text = self._play_ascii()
        for label, offset in (
            ('io_loc_UVLK_0841', '0x0841'), ('io_loc_TGPU', '0x08af'),
            ('io_loc_UVLK_0975', '0x0975'), ('io_loc_PNPV', '0x099f'),
            ('io_loc_HTKU', '0x0a41'), ('io_loc_KNIR', '0x18e4'),
        ):
            with self.subTest(handler=label):
                self.assertIn(f'{label}:', text)
                # The label's own line is followed by an instruction; the
                # offset comment on it is the handler address.
                self.assertRegex(
                    text, rf'{label}:\n\s+\S.*;\s*{offset}\b')



if __name__ == '__main__':
    unittest.main()
