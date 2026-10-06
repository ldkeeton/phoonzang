"""MZ EXE header parsing — relocation table discovery."""

import struct


def parse_entrypoint(binary_data):
    """Return the MZ executable entry point as a file offset.

    MZ stores the initial ``CS:IP`` relative to the load module, which begins
    after the header.  The returned offset is therefore suitable for indexing
    *binary_data* and for use by the disassembler's file-offset addresses.
    Invalid, truncated, or out-of-file entry points return ``None``.
    """
    if len(binary_data) < 0x1c or binary_data[:2] != b'MZ':
        return None

    header_paragraphs = struct.unpack_from('<H', binary_data, 0x08)[0]
    ip = struct.unpack_from('<H', binary_data, 0x14)[0]
    cs = struct.unpack_from('<H', binary_data, 0x16)[0]
    header_size = header_paragraphs * 16

    if header_size < 0x1c or header_size > len(binary_data):
        return None

    entry_offset = header_size + cs * 16 + ip
    if entry_offset >= len(binary_data):
        return None
    return entry_offset


def parse_relocs(binary_data, start_offset):
    """Parse MZ EXE relocation table.

    Returns a set of absolute target addresses (near offsets within
    the program's load image) that the relocation table references.
    """
    if start_offset != 0x200:
        return set()
    hdr = binary_data[:0x200]
    if hdr[:2] != b'MZ':
        return set()

    _, _, _, crlc, cparhdr, _, _, _, _, _, _, _, lfarlc, _ = \
        struct.unpack_from('<2s13H', hdr, 0)

    load_start = cparhdr * 16
    targets = set()

    for i in range(crlc):
        entry_off = lfarlc + i * 4
        if entry_off + 4 > len(binary_data):
            break
        reloc_offset = struct.unpack_from('<H', binary_data, entry_off)[0]
        reloc_segment = struct.unpack_from('<H', binary_data, entry_off + 2)[0]
        ref_file_off = load_start + reloc_segment * 16 + reloc_offset
        if ref_file_off + 2 <= len(binary_data):
            word_val = struct.unpack_from('<H', binary_data, ref_file_off)[0]
            targets.add(word_val)

    return targets
