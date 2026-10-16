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

from lib.compare import cotenancy


_ASM_DIR = pathlib.Path(__file__).resolve().parents[2]
_TREE = _ASM_DIR.parent / 'asm_DSAVANT'

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
COTENANCY_BASELINE = {'glued_files': 211, 'code_outside': 243, 'data_outside': 7}


def _write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        f.write(text)


class CoTenancyClassificationTests(unittest.TestCase):
    def test_label_kind(self):
        self.assertEqual(cotenancy.label_kind('cseg_1234'), 'data')
        self.assertEqual(cotenancy.label_kind('dseg_00ff'), 'data')
        self.assertEqual(cotenancy.label_kind('bss_830c'), 'data')
        self.assertEqual(cotenancy.label_kind('loc_1234'), 'code')
        self.assertEqual(cotenancy.label_kind('leaf_loc_ABCD'), 'code')

    def test_outside_reference_is_flagged(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            _write(os.path.join(d, 'a', 'r2.asm'),
                   '; auto-generated\nr2:\n    mov bx, cseg_0100\n    ret\n')
            report = cotenancy.scan(d)
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
            report = cotenancy.scan(d)
            self.assertEqual(report['glued_files'], 1)
            self.assertEqual(report['code']['outside'], 0)
            self.assertEqual(report['code']['inside'], 1)
            self.assertEqual(report['entries'][0]['extra'][0]['reach'], 'inside')

    def test_never_referenced_is_dead(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            report = cotenancy.scan(d)
            self.assertEqual(report['data']['dead'], 1)
            self.assertEqual(report['data']['outside'], 0)

    def test_clean_fragment_is_not_listed(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    mov ax, 1\n    ret\n')
            report = cotenancy.scan(d)
            self.assertEqual(report['files'], 1)
            self.assertEqual(report['glued_files'], 0)
            self.assertEqual(report['co_tenants'], 0)

    def test_comments_are_not_references(self):
        with tempfile.TemporaryDirectory() as d:
            _write(os.path.join(d, 'a', 'r1.asm'),
                   '; auto-generated\nr1:\n    ret\ncseg_0100:\n    times 4 db 0\n')
            _write(os.path.join(d, 'a', 'r2.asm'),
                   '; auto-generated\nr2:\n    ret ; cseg_0100\n')
            report = cotenancy.scan(d)
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
            report = cotenancy.scan(d)
            self.assertEqual(report['glued_files'], 0)
            self.assertEqual(report['co_tenants'], 0)


class CommittedTreeCoTenancyTests(unittest.TestCase):
    @unittest.skipUnless(_TREE.is_dir(), 'generated asm_DSAVANT tree not present')
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
