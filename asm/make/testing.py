"""``make test`` — run the unit-test suite."""

import os
import sys

from .common import ASM


def cmd_test(patterns):
    import unittest
    loader = unittest.TestLoader()
    if patterns:
        suite = unittest.TestSuite(
            loader.loadTestsFromName(p) for p in patterns)
    else:
        suite = loader.discover(
            os.path.join(ASM, 'tests'), top_level_dir=ASM)
    result = unittest.TextTestRunner(verbosity=2).run(suite)
    sys.exit(0 if result.wasSuccessful() else 1)
