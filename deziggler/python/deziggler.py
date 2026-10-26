"""ctypes binding for ``libdeziggler.so`` (built by ``deziggler/build.sh``).

    z = Deziggler(data, code_lo, code_hi, bias)
    insns = z.decode_all()            # insns[off - code_lo].len / .flow / .target
    z.set_symbols(symbols=[(space, start, end, name, start_only)],
                  scopes=[(start, end, name)], hints=[(at, operand, space)])
    lines = z.render(starts)          # list[str], parallel to starts

Spaces are ``SPACE`` names (``"cs"``, ``"ds"``, ...) or their numbers.
"""

import ctypes
import os

SPACE = {"none": 0, "cs": 1, "ds": 2, "ss": 3, "es": 4, "ext": 5}
FLOW = ["seq", "jmp", "jcc", "call", "ret", "jmp_ind", "call_ind", "jmp_far", "call_far", "halt"]
KIND = ["none", "reg8", "reg16", "sreg", "imm", "mem", "rel", "far", "one", "cl", "dx"]
NO_SEG = 0xFF
DIRECT = 8

_LIB_PATH = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "build_out", "libdeziggler.so")


class Operand(ctypes.Structure):
    _fields_ = [
        ("kind", ctypes.c_uint8),
        ("size", ctypes.c_uint8),
        ("reg", ctypes.c_uint8),
        ("enc_size", ctypes.c_uint8),
        ("sext", ctypes.c_bool),
        ("space", ctypes.c_uint8),
        ("value", ctypes.c_uint16),
        ("seg", ctypes.c_uint16),
    ]


class Insn(ctypes.Structure):
    _fields_ = [
        ("len", ctypes.c_uint8),
        ("mnem", ctypes.c_uint8),
        ("flow", ctypes.c_uint8),
        ("nops", ctypes.c_uint8),
        ("seg_prefix", ctypes.c_uint8),
        ("rep", ctypes.c_uint8),
        ("lock", ctypes.c_bool),
        ("opcode", ctypes.c_uint8),
        ("op_at", ctypes.c_uint8),
        ("disp_off", ctypes.c_uint8),
        ("imm_off", ctypes.c_uint8),
        ("imm_size", ctypes.c_uint8),
        ("target", ctypes.c_uint16),
        ("ops", Operand * 3),
    ]


class Symbol(ctypes.Structure):
    _fields_ = [
        ("space", ctypes.c_uint8),
        ("start_only", ctypes.c_bool),
        ("start", ctypes.c_uint32),
        ("end", ctypes.c_uint32),
        ("name", ctypes.c_uint32),
        ("name_len", ctypes.c_uint32),
    ]


class Scope(ctypes.Structure):
    _fields_ = [
        ("start", ctypes.c_uint32),
        ("end", ctypes.c_uint32),
        ("name", ctypes.c_uint32),
        ("name_len", ctypes.c_uint32),
    ]


class Hint(ctypes.Structure):
    _fields_ = [("at", ctypes.c_uint32), ("operand", ctypes.c_uint8), ("space", ctypes.c_uint8)]


def _load(path):
    lib = ctypes.CDLL(path)
    P = ctypes.c_void_p
    size_p = ctypes.POINTER(ctypes.c_size_t)
    lib.zg_create.argtypes = [ctypes.c_char_p, ctypes.c_size_t, ctypes.c_uint32, ctypes.c_uint32, ctypes.c_int32]
    lib.zg_create.restype = P
    lib.zg_destroy.argtypes = [P]
    lib.zg_destroy.restype = None
    lib.zg_insn_size.argtypes = []
    lib.zg_insn_size.restype = ctypes.c_size_t
    lib.zg_decode_all.argtypes = [P, size_p]
    lib.zg_decode_all.restype = ctypes.POINTER(Insn)
    lib.zg_set_symbols.argtypes = [
        P, ctypes.c_char_p, ctypes.c_size_t,
        ctypes.POINTER(Symbol), ctypes.c_size_t,
        ctypes.POINTER(Scope), ctypes.c_size_t,
        ctypes.POINTER(Hint), ctypes.c_size_t,
    ]
    lib.zg_set_symbols.restype = ctypes.c_int
    lib.zg_render.argtypes = [P, ctypes.POINTER(ctypes.c_uint32), ctypes.c_size_t, size_p]
    lib.zg_render.restype = ctypes.POINTER(ctypes.c_char)
    lib.zg_mnemonic.argtypes = [ctypes.c_uint8, size_p]
    lib.zg_mnemonic.restype = ctypes.POINTER(ctypes.c_char)
    if lib.zg_insn_size() != ctypes.sizeof(Insn):
        raise ImportError(f"{path}: Insn is {lib.zg_insn_size()} bytes, binding expects {ctypes.sizeof(Insn)}")
    return lib


_lib = None


def lib():
    global _lib
    if _lib is None:
        _lib = _load(_LIB_PATH)
    return _lib


def _space(s):
    return SPACE[s] if isinstance(s, str) else int(s)


def mnemonic(id_):
    n = ctypes.c_size_t()
    p = lib().zg_mnemonic(id_, ctypes.byref(n))
    return ctypes.string_at(p, n.value).decode()


class Deziggler:
    def __init__(self, data, code_lo, code_hi, bias):
        self._lib = lib()
        self._ctx = self._lib.zg_create(bytes(data), len(data), code_lo, code_hi, bias)
        if not self._ctx:
            raise MemoryError("zg_create failed")
        self.code_lo = code_lo

    def close(self):
        if self._ctx:
            self._lib.zg_destroy(self._ctx)
            self._ctx = None

    __del__ = close

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        self.close()

    def decode_all(self):
        """One ``Insn`` per byte offset (index = offset - code_lo; ``len == 0``
        where nothing decodes).  Valid while this object lives."""
        n = ctypes.c_size_t()
        p = self._lib.zg_decode_all(self._ctx, ctypes.byref(n))
        if not p:
            raise MemoryError("zg_decode_all failed")
        return (Insn * n.value).from_address(ctypes.addressof(p.contents)) if n.value else []

    def set_symbols(self, symbols=(), scopes=(), hints=()):
        pool = bytearray()

        def put(name):
            at = len(pool)
            b = name.encode()
            pool.extend(b)
            return at, len(b)

        syms = (Symbol * len(symbols))()
        for s, (space, start, end, name, start_only) in zip(syms, symbols):
            s.space, s.start, s.end, s.start_only = _space(space), start, end, bool(start_only)
            s.name, s.name_len = put(name)
        scs = (Scope * len(scopes))()
        for s, (start, end, name) in zip(scs, scopes):
            s.start, s.end = start, end
            s.name, s.name_len = put(name)
        hs = (Hint * len(hints))()
        for h, (at, operand, space) in zip(hs, hints):
            h.at, h.operand, h.space = at, operand, _space(space)
        rc = self._lib.zg_set_symbols(
            self._ctx, bytes(pool), len(pool), syms, len(syms), scs, len(scs), hs, len(hs)
        )
        if rc != 0:
            raise ValueError("zg_set_symbols failed")

    def render(self, starts):
        """NASM text for the instruction at each file offset in *starts*."""
        starts = list(starts)
        arr = (ctypes.c_uint32 * len(starts))(*starts)
        n = ctypes.c_size_t()
        p = self._lib.zg_render(self._ctx, arr, len(starts), ctypes.byref(n))
        if not p:
            raise MemoryError("zg_render failed")
        text = ctypes.string_at(p, n.value).decode()
        return text.split("\n") if starts else []
