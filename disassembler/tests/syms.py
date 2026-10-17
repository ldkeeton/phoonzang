"""Symbols for test fixtures, built from their fields (``lib.symtab``)."""

from lib.symtab import Kind, Source, Space, Symbol
from lib.compare.records import _label_record


def routine(name, offset=None, source=Source.SIGNATURE):
    """A named routine (``aztec_open``)."""
    return Symbol(name, kind=Kind.ROUTINE, source=source, offset=offset)


def generated(base, offset, kind=Kind.ROUTINE):
    """An address-derived routine (``leaf_loc_0010``)."""
    return Symbol.generated(base, offset, kind)


def loc(offset):
    """A plain ``loc_<offset>`` label."""
    return Symbol.generated('loc', offset, Kind.LABEL)


def data(offset):
    """An unresolved ``data_<offset>`` label in the image."""
    return Symbol.data(Space.IMAGE, offset)


def dseg(offset):
    return Symbol.data(Space.DS, offset)


def bss(offset):
    return Symbol.data(Space.BSS, offset)


def cseg(offset):
    return Symbol.data(Space.CSEG, offset)


def psp(offset, name=None):
    return Symbol.data(Space.PSP, offset, name)


def local(owner, offset, number):
    """The routine-scoped label ``@..<owner>.l<number>``."""
    return Symbol.local(owner, offset, number)


def label(name, offset):
    """A ``label`` record; a plain string *name* is a named routine."""
    if not isinstance(name, Symbol):
        name = routine(name, offset)
    return _label_record(name, offset)
