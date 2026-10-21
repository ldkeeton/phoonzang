"""Shift-diff oracle (``lib/verify/shift_oracle.py``): sanity and ratchet.

The oracle assembles each master as is and with 16 bytes inserted, then
reports every literal operand or ``dw`` that should have moved and did not.
Unlike the regex census it reads the binaries, so a new spelling cannot hide
a frozen reference from it.
"""

import shutil
import tempfile
import unittest
from pathlib import Path

from tests.slow import slow
from lib.verify import shift_oracle

_TREE = shift_oracle.TREE

# Frozen literal references (``symbolic`` excluded) at 734d80e1.  Earlier trees,
# measured with the same oracle: 801b643f code 130 / data 982, 2d7d06c5 135 /
# 984.  The data count rose to 1207 at 4a0e0cdb only because that tree named
# far more DS objects (73 -> 1419 ``__zdseg_``/``__zbss_``/``__zobss_`` labels),
# so more literals equal a known object; the classes that do not depend on
# names (``moved`` + ``string``) stayed 951-953.  Code was 65 until displacements
# were judged by segment (an overlay DS displacement equal to a code label, a
# ``bp`` frame slot); every tree was re-measured then and data did not move.
# Data fell 1207 -> 545 when indexed DS displacements were bound to the named
# object they start (``[bx + bss_8482]``, ``symbols._resolve_indexed_symbols``).
# Data fell 545 -> 356 when a constant passed into an argument its routine
# reads memory through became a name (``lib.argpointers``; 856 sites, most of
# which the oracle had no evidence for).  Code rose 51 -> 57 from visibility:
# vmnpc's own data, now named, sits after its code at CS 0xff7a-0xffac, and six
# ``mov ax, 0xffac; call aztec_csav`` frame sizes equal those labels by chance
# (the oracle's constant-equals-a-label case, like ega's ``0x4000``).
# Code fell 57 -> 29 when the drivers' code-segment table addresses became
# names: a table start added to an index, ``lea``, a register handed to a
# routine that reads through it (``segdataflow.immediate_pointer_spaces``), and
# 17 reviewed ``immediate_pointers`` (loop bounds, frame-slot spills).  Every
# driver finding left is ega's EMS page size ``0x4000`` / count ``0x3a00``.
# A rise from new visibility is re-measured and explained here, not hidden.
# Data 356 -> 358: hand-written C now names its DS objects by their canonical
# symbols (``bss_8482``, not a bare ``0x8482``), so fill_action_slot_table's
# 4 literals went; the host now declares 0x01a4/0x01d4/0x6a1a, which exposes 6
# numbers equal to them by chance: the 420-byte record size passed to
# ``malloc``/``setmem`` (0x1a4) and message number 0x1d4.
# Code 29 -> 28, data 358 -> 369: every C relocation is now named (none is
# copied from the exe), so vinstall's ``cls_ = closall`` reads
# ``aztec_closall - IMAGE_BASE``.  The C now names ``bss_8322 + 1``/``+ 2`` and
# ``bss_6ac1 + 1``, which exposes the same 5 displacements in the
# sibling ``shared/api_idx_000e_VRIR.asm`` (counted in vmexe and vpops: 10),
# and ``dseg_0cf5`` (tty_wr's ``crbuf``) exposes vmexe's message number 0xcf5
# passed to ``ds_app_mem_TIMR``.
# Code 28 -> 26, data 369 -> 364 re-measured at bc4e46ac (names cleanup).
# Data 364 -> 262: the indexed pass runs after the immediates are named, so
# ``mov ax, bss_91ee`` elsewhere lets ``[bx - 0x6e12]`` read ``[bx + bss_91ee]``
# (any start this binary names, however proven).  Data 262 -> 151: a DS table
# start added to an index (``imul word [bp + 4]; add ax, 0x5bf4``) is the
# immediate spelling of ``[bx + 0x5bf4]`` and binds under the same proof
# (``symbols._resolve_index_offset_symbols``); ds's ``add ax, 0x110`` after a
# ``mul`` is its read buffer's end and now reads ``dseg_0110``.
BASELINE = {'code': 26, 'data': 151, 'branch': 0}


def _sites(result):
    return {(f[0].file, f[0].line) for f in result['frozen']
            if f[4] != 'symbolic'}


@slow
@unittest.skipUnless((_TREE / 'ds.asm').exists(),
                     'generated src_DSAVANT tree not present')
class ShiftOracleSanityTests(unittest.TestCase):
    def test_a_known_frozen_ds_address_is_reported(self):
        # ``mov si, 0x110`` names ``dseg_0110`` (ds.asm) as a number.
        r = shift_oracle.run('ds', 'data')
        self.assertIn(('ds/library/load_font_file.asm', 87), _sites(r))

    def test_binding_the_address_clears_the_report(self):
        with tempfile.TemporaryDirectory() as d:
            tree = Path(d) / 'src_DSAVANT'
            shutil.copytree(_TREE, tree, ignore=shutil.ignore_patterns(
                'build_out', '*.c', '*.o', '*.bin'))
            frag = tree / 'ds/library/load_font_file.asm'
            text = frag.read_text()
            self.assertIn('mov si, 0x110 ', text)
            frag.write_text(text.replace('mov si, 0x110 ',
                                         'mov si, file_param_word ', 1))
            r = shift_oracle.run('ds', 'data', tree=tree)
        self.assertNotIn(('ds/library/load_font_file.asm', 87), _sites(r))

    def test_a_displacement_counts_only_in_its_segment(self):
        # ``lea cx, [bp - 0x156]`` is a frame slot that equals a code label.
        r = shift_oracle.run('vmnpc', 'code')
        self.assertNotIn(('vmnpc/loc_MOVJ.asm', 151), _sites(r))
        # ``[bx - 0x6a7c]`` is overlay DS 0x9584; a code value equal to it moves
        # on a code insert, but a DS displacement does not.
        r = shift_oracle.run('vpclv', 'code')
        self.assertNotIn(('vpclv/api_idx_004c_UMGL.asm', 161), _sites(r))

    def test_an_indexed_ds_array_moves(self):
        # ``mov bx, word [bx + bss_8482]`` was ``[bx - 0x7b7e]``.
        r = shift_oracle.run('vmexe', 'data')
        self.assertNotIn(('shared/api_idx_000e_VRIR.asm', 10), _sites(r))

    def test_a_constant_passed_as_a_pointer_moves(self):
        # ``mov ax, 0xb74; push ax; call ...`` into an argument the callee
        # reads through: the string's address is now a name.
        r = shift_oracle.run('ds', 'data')
        self.assertNotIn(('ds/ds_app_file_QQMM.asm', 51), _sites(r))

    def test_a_driver_table_start_plus_an_index_moves(self):
        # ``mov bx, 0x13df; shl ax, 1; add bx, ax; mov dx, word [cs:bx]``.
        r = shift_oracle.run('play', 'code')
        self.assertNotIn(('play/leaf_loc_VSLO.asm', 6), _sites(r))
        self.assertEqual(r['frozen'], [])


@slow
@unittest.skipUnless(_TREE.is_dir(), 'generated src_DSAVANT tree not present')
class ShiftOracleBaselineTests(unittest.TestCase):
    def test_frozen_references_only_decrease(self):
        totals = {'code': 0, 'data': 0, 'branch': 0}
        for binary in shift_oracle.masters():
            for variant in ('code', 'data'):
                r = shift_oracle.run(binary, variant)
                if 'skip' in r:
                    continue
                for f in r['frozen']:
                    if f[4] == 'symbolic':
                        continue
                    totals[variant] += 1
                    totals['branch'] += f[4] == 'branch'
        for key, limit in BASELINE.items():
            self.assertLessEqual(
                totals[key], limit,
                f'shift oracle: {key} frozen rose to {totals[key]} '
                f'(baseline {limit}); run python3 -m lib.verify.shift_oracle '
                f'--list to see the sites')


if __name__ == '__main__':
    unittest.main()
