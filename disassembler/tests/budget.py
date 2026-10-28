"""Hard 100 ms budget: every test, and every class or module fixture.

Installed on import (:mod:`tests` imports it), so it holds under any runner
(``make test``, ``python3 -m unittest discover``, a dotted test name).  A step
that runs past :data:`BUDGET_MS` is interrupted with :class:`BudgetExceeded`
and reported as an error; there is no marker or opt-out.  Off the main thread,
or without ``SIGALRM``, the step is timed and failed afterwards instead.

``make test measure`` sets :data:`ENFORCE` false to time the suite without
aborting anything.
"""

import signal
import sys
import threading
import time
import unittest

BUDGET_MS = 75

#: False only while ``make test measure`` times the suite.
ENFORCE = True


class BudgetExceeded(Exception):
    pass


def _message(what):
    return (f'{what} took > {BUDGET_MS} ms: all tests must run faster than '
            f'{BUDGET_MS} ms (make it faster or delete it)')


def _can_alarm():
    return (hasattr(signal, 'setitimer')
            and threading.current_thread() is threading.main_thread())


def _budgeted(what, call):
    """Run *call* under the budget; raise :class:`BudgetExceeded` past it."""
    if not ENFORCE:
        return call()
    if not _can_alarm():
        began = time.perf_counter()
        out = call()
        if (time.perf_counter() - began) * 1000 > BUDGET_MS:
            raise BudgetExceeded(_message(what))
        return out

    def _alarm(signum, frame):
        raise BudgetExceeded(_message(what))

    previous = signal.signal(signal.SIGALRM, _alarm)
    signal.setitimer(signal.ITIMER_REAL, BUDGET_MS / 1000)
    try:
        return call()
    finally:
        signal.setitimer(signal.ITIMER_REAL, 0)
        signal.signal(signal.SIGALRM, previous)


def _test_run(run):
    def wrapper(self, result=None):
        try:
            return _budgeted(self.id(), lambda: run(self, result))
        except BudgetExceeded:
            # Fired outside the test's own try blocks (result bookkeeping).
            if result is None:
                raise
            result.addError(self, sys.exc_info())
            return result
    return wrapper


def _fixture(hook, describe):
    def wrapper(self, *args):
        return _budgeted(describe(*args), lambda: hook(self, *args))
    return wrapper


def _class_name(test, result):
    cls = type(test)
    return f'{cls.__module__}.{cls.__qualname__} class fixture'


def _module_name(test, result):
    return f'{type(test).__module__} module fixture'


def install():
    """Patch :mod:`unittest` once.  Fixture errors raised here are caught by
    the suite's own handling, which fails every test of that class/module."""
    if getattr(unittest.TestCase.run, '_budgeted', False):
        return
    suite = unittest.TestSuite
    unittest.TestCase.run = _test_run(unittest.TestCase.run)
    suite._handleClassSetUp = _fixture(suite._handleClassSetUp, _class_name)
    suite._handleModuleFixture = _fixture(suite._handleModuleFixture,
                                          _module_name)
    suite._tearDownPreviousClass = _fixture(
        suite._tearDownPreviousClass,
        lambda test, result: 'class teardown before ' + test.id()
        if isinstance(test, unittest.TestCase) else 'class teardown')
    unittest.TestCase.run._budgeted = True


install()
