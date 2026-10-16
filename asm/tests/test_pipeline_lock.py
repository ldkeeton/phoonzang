"""``.cache/_flow/pipeline.lock`` guards the pipeline's shape (see ``flow/lock.py``).

Adding a stage, removing one, or changing its kind changes the lock, so the
change is reviewed.  A repair/recompute/cleanup stage must say what it repairs
and why.  The ledger half (undeclared rewrites may only shrink) needs a build's
ledgers and runs when ``.cache/<project>/stages`` exists.  The lock is local
to ``make flow`` (``python3 -m flow.generate --lock``), so these skip without it.
Run: ``make test`` from ``asm/``.
"""

import os
import unittest

from flow import graph_stages, lock
from lib.cachedirs import list_cached_projects


class PipelineLockTests(unittest.TestCase):
    def test_stages_are_well_formed(self):
        _, problems = lock.scan()
        self.assertEqual(problems, [])

    def _read_lock(self):
        if not os.path.exists(lock.LOCK_PATH):
            self.skipTest('no pipeline.lock: run `make flow ARGS=--lock`')
        return lock.read()

    def test_lock_matches_source(self):
        found, _ = lock.scan()
        locked, _ = self._read_lock()
        self.assertEqual(
            lock.diff(found, locked), [],
            'pipeline stages changed -- justify the change, then run '
            '`python3 -m flow.generate --lock`')

    def test_undeclared_rewrites_only_shrink(self):
        _, allowed = self._read_lock()
        seen = False
        for project in list_cached_projects():
            ledgers = graph_stages.load(project)
            if not ledgers:
                continue
            seen = True
            rows = graph_stages.aggregate(ledgers)
            new = sorted(set(graph_stages.findings(rows)['undeclared']) - set(allowed))
            self.assertEqual(
                new, [],
                f'{project}: a produce stage rewrote another stage\'s output; '
                f'declare it (kind=repair/recompute, repairs=, why=) or extend '
                f'the stage it rewrites')
        if not seen:
            self.skipTest('no stage ledgers: run `WIZ_STAGELOG=1 make build <project>` first')


if __name__ == '__main__':
    unittest.main()
