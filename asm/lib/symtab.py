"""Symbols: what a label *is*, kept beside its name instead of inside it.

The pipeline used to mint a name (``leaf_loc_10108``, ``loc_HSKI``) and later
parse the prefix, tail or tag back out of it to decide what the label was.  A
:class:`Symbol` is the name together with those facts.  It is a ``str`` -- the
text the assembly spells -- so the stages that only print names need no change,
while the stages that *decide* read :attr:`Symbol.kind`, :attr:`Symbol.source`
and the rest.

A generated name is formatted here, once, from its fields; nothing parses it.
"""

import enum


class Space(enum.Enum):
    """Where the offset lives."""
    IMAGE = 'image'   # a file offset in the binary
    CSEG = 'cseg'     # a file offset reached as data through CS
    DS = 'ds'         # a file-backed data-segment offset
    BSS = 'bss'       # a data-segment offset past the file-backed data
    PSP = 'psp'       # a field of the program segment prefix
    ABS = 'abs'       # an absolute address outside it (``es:0x0410``, the BIOS)


class Kind(enum.Enum):
    """What the label marks."""
    ROUTINE = 'routine'   # a function entry: a root of its own fragment
    LABEL = 'label'       # a plain ``loc_`` branch/call target inside a body
    LOCAL = 'local'       # a branch target scoped to one routine (``@..<owner>.l1``)
    TABLE = 'table'       # a jump table (``jumptable_<offset>``)
    DATA = 'data'         # a data byte in the image
    ANCHOR = 'anchor'     # the renderer's name for a byte an expression is
                          # written over (``__zstr_0c80``, ``__zdata_start``)


class Source(enum.IntEnum):
    """Who chose the name, least to most authoritative."""
    ADDRESS = 1     # derived from the address (``loc_08f2``)
    TAG = 2         # an address-derived name renamed to its content tag
    FIXED = 3       # a fixed fallback (``entry_point``)
    SIGNATURE = 4   # a known-routine signature (``aztec_strlen``)
    LIBRARY = 5     # the runtime library's own public name (``errno``)
    SIDECAR = 6     # the project's sidecar


#: Names the pipeline derives from the address or the code itself.
GENERIC = (Source.ADDRESS, Source.TAG)

#: NASM's spelling of a label scoped to a routine (``@..<owner>.<name>``).
LOCAL_PREFIX = '@..'


class Symbol(str):
    """A label name and what it names.

    *offset* is the file offset the label marks.  *base* is the family a
    generated name is formatted from (``loc``, ``leaf_loc``, ``app_file``,
    ``api_idx_000e``); *tag* is its content tag once :func:`lib.names.tag_generics`
    has run; *prefix* is the host's name prefix (``ds_``); *role* is what the
    routine does, as far as categorizing found (``leaf``, ``dos_file``,
    ``api_stub``).  *owner* is the routine a :attr:`Kind.LOCAL` label is scoped
    to, and *index* its number there when it has no other name.  *library* is
    the runtime-library public a ``role='aztec'`` routine or datum is (its OMF
    spelling, ``errno_``).
    """

    def __new__(cls, text, *, kind, source, offset=None, base=None, tag=None,
                prefix='', role=None, space=Space.IMAGE, owner=None,
                index=None, library=None):
        self = super().__new__(cls, text)
        self.space = space
        self.kind = kind
        self.source = source
        self.offset = offset
        self.base = base
        self.tag = tag
        self.prefix = prefix
        self.role = role
        self.owner = owner
        self.index = index
        self.library = library
        return self

    def __reduce__(self):
        return (_rebuild, (str(self), self.__dict__))

    @classmethod
    def generated(cls, base, offset, kind, *, role=None, prefix='', text=None,
                  space=Space.IMAGE):
        """The address-derived name ``<prefix><base>_<offset>``."""
        return cls(text or f'{prefix}{base}_{offset:04x}', kind=kind,
                   source=Source.ADDRESS, offset=offset, base=base,
                   prefix=prefix, role=role, space=space)

    @classmethod
    def data(cls, space, offset, name=None):
        """A data symbol in *space*: *name* if one is known, else generated."""
        if name:
            return cls(name, kind=Kind.DATA, source=Source.FIXED,
                       offset=offset, space=space)
        return cls.generated(_DATA_BASE[space], offset, Kind.DATA, space=space)

    @classmethod
    def local(cls, owner, offset, number=None, *, name=None,
              source=Source.ADDRESS):
        """A label scoped to routine *owner*: ``@..<owner>.<name>``.

        Without a *name* it is the owner's *number*-th branch target,
        ``l<number>`` (kept in :attr:`index`).
        """
        return cls(f'{LOCAL_PREFIX}{owner}.{name or f"l{number}"}',
                   kind=Kind.LOCAL, source=source, offset=offset,
                   owner=str(owner), index=None if name else number)

    @classmethod
    def anchor(cls, text, offset):
        """A renderer anchor named *text* on the byte at *offset*."""
        return cls(text, kind=Kind.ANCHOR, source=Source.FIXED, offset=offset)

    @property
    def generic(self):
        return self.source in GENERIC

    def _with(self, text, **fields):
        return Symbol(text, **{**self.__dict__, **fields})

    def tagged(self, tag, *, keep_address=False):
        """This generic name renamed after its code: ``<base>_<tag>``.

        *keep_address* separates identical copies within one binary.
        """
        text = f'{self.prefix}{self.base}_{tag}'
        if keep_address:
            text += f'_{self.offset:04x}'
        return self._with(text, source=Source.TAG, tag=tag)

    def prefixed(self, prefix):
        """This generic name with the host's *prefix* (``ds_loc_08f2``)."""
        return self._with(prefix + self, prefix=prefix)

    def renamed(self, text, source, **fields):
        """The same label under another name (and any changed *fields*)."""
        return self._with(text, source=source, **fields)


_ENUMS = {'kind': Kind, 'source': Source, 'space': Space}


def encode(sym):
    """*sym* as a JSON-ready record (its name is the key it is stored under)."""
    return {key: (value.name if key in _ENUMS else value)
            for key, value in sym.__dict__.items()}


def decode(name, record):
    """The :class:`Symbol` an :func:`encode` record describes."""
    return Symbol(name, **{key: (_ENUMS[key][value] if key in _ENUMS else value)
                           for key, value in record.items()})


def to_record(name):
    """*name* for JSON: ``{name, ...fields}`` for a symbol, else the text."""
    if isinstance(name, Symbol):
        return {'name': str(name), **encode(name)}
    return name


def from_record(record):
    """Inverse of :func:`to_record`."""
    if isinstance(record, dict):
        return decode(record['name'],
                      {k: v for k, v in record.items() if k != 'name'})
    return record


def write_table(path, names):
    """Save *names* (Symbols) to *path*, one record per spelling.

    The first Symbol of a spelling wins, so callers list the final ones first.
    """
    import json
    import os
    table = {}
    for name in names:
        if isinstance(name, Symbol):
            table.setdefault(str(name), name)
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w', encoding='utf-8') as f:
        json.dump([to_record(table[text]) for text in sorted(table)], f,
                  indent=0)
        f.write('\n')


def read_table(path):
    """``{text: Symbol}`` from a :func:`write_table` file."""
    import json
    with open(path, encoding='utf-8') as f:
        return {record['name']: from_record(record) for record in json.load(f)}


def project_tables(project):
    """``{binary: {text: Symbol}}`` for every table *project*'s build wrote."""
    import glob
    import os
    from lib.cachedirs import symbols_dir
    return {os.path.basename(path)[:-5]: read_table(path)
            for path in sorted(glob.glob(os.path.join(symbols_dir(project),
                                                      '*.json')))}


#: The family a generated data name is spelled with, per space.
_DATA_BASE = {Space.IMAGE: 'data', Space.CSEG: 'cseg', Space.DS: 'dseg',
              Space.BSS: 'bss', Space.PSP: 'psp'}


def _rebuild(text, fields):
    return Symbol(text, **fields)
