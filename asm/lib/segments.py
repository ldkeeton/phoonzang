"""Segment model: map ``(segment, offset)`` references to file / BSS / PSP.

The recovered Wizardry 7 images use more than one address space, but the
disassembly pipeline is offset-based.  This module centralises the geometry
that turns an in-code reference into a concrete byte location so the
formatter and verifier can pick the right symbol namespace without
re-deriving MZ/overlay maths in several places.  See ``lib.format`` for the
narrative F/L/DATA/PSP model.

MZ executables (``DS.EXE``, ``VINSTALL.EXE``)
    The MZ header precedes the load image.  ``CS`` is ``e_cs`` paragraphs
    into the load image, ``DS``/``SS`` are ``e_ss`` paragraphs in.  Only
    ``load_image_size - e_ss*16`` bytes of the data segment are file-backed;
    everything past that DATA offset is BSS.  The MZ relocation table patches
    segment *words*, never offsets.

Aztec overlays (``*.OVR``)
    A 14-byte ``ovrheader`` precedes the code (``LIB/DOS/OVLOADER.C``)::

        short o_magic (0x00f2); unsigned short o_corg, o_csize;
        unsigned short o_dorg, o_dsize, o_bss, o_entry;

    Overlays execute inside the *host* program's data segment, so their DATA
    references resolve against the host model (pass ``host=``).  ``o_corg``
    is the code's memory origin.

Raw drivers (``*.DRV``)
    No header; the whole file is the load image.  The data segment is
    established at run time and is not statically known here.
"""

import struct

from lib.mz import parse_entrypoint as _mz_entrypoint


_MZ_FIELDS = (
    'magic', 'last_page_bytes', 'page_count', 'relocation_count',
    'header_paragraphs', 'min_alloc', 'max_alloc', 'initial_ss',
    'initial_sp', 'checksum', 'initial_ip', 'initial_cs',
    'relocation_table_offset', 'overlay_number',
)

_OVR_HEADER_SIZE = 14
_OVR_MAGIC = b'\xf2\x00'

# DOS PSP fields referenced by the Aztec CRT.  Only the offsets the
# recovered programs actually touch are named; the rest stay offsets.
PSP_FIELDS = {
    0x00: 'psp_int20',
    0x02: 'psp_top_of_memory',
    0x05: 'psp_dos_dispatch',
    0x0A: 'psp_terminate',
    0x0E: 'psp_ctrl_break',
    0x12: 'psp_critical_error',
    0x2C: 'psp_env_segment',
    0x2E: 'psp_saved_stack',
    0x32: 'psp_jft_size',
    0x34: 'psp_jft_pointer',
    0x36: 'psp_previous',
    0x5C: 'psp_fcb1',
    0x6C: 'psp_fcb2',
    0x80: 'psp_cmd_tail_len',
    0x81: 'psp_cmd_tail',
}


class SegmentError(Exception):
    """Raised when a header-derived boundary disagrees with the code."""


def psp_field(offset):
    """Return the symbolic name for a PSP field offset, or ``None``."""
    return PSP_FIELDS.get(offset)


def external_data_name(offset, fields, segment=None):
    """Return the symbolic name for a fixed external-segment field.

    *fields* is the per-binary sidecar ``external_data`` mapping
    (``{int_offset: {'name', 'segment'?}}``).  These fields live in a fixed
    absolute segment outside this image (e.g. the BIOS Data Area reached
    through ``ES``).  When an entry names a *segment* the operand's segment
    must match, so an ``es:0x0410`` access is distinguished from a plain
    DS-relative ``[0x0410]``.
    """
    entry = (fields or {}).get(offset)
    if entry is None:
        return None
    want = entry.get('segment')
    if want and segment and want != segment:
        return None
    return entry['name']


class SegmentModel:
    """Resolved segment geometry for a single image.

    ``cs_origin`` / ``data_origin`` are absolute file offsets of ``CS:0`` and
    ``DATA:0``; ``bss_boundary`` is a DATA offset (``data_origin + n`` is the
    first BSS byte).  ``None`` means the space is not statically known.
    """

    def __init__(self, kind, file_size, load_size=0,
                 cs_origin=None, data_origin=None, cs_base=0, data_base=0,
                 bss_boundary=None, psp=False, entry_offset=None,
                 relocations=(), header_size=0, overlay=None, host=None,
                 ds_size=None):
        self.kind = kind
        self.file_size = file_size
        self.load_size = load_size
        self.cs_origin = cs_origin
        self.data_origin = data_origin
        self.cs_base = cs_base
        self.data_base = data_base
        self.bss_boundary = bss_boundary
        self.psp = psp
        self.entry_offset = entry_offset
        self.relocations = tuple(relocations)
        self.header_size = header_size
        self.overlay = overlay
        self.host = host
        # Total data-segment size (file-backed data + BSS), recovered from the
        # CRT BSS zero-fill idiom.  For the main program this is the value the
        # startup code and the overlay loader hard-code, and it equals every
        # overlay's ``o_dorg`` (see plan.md D7.0).  ``None`` when the idiom is
        # absent (raw drivers, or capstone unavailable).
        self.ds_size = ds_size
        # Name of the binary this model describes (set for a host, whose
        # source overlays include for its symbols).
        self.name = None

    def resolve(self, segment, offset):
        """Resolve *segment*:*offset* to a concrete location.

        Returns one of ``('file', file_offset)``, ``('bss',)``,
        ``('psp',)``, or ``('unknown',)``.  Segment is case-insensitive;
        ``ES`` is treated as an alias of ``DS`` (the CRT keeps them equal
        for the data segment).
        """
        segment = (segment or '').upper()

        if segment == 'CS':
            if self.cs_origin is None:
                return ('unknown',)
            return self._in_file(self.cs_origin + offset)

        if segment in ('DS', 'SS', 'ES'):
            # Overlays execute inside the host program's data segment, which
            # lives in the host file, so defer to the host model.
            if self.host is not None:
                return self.host.resolve(segment, offset)
            if self.data_origin is None:
                return ('unknown',)
            if self.bss_boundary is not None and offset >= self.bss_boundary:
                return ('bss',)
            return self._in_file(self.data_origin + offset)

        if segment == 'PSP':
            if self.psp:
                return ('psp',)
            return ('unknown',)

        return ('unknown',)

    def _in_file(self, file_offset):
        if 0 <= file_offset < self.file_size:
            return ('file', file_offset)
        return ('unknown',)

    def resolve_mem(self, default_segment, offset, prefix=None):
        """Resolve an absolute memory operand.

        *prefix* is the explicit segment override (e.g. ``'CS'``); when
        absent the operand uses *default_segment* for data accesses.
        """
        return self.resolve(prefix or default_segment, offset)

    def code_offset(self, disp):
        """Map an embedded code-segment offset to a file offset.

        Aztec overlay code is loaded at ``CS:o_corg`` but begins at file
        offset :data:`_OVR_HEADER_SIZE`, so an embedded CS value ``disp``
        corresponds to file offset ``14 + (disp - o_corg)``.  Returns
        ``None`` when the model is not an overlay (callers then fall back to
        the plain ``start_offset + disp`` MZ/driver convention).
        """
        if self.kind != 'overlay' or not self.overlay:
            return None
        o_corg = self.overlay.get('o_corg')
        if o_corg is None:
            return None
        return _OVR_HEADER_SIZE + (disp - o_corg)

    def host_code_offset(self, target):
        """Map an overlay near-flow target to a host file offset.

        The disassembler computes a near call/jmp target in the overlay's
        *file-offset* space, but the code executes at host ``CS:o_corg``.  An
        overlay file offset ``a`` is host CS ``o_corg + (a - start_offset)``, so
        a target ``target`` is host file offset
        ``host.cs_origin + o_corg + (target - start_offset)`` (mod 16 bits).

        Returns ``None`` for MZ/driver models or when the host geometry is not
        known.  See :meth:`code_offset` for the inverse mapping.
        """
        if self.kind != 'overlay' or not self.overlay or self.host is None:
            return None
        o_corg = self.overlay.get('o_corg')
        host_cs_origin = self.host.cs_origin
        if o_corg is None or host_cs_origin is None:
            return None
        host_cs = (target + o_corg - self.cs_origin) & 0xFFFF
        return host_cs_origin + host_cs

    def data_space(self, offset):
        """Classify a data-segment offset as ``'dseg'`` or ``'bss'``.

        Returns ``None`` when the model has no statically known data segment
        (raw drivers).  For a plain MZ image the boundary is
        ``bss_boundary``.  An overlay shares the host's data segment, but its
        own loaded data sits at ``o_dorg`` and its BSS above
        ``o_dorg + o_dsize``, so the classification is layered:

        * below ``host.bss_boundary`` - host file-backed data (``dseg``);
        * ``host.bss_boundary .. o_dorg`` - host BSS (``bss``);
        * ``o_dorg .. o_dorg + o_dsize`` - overlay file-backed data (``dseg``);
        * at/above ``o_dorg + o_dsize`` - overlay BSS (``bss``).
        """
        if self.host is not None:
            o_dorg = self.overlay.get('o_dorg') if self.overlay else None
            o_dsize = self.overlay.get('o_dsize') if self.overlay else None
            if o_dorg is not None and offset >= o_dorg:
                if o_dsize is not None and offset < o_dorg + o_dsize:
                    return 'dseg'
                return 'bss'
            host_bss = self.host.bss_boundary
            if host_bss is not None and offset >= host_bss:
                return 'bss'
            return 'dseg'
        if self.bss_boundary is None:
            return None
        return 'bss' if offset >= self.bss_boundary else 'dseg'


def from_binary(binary_data, binary_type=None, start_offset=0, host=None):
    """Build the :class:`SegmentModel` for *binary_data*.

    *binary_type* is the sidecar type (``mz`` / ``aztec_overlay`` /
    ``raw_drv``); when omitted it is inferred from the MZ magic.  *host* is
    the model of the main program, needed to resolve overlay DATA
    references (which live in the host's segment).
    """
    if binary_type == 'mz' or (binary_type is None and binary_data[:2] == b'MZ'):
        return _from_mz(binary_data)
    if binary_type == 'aztec_overlay' or _looks_like_overlay(binary_data):
        return _from_overlay(binary_data, start_offset, host)
    return _from_driver(binary_data, start_offset)


def _from_mz(data):
    if len(data) < 0x1c or data[:2] != b'MZ':
        raise SegmentError('expected an MZ executable')
    header = dict(zip(_MZ_FIELDS, struct.unpack_from('<2s13H', data, 0)))
    headers_bytes = header['header_paragraphs'] * 16
    if not 0x1c <= headers_bytes <= len(data):
        raise SegmentError('invalid MZ header size')

    cs_base = header['initial_cs'] * 16
    data_base = header['initial_ss'] * 16
    load_size = len(data) - headers_bytes
    bss_boundary = load_size - data_base
    relocations = _mz_relocations(data, header)
    entry_offset = headers_bytes + cs_base + header['initial_ip']
    # The CRT zero-fill idiom (``mov di,<bss_start>; mov cx,<bss_end>; stosw``)
    # reveals the program's true data-segment size.  It is the constant the
    # startup and overlay loader use as ``o_dorg`` (plan.md D7.0).
    crt = find_crt_bss_zero_range(data, entry_offset)

    return SegmentModel(
        kind='mz',
        file_size=len(data),
        load_size=load_size,
        cs_origin=headers_bytes + cs_base,
        data_origin=headers_bytes + data_base,
        cs_base=cs_base,
        data_base=data_base,
        bss_boundary=bss_boundary,
        psp=True,
        entry_offset=entry_offset,
        relocations=relocations,
        header_size=headers_bytes,
        ds_size=(crt[1] if crt is not None else None),
    )


def _mz_relocations(data, header):
    result = []
    for index in range(header['relocation_count']):
        at = header['relocation_table_offset'] + index * 4
        if at + 4 > len(data):
            raise SegmentError('truncated MZ relocation table')
        offset, segment = struct.unpack_from('<HH', data, at)
        result.append({'offset': offset, 'segment': segment})
    return result


def _looks_like_overlay(data):
    if len(data) < _OVR_HEADER_SIZE or data[:2] != _OVR_MAGIC:
        return False
    o_corg, o_csize = struct.unpack_from('<2H', data, 2)
    return o_corg > 0 and o_csize > 0


def _from_overlay(data, start_offset, host):
    overlay = None
    if _looks_like_overlay(data):
        values = struct.unpack_from('<6H', data, 2)
        overlay = dict(zip(
            ('o_corg', 'o_csize', 'o_dorg', 'o_dsize', 'o_bss', 'o_entry'),
            values,
        ))
    data_origin = host.data_origin if host is not None else None
    return SegmentModel(
        kind='overlay',
        file_size=len(data),
        load_size=len(data) - start_offset,
        cs_origin=start_offset,
        data_origin=data_origin,
        cs_base=0,
        data_base=(host.data_base if host is not None else 0),
        bss_boundary=(host.bss_boundary if host is not None else None),
        psp=False,
        entry_offset=None,
        header_size=start_offset,
        overlay=overlay,
        host=host,
    )


def _from_driver(data, start_offset):
    return SegmentModel(
        kind='driver',
        file_size=len(data),
        load_size=len(data) - start_offset,
        cs_origin=start_offset,
        data_origin=None,
        cs_base=0,
        data_base=0,
        bss_boundary=None,
        psp=False,
        entry_offset=None,
        header_size=start_offset,
    )


def find_crt_bss_zero_range(binary_data, entry_offset, max_len=2048):
    """Locate the Aztec CRT BSS zero-fill range at the program entry.

    The startup does ``mov di, <bss_start>; mov cx, <bss_end>; sub cx, di;
    inc cx; shr cx, 1; ...; rep stosw``.  Returns ``(bss_start, bss_end)``
    or ``None`` when the idiom is not found within *max_len* bytes.
    """
    try:
        from capstone import Cs, CS_ARCH_X86, CS_MODE_16
    except ImportError:
        return None
    if entry_offset is None or not 0 <= entry_offset < len(binary_data):
        return None

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    window = binary_data[entry_offset:entry_offset + max_len]
    last_di = last_cx = None
    for insn in md.disasm(window, entry_offset):
        if insn.mnemonic == 'mov':
            if insn.op_str.startswith('di,'):
                last_di = _imm_hex(insn.op_str.split(',', 1)[1])
            elif insn.op_str.startswith('cx,'):
                last_cx = _imm_hex(insn.op_str.split(',', 1)[1])
        elif 'stosw' in insn.mnemonic:
            if last_di is not None and last_cx is not None:
                return (last_di, last_cx)
            return None
    return None


def _imm_hex(text):
    try:
        return int(text.strip(), 16)
    except ValueError:
        return None


def check_bss_boundary(model, binary_data):
    """Cross-check the header BSS boundary against the CRT zero-fill.

    Raises :class:`SegmentError` on disagreement.  Returns the CRT
    ``(start, end)`` range, or ``None`` when the model has no MZ BSS
    boundary or the entry does not use the Aztec zero-fill idiom (nothing
    to check).
    """
    if model.bss_boundary is None or model.entry_offset is None:
        return None
    crt = find_crt_bss_zero_range(binary_data, model.entry_offset)
    if crt is None:
        return None
    if crt[0] != model.bss_boundary:
        raise SegmentError(
            f'{model.kind}: header BSS boundary 0x{model.bss_boundary:x} '
            f'!= CRT zero-fill start 0x{crt[0]:x}'
        )
    return crt
