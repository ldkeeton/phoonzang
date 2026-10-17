"""Co-tenancy report tests (plan.md §7).

The report measures objects glued onto a routine's fragment: a fragment is cut at
*named* routines only, so an unnamed neighbour (a data blob, a bare ``loc_``
callee) is emitted inside the earlier routine's file.  Those objects are
mis-filed, and their address-derived names are what stops identical code sharing.
"""

import os
import pathlib
import tempfile
import unittest

from tests.slow import slow

from lib.compare import cotenancy
from lib.symtab import Symbol
from tests.syms import bss, cseg, dseg, loc, routine


_ASM_DIR = pathlib.Path(__file__).resolve().parents[1]
_TREE = _ASM_DIR.parent / 'src_DSAVANT'

#: Decrease-only baselines. so lets  The goal is 0: every label a fragment defines
#: besides its own root should be the fragment's own.  ``_split_off_foreign_
#: objects`` (plan.md §7) trims each fragment's trailing neighbours, which took
#: ``glued_files`` 361 -> 214 and ``outside`` 734 -> 254.  A rise is a correction
#: (more decoding reveals more labels) and must be re-measured, like
#: ``BASELINE_TOTALS``.
#:
#: D7.6b lowered them once more, 214/247/7 -> **211/243/7**, by classifying the
#: renderer's ``__z*`` *aliases* correctly: an alias is a label on a byte inside
#: whatever record spans it (``render.place_driver_immediates``), not an object
#: glued onto the fragment.  Four ``__zdata_start`` origins had been counted as
#: *code* co-tenants (their name is not in ``_DATA_PREFIXES``) and three
#: fragments whose only extra label was one of them were reported as glued.
#:
#: Byte-hash tags: ``code_outside`` 243 -> **213**.  A reference now resolves in
#: its own binary first (``cotenancy.resolve``); the old scan matched names
#: across the tree, so another binary's same-named label counted as a use.
#:
#: Ending the last root at the end of the code and giving the entry routine a
#: file (no bare code in the masters) revealed one more glued fragment: 211 -> **212**, and code that used to sit
#: bare in the masters now shows up in fragments: ``code_outside`` 213 -> **235**
#: (mostly switch arms split from their table, e.g. ``jumptable_436e_case_*``).
#:
#: Working tree (raw-driver load origin + cross-fragment exits): a driver's
#: stored code pointer is ``file + load_offset``, so the driver switch tables
#: inject their arms, and a branch target laid out inside another routine's
#: fragment is rooted rather than left as a ``@..owner.lN`` local.  Re-measured
#: 212/235/7 -> **244/267/10**; the goal is still 0.
COTENANCY_BASELINE = {'glued_files': 244, 'code_outside': 267, 'data_outside': 10}


def _write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        f.write(text)


def _syms(*symbols):
    """``{text: Symbol}`` for the fixture's labels."""
    return {str(sym): sym for sym in symbols}


class CoTenancyClassificationTests(unittest.TestCase):
    def test_label_kind(self):
        syms = _syms(cseg(0x1234), dseg(0x00ff), bss(0x830c), loc(0x1234))
        self.assertEqual(cotenancy.label_kind('cseg_1234', syms), 'data')
        self.assertEqual(cotenancy.label_kind('dseg_00ff', syms), 'data')
        self.assertEqual(cotenancy.label_kind('bss_830c', syms), 'data')
        self.assertEqual(cotenancy.label_kind('loc_1234', syms), 'code')
        self.assertEqual(cotenancy.label_kind('unknown', syms), 'code')

    def test_outside_reference_is_flagged(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            _write(os.path.join(d, 'a', 'r2.asm'),
                   '; auto-generated\nr2:\n    mov bx, cseg_0100\n    ret\n')
            report = cotenancy.scan(d, _syms(routine('r1'), routine('r2'),
                                             cseg(0x100)))
            self.assertEqual(report['glued_files'], 1)
            self.assertEqual(report['co_tenants'], 1)
            self.assertEqual(report['data']['outside'], 1)
            entry = report['entries'][0]
            self.assertEqual(entry['file'], 'a/r1.asm')
            self.assertEqual(entry['extra'][0]['name'], 'cseg_0100')
            self.assertEqual(entry['extra'][0]['reach'], 'outside')

    def test_inside_reference_is_not_outside(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    jmp short r1_tail\nr1_tail:\n    ret\n')
            report = cotenancy.scan(d, _syms(routine('r1')))
            self.assertEqual(report['glued_files'], 1)
            self.assertEqual(report['code']['outside'], 0)
            self.assertEqual(report['code']['inside'], 1)
            self.assertEqual(report['entries'][0]['extra'][0]['reach'], 'inside')

    def test_never_referenced_is_dead(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            report = cotenancy.scan(d, _syms(routine('r1'), cseg(0x100)))
            self.assertEqual(report['data']['dead'], 1)
            self.assertEqual(report['data']['outside'], 0)

    def test_clean_fragment_is_not_listed(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    mov ax, 1\n    ret\n')
            report = cotenancy.scan(d, _syms(routine('r1')))
            self.assertEqual(report['files'], 1)
            self.assertEqual(report['glued_files'], 0)
            self.assertEqual(report['co_tenants'], 0)

    def test_comments_are_not_references(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            _write(os.path.join(d, 'a', 'r2.asm'),
                   '; auto-generated\nr2:\n    ret ; cseg_0100\n')
            report = cotenancy.scan(d, _syms(routine('r1'), routine('r2'),
                                             cseg(0x100)))
            self.assertEqual(report['data']['dead'], 1)

    def test_renderer_alias_is_not_a_co_tenant(self):
        """A ``__z*`` alias names a byte inside the fragment, not an object.

        ``render.place_driver_immediates`` puts one on the byte a raw driver's
        named immediate refers to; it adds no bytes, so the fragment is not
        "the routine plus a neighbour".
        """
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\n__zdata_0100:\n'
                   '    times 4 db 0\n')
            report = cotenancy.scan(d, _syms(routine('r1'),
                                             Symbol.anchor('__zdata_0100', 0x100)))
            self.assertEqual(report['glued_files'], 0)
            self.assertEqual(report['co_tenants'], 0)

    def test_a_reference_resolves_in_its_own_binary_first(self):
        """The same content-tagged name in two binaries is two objects."""
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            _write(os.path.join(d, 'b', 'r2.asm'),
                   '; auto-generated\nr2:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            _write(os.path.join(d, 'b', 'r3.asm'),
                   '; auto-generated\nr3:\n    mov bx, cseg_0100\n    ret\n')
            report = cotenancy.scan(d, _syms(routine('r1'), routine('r2'),
                                             routine('r3'), cseg(0x100)))
            reach = {e['file']: e['extra'][0]['reach']
                     for e in report['entries']}
            # b/r3 means b's definition, so a's copy is not used from outside.
            self.assertEqual(reach['b/r2.asm'], 'outside')
            self.assertNotEqual(reach['a/r1.asm'], 'outside')


@slow
class CommittedTreeCoTenancyTests(unittest.TestCase):
    @unittest.skipUnless(_TREE.is_dir(), 'generated src_DSAVANT tree not present')
    def test_glue_only_falls(self):
        report = cotenancy.scan(str(_TREE))
        self.assertLessEqual(
            report['glued_files'], COTENANCY_BASELINE['glued_files'],
            f'glued fragments rose to {report["glued_files"]}',
        )
        self.assertLessEqual(
            report['code'].get('outside', 0), COTENANCY_BASELINE['code_outside'],
            f'outside-referenced code co-tenants rose to '
            f'{report["code"].get("outside", 0)}',
        )
        self.assertLessEqual(
            report['data'].get('outside', 0), COTENANCY_BASELINE['data_outside'],
            f'outside-referenced data co-tenants rose to '
            f'{report["data"].get("outside", 0)}',
        )


if __name__ == '__main__':
    unittest.main()
