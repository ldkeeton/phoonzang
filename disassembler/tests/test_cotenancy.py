"""Co-tenancy report tests (plan.md §7).

The report measures objects glued onto a routine's fragment: a fragment is cut at
*named* routines only, so an unnamed neighbour (a data blob, a bare ``loc_``
callee) is emitted inside the earlier routine's file.  Those objects are
mis-filed, and their address-derived names are what stops identical code sharing.
"""

import os
import tempfile
import unittest


from lib.compare import cotenancy
from lib.symtab import Symbol
from tests.syms import bss, cseg, dseg, loc, routine


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


if __name__ == '__main__':
    unittest.main()
