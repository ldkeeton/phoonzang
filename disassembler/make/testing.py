"""``make test`` — run the unit-test suite (``make test slow`` for the slow ones)."""

import os
import sys
import time
import unittest

from .common import ASM


SLOW_MS = 100


def _is_slow(test):
    method = getattr(test, test._testMethodName, None)
    return bool(getattr(type(test), 'slow', False)
                or getattr(method, 'slow', False))


def _flatten(suite):
    for item in suite:
        if isinstance(item, unittest.TestSuite):
            yield from _flatten(item)
        else:
            yield item


class _TimedSuite(unittest.TestSuite):
    """Suite that times class/module fixtures and splits them over the tests.

    setUpClass/setUpModule run outside startTest/addSuccess, so a test
    that only inspects a slow fixture would otherwise report ~0 ms.  Each
    test is charged an equal share of its class's and module's setup, so
    the per-test times add up to the real wall-clock total.
    """

    def __init__(self, tests=()):
        tests = list(_flatten(tests))
        super().__init__(tests)
        self._count = {}
        for t in tests:
            for key in (type(t), type(t).__module__):
                self._count[key] = self._count.get(key, 0) + 1

    def _timed(self, name, key, args):
        result = args[-1]
        began = time.perf_counter()
        try:
            return getattr(unittest.TestSuite, name)(self, *args)
        finally:
            ms = (time.perf_counter() - began) * 1000
            if key is None:
                result._teardown_ms += ms
            elif key not in result._setup_share:
                # Called per test; only the first call does the setup.
                result._setup_share[key] = ms / self._count[key]

    def _handleClassSetUp(self, test, result):
        return self._timed('_handleClassSetUp', type(test), (test, result))

    def _handleModuleFixture(self, test, result):
        return self._timed('_handleModuleFixture', type(test).__module__,
                           (test, result))

    def _tearDownPreviousClass(self, test, result):
        return self._timed('_tearDownPreviousClass', None, (test, result))

    def _handleModuleTearDown(self, result):
        return self._timed('_handleModuleTearDown', None, (result,))


class _TimedResult(unittest.TextTestResult):
    """Verbose result that appends each test's wall-clock duration in ms."""

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self._setup_share = {}
        self._teardown_ms = 0
        self._total_ms = 0

    def startTest(self, test):
        self._started = time.perf_counter()
        super().startTest(test)

    def _cost(self, test):
        ms = (time.perf_counter() - self._started) * 1000
        ms += self._setup_share.get(type(test), 0)
        ms += self._setup_share.get(type(test).__module__, 0)
        self._total_ms += ms
        return ms

    def addSuccess(self, test):
        ms = self._cost(test)
        if self.showAll:
            # Same output as TextTestResult.addSuccess, plus the timing.
            unittest.TestResult.addSuccess(self, test)
            flag = ('  <-- mark @slow'
                    if ms >= SLOW_MS and not _is_slow(test) else '')
            self.stream.writeln(f'ok ({ms:.0f} ms){flag}')
            self.stream.flush()
        else:
            super().addSuccess(test)

    def addFailure(self, test, err):
        self._cost(test)
        super().addFailure(test, err)

    def addError(self, test, err):
        self._cost(test)
        super().addError(test, err)

    def addSkip(self, test, reason):
        self._cost(test)
        super().addSkip(test, reason)


def run_tests(patterns):
    """Run the selected tests; return True if they all passed."""
    loader = unittest.TestLoader()
    if patterns == ['slow']:
        tests = [t for t in _flatten(loader.discover(
            os.path.join(ASM, 'tests'), top_level_dir=ASM)) if _is_slow(t)]
        suite = _TimedSuite(tests)
    elif patterns:
        suite = _TimedSuite(
            t for p in patterns
            for t in _flatten(loader.loadTestsFromName(p)))
    else:
        every = list(_flatten(loader.discover(
            os.path.join(ASM, 'tests'), top_level_dir=ASM)))
        tests = [t for t in every if not _is_slow(t)]
        suite = _TimedSuite(tests)
    result = unittest.TextTestRunner(
        verbosity=2, resultclass=_TimedResult).run(suite)
    if result._teardown_ms >= 1:
        print(f'fixture teardown (not in per-test times): '
              f'{result._teardown_ms:.0f} ms')
    print(f'sum of test times: {result._total_ms / 1000:.1f}s')
    return result.wasSuccessful()


def cmd_test(patterns):
    sys.exit(0 if run_tests(patterns) else 1)
