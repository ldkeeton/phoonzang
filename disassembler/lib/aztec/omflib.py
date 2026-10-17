import struct

# OMF 16-bit record types (Microsoft / Intel)
THEADR = 0x80
COMENT = 0x88
MODEND = 0x8A
EXTDEF = 0x8C
PUBDEF = 0x90
LNAMES = 0x96
SEGDEF = 0x98
GRPDEF = 0x9A
FIXUPP = 0x9C
LEDATA = 0xA0
LIDATA = 0xA1


def u16(b, o):
    return b[o] | (b[o + 1] << 8)


def records(data, off, limit):
    """Yield (type, body) OMF records from off until MODEND."""
    while off + 3 <= limit:
        typ = data[off]
        ln = u16(data, off + 1)
        if off + 3 + ln > limit:
            raise ValueError(f'record at {off:#x} overruns')
        body = data[off + 3:off + 3 + ln]
        yield typ, body
        off += 3 + ln
        if typ == MODEND:
            return


def find_modules(data):
    """Return list of (offset, name, end_offset) for each OMF module."""
    mods = []
    off = 0
    while off < len(data) - 3:
        if data[off] == THEADR:
            try:
                recs = list(records(data, off, len(data)))
            except ValueError:
                off += 1
                continue
            if recs and recs[-1][0] == MODEND and any(t == LNAMES for t, _ in recs):
                body = recs[0][1]
                nl = body[0]
                name = body[1:1 + nl].decode('latin1')
                if all(32 <= ord(c) < 127 for c in name):
                    end = off
                    for typ, b in recs:
                        end += 3 + len(b)
                    mods.append((off, name, end))
                    off = end
                    continue
        off += 1
    return mods


def _names_from(body):
    p = 0
    out = []
    while p < len(body):
        n = body[p]
        out.append(body[p + 1:p + 1 + n].decode('latin1'))
        p += 1 + n
    return out


class Module:
    def __init__(self, data, off, limit):
        self.off = off
        self.name = None
        self.lnames = []          # 1-based
        self.segdefs = []         # list of dict
        self.pubdefs = []         # list of (name, seg_id, offset)
        self.extdefs = []
        self.segbytes = {}        # seg_id -> bytearray
        self.fixups = []          # Fixup records, segment-relative
        self._parse(data, off, limit)

    def _parse(self, data, off, limit):
        seg_index = 0
        ledata = None             # (seg, offset) of the record FIXUPP patches
        threads = {}              # (is_frame, number) -> (method, index)
        for typ, body in records(data, off, limit):
            if typ == FIXUPP and ledata is not None:
                self.fixups.extend(_parse_fixupp(body[:-1], ledata, threads))
                continue
            if typ == THEADR:
                nl = body[0]
                self.name = body[1:1 + nl].decode('latin1')
            elif typ == LNAMES:
                for nm in _names_from(body):
                    self.lnames.append(nm)
            elif typ == SEGDEF:
                seg_index += 1
                acbp = body[0]
                big = (acbp >> 1) & 1
                use32 = acbp & 1
                p = 1
                if big or use32:
                    length = struct.unpack_from('<I', body, p)[0]; p += 4
                else:
                    length = u16(body, p); p += 2
                name_idx = body[p]; p += 1
                class_idx = body[p]; p += 1
                overlay_idx = body[p]; p += 1
                self.segdefs.append({
                    'id': seg_index, 'length': length,
                    'name': self.lnames[name_idx - 1] if 0 < name_idx <= len(self.lnames) else '',
                    'class': self.lnames[class_idx - 1] if 0 < class_idx <= len(self.lnames) else '',
                })
            elif typ == PUBDEF:
                self.pubdefs.extend(self._parse_pubdef(body))
            elif typ == EXTDEF:
                p = 0
                while p < len(body) - 1:
                    nl = body[p]; p += 1
                    nm = body[p:p + nl].decode('latin1'); p += nl
                    p += 1  # type index
                    self.extdefs.append(nm)
            elif typ == LEDATA:
                seg = body[0]
                offset = u16(body, 1)
                ledata = (seg, offset)
                content = body[3:-1]  # drop checksum
                buf = self.segbytes.setdefault(seg, bytearray())
                if len(buf) < offset + len(content):
                    buf.extend(b'\x00' * (offset + len(content) - len(buf)))
                buf[offset:offset + len(content)] = content
            elif typ == LIDATA:
                # iterative data (rare in C runtime); skip
                pass

    @staticmethod
    def _parse_pubdef(body):
        """Return list of (name, seg_id, offset). Handles 1/2-byte base indexes."""
        limit = len(body) - 1  # trailing checksum
        for idx_size in (1, 2):
            try:
                if idx_size == 1:
                    grp = body[0]; seg = body[1]; p = 2
                else:
                    grp = u16(body, 0); seg = u16(body, 2); p = 4
                if grp == 0 and seg == 0:
                    p += 2  # base frame
                out = []
                while p < limit:
                    nl = body[p]
                    if p + 1 + nl > limit:
                        raise ValueError
                    nm = body[p + 1:p + 1 + nl].decode('latin1')
                    if not all(32 <= ord(c) < 127 for c in nm):
                        raise ValueError
                    p += 1 + nl
                    if p + 3 > limit:
                        raise ValueError
                    offv = u16(body, p); p += 2
                    p += 1  # type index
                    out.append((nm, seg, offv))
                if p == limit:
                    return out
            except (IndexError, ValueError, UnicodeDecodeError):
                continue
        return []

    def code_segments(self):
        out = set()
        for s in self.segdefs:
            if s['class'].upper() in ('CODE', '_TEXT') or s['name'].upper() in ('_TEXT', 'CODE', 'C_ETEXT'):
                out.add(s['id'])
        return out


#: FIXUP location types.
LOC_LOBYTE, LOC_OFFSET, LOC_BASE, LOC_POINTER, LOC_HIBYTE, LOC_LOADER_OFFSET = \
    0, 1, 2, 3, 4, 5
#: FIXUP target methods.
TARGET_SEGDEF, TARGET_GRPDEF, TARGET_EXTDEF = 0, 1, 2

_LOCATION_WIDTH = {LOC_LOBYTE: 1, LOC_HIBYTE: 1, LOC_OFFSET: 2, LOC_BASE: 2,
                   LOC_LOADER_OFFSET: 2, LOC_POINTER: 4}


class Fixup:
    """One FIXUP: the patched bytes and what they name.

    *offset* is segment-relative.  *self_relative* is a ``call``/``jmp``
    displacement; otherwise the field holds the target's segment offset plus
    *displacement*.  *method* is a ``TARGET_*`` and *index* its 1-based
    SEGDEF/GRPDEF/EXTDEF index.
    """
    __slots__ = ('seg', 'offset', 'location', 'self_relative', 'method',
                 'index', 'displacement')

    def __init__(self, seg, offset, location, self_relative, method, index,
                 displacement):
        self.seg = seg
        self.offset = offset
        self.location = location
        self.self_relative = self_relative
        self.method = method
        self.index = index
        self.displacement = displacement

    @property
    def width(self):
        return _LOCATION_WIDTH.get(self.location, 2)


def _index(body, p):
    if body[p] & 0x80:
        return ((body[p] & 0x7F) << 8) | body[p + 1], p + 2
    return body[p], p + 1


def _parse_fixupp(body, ledata, threads):
    seg, base = ledata
    p = 0
    while p < len(body):
        head = body[p]
        if not head & 0x80:                     # THREAD
            is_frame = bool(head & 0x40)
            method = (head >> 2) & 0x07
            p += 1
            index = None
            if method < 3 or (not is_frame and method < 4):
                index, p = _index(body, p)
            threads[(is_frame, head & 0x03)] = (method, index)
            continue
        locat = (head << 8) | body[p + 1]
        p += 2
        self_relative = not locat & 0x4000
        location = (locat >> 10) & 0x0F
        offset = locat & 0x03FF
        fix = body[p]
        p += 1
        if fix & 0x80:
            pass                                 # frame from a thread
        else:
            frame = (fix >> 4) & 0x07
            if frame < 3:
                _, p = _index(body, p)
        no_disp = bool(fix & 0x04)
        if fix & 0x08:
            method, index = threads.get((False, fix & 0x03), (None, None))
        else:
            method = fix & 0x03
            index, p = _index(body, p)
        displacement = 0
        if not no_disp:
            displacement = u16(body, p)
            p += 2
        yield Fixup(seg, base + offset, location, self_relative, method & 0x03
                    if method is not None else None, index, displacement)


def public_functions(data):
    """Yield dicts: name, module, bytes for public CODE symbols."""
    for mod_off, mod_name, mod_end in find_modules(data):
        m = Module(data, mod_off, mod_end)
        code_segs = m.code_segments()
        # group publics by segment for end computation
        per_seg = {}
        for nm, seg, offv in m.pubdefs:
            per_seg.setdefault(seg, []).append((offv, nm))
        for seg in per_seg:
            per_seg[seg].sort()
        for nm, seg, offv in m.pubdefs:
            if seg not in code_segs:
                continue
            buf = m.segbytes.get(seg, bytearray())
            starts = [o for o, _ in per_seg[seg]]
            nxt = [o for o in starts if o > offv]
            end = nxt[0] if nxt else max(len(buf), offv)
            yield {
                'name': nm,
                'module': mod_name,
                'seg': seg,
                'offset': offv,
                'length': max(0, end - offv),
                'bytes': bytes(buf[offv:end]),
                'fixups': [fx for fx in m.fixups
                           if fx.seg == seg and offv <= fx.offset < end],
                'omf': m,
            }


if __name__ == '__main__':
    import sys
    data = open(sys.argv[1], 'rb').read()
    mods = find_modules(data)
    print('modules', len(mods))
    funcs = list(public_functions(data))
    print('public code funcs', len(funcs))
    for f in funcs[:20]:
        print(f"{f['name']:24} {f['module']:20} len={f['length']:4} {f['bytes'][:10].hex()}")
