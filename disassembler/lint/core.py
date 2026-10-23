"""The ``make lint`` rule registry.

A rule is a small class with three pieces:

* ``extensions`` — the source suffixes it applies to (``.c``, ``.s``, ...).
* ``check(text, path)`` — yield :class:`Finding` objects, no writes.
* ``fix(text, path)`` — return the rewritten text (the default is a no-op).

Rules are registered by importing the module at the bottom of this file and
applying :func:`register`.  Adding a rule is one module plus one import, with
no changes to the command wrapper in :mod:`make.lint`.
"""

from dataclasses import dataclass
import os


@dataclass(frozen=True)
class Finding:
    """One lint hit: a location, the rule that found it and a message."""

    path: str
    line: int
    col: int
    rule: str
    message: str
    fixable: bool = False


class Rule:
    """Base class for a lint rule."""

    name = ''
    extensions = ()
    #: Fix order, low first.  Rewrites run before the rules that format them.
    order = 100

    def check(self, text, path):
        return ()

    def fix(self, text, path):
        return text


_RULES = []


def register(rule_cls):
    """Register a :class:`Rule` class; returns it so it can be a decorator."""
    _RULES.append(rule_cls())
    _RULES.sort(key=lambda rule: (rule.order, rule.name))
    return rule_cls


def check_text(text, path):
    """Every finding for *text* at *path*, from the rules for its suffix."""
    extension = os.path.splitext(path)[1].lower()
    findings = []
    for rule in _RULES:
        if extension in rule.extensions:
            findings.extend(rule.check(text, path))
    return findings


def fix_text(text, path):
    """Apply every fixer for *path*'s suffix, in rule order."""
    extension = os.path.splitext(path)[1].lower()
    for rule in _RULES:
        if extension in rule.extensions:
            text = rule.fix(text, path)
    return text


def rules():
    """The registered rules, in fix order (useful to tests and callers)."""
    return tuple(_RULES)


# Importing a rule module registers it.  Keep this last: the modules import
# Rule/Finding/register from this one.
from . import asm_include, asm_indent, asm_macros, c_decimal  # noqa: E402,F401
