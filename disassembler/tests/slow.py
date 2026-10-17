"""``@slow`` marks tests that take >= 100 ms; ``make test`` skips them.

Run them with ``make test slow``.  Works on a test class (covers its
``setUpClass``) or a single test method.
"""


def slow(obj):
    obj.slow = True
    return obj
