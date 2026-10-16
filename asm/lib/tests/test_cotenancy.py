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
#:
#: Byte-hash tags: ``code_outside`` 243 -> **213**.  A reference now resolves in
#: its own binary first (``cotenancy.resolve``); the old scan matched names
#: across the tree, so another binary's same-named label counted as a use.
COTENANCY_BASELINE = {'glued_files': 211, 'code_outside': 213, 'data_outside': 7}


def _write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        f.write(text)


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
