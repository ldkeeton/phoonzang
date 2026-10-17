"""Make the paths NASM records in an ELF's DWARF independent of the checkout.

NASM writes the absolute ``getcwd()`` into ``DW_AT_comp_dir`` and absolute
include paths into the line table, and has no ``-fdebug-prefix-map``. This
rewrites the repo root in those sections to a fixed virtual root so the ELF is
identical on any machine; ``launch.json`` maps it back with gdb's
``set substitute-path``.

Python 3 CLI: ``dwarf_paths.py ELF [ROOT]`` (ROOT defaults to this repo).
"""

import os
import struct
import sys

try:
    from lib.dwarf_line import _section_header
except ImportError:  # run as a script: lib/ is not yet on sys.path
    sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    from lib.dwarf_line import _section_header

VIRTUAL_ROOT = '/PHOONZANG/'


def _header_offset(data, want):
    """File offset of the ELF32 section header named *want*."""
    e_shoff, = struct.unpack_from('<I', data, 0x20)
    e_shentsize, e_shnum, e_shstrndx = struct.unpack_from('<HHH', data, 0x2E)
    shstr = struct.unpack_from('<I', data, e_shoff + e_shstrndx * e_shentsize + 16)[0]
    for index in range(e_shnum):
        header = e_shoff + index * e_shentsize
        start = shstr + struct.unpack_from('<I', data, header)[0]
        if bytes(data[start:data.index(b'\0', start)]).decode() == want:
            return header
    raise KeyError(want)


def _replace(section, old, new, relocs):
    """Replace *old* by *new* in *section*; shift *relocs* ``r_offset``s to match.

    Returns ``(section, relocs, delta)`` or ``None`` when *old* is absent.
    """
    if old not in section:
        return None
    out = bytearray()
    shifts = []                      # (original end of match, cumulative delta)
    delta = 0
    index = 0
    while True:
        found = section.find(old, index)
        if found < 0:
            out += section[index:]
            break
        out += section[index:found] + new
        delta += len(new) - len(old)
        index = found + len(old)
        shifts.append((index, delta))
    if relocs is not None:
        fixed = bytearray(relocs)
        for at in range(0, len(fixed), 8):
            offset = struct.unpack_from('<I', fixed, at)[0]
            shift = 0
            for end, cumulative in shifts:
                if offset >= end:
                    shift = cumulative
            struct.pack_into('<I', fixed, at, offset + shift)
        relocs = bytes(fixed)
    return bytes(out), relocs, delta


def remap_elf(path, root, virtual_root=VIRTUAL_ROOT):
    """Rewrite *root* to *virtual_root* in *path*'s ``.debug_info``/``.debug_line``."""
    root = os.path.realpath(root).rstrip('/') + '/'
    old, new = root.encode(), virtual_root.encode()
    with open(path, 'rb') as f:
        data = f.read()

    updates = {}
    for name, length_fields in (('.debug_info', (0,)), ('.debug_line', (0, 6))):
        located = _section_header(data, name)
        if located is None:
            continue
        offset, size = located
        rel = _section_header(data, '.rel' + name)
        rel_bytes = data[rel[0]:rel[0] + rel[1]] if rel else None
        result = _replace(data[offset:offset + size], old, new, rel_bytes)
        if result is None:
            continue
        section, rel_bytes, delta = result
        # Single compilation unit: unit_length (and the line header_length)
        # grow or shrink with the section.
        section = bytearray(section)
        for field in length_fields:
            value = struct.unpack_from('<I', section, field)[0]
            struct.pack_into('<I', section, field, value + delta)
        updates[name] = bytes(section)
        if rel_bytes is not None:
            updates['.rel' + name] = rel_bytes

    # objcopy would drop the relocation sections, so edit the ELF directly:
    # relocations keep their size and are patched in place; a resized debug
    # section is appended at the end of the file and its header repointed.
    data = bytearray(data)
    for name, content in updates.items():
        header = _header_offset(data, name)
        offset, size = struct.unpack_from('<II', data, header + 16)
        if len(content) == size:
            data[offset:offset + size] = content
        else:
            struct.pack_into('<II', data, header + 16, len(data), len(content))
            data += content
    with open(path, 'wb') as f:
        f.write(data)
    return len(updates)


if __name__ == '__main__':
    repo = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    remap_elf(sys.argv[1], sys.argv[2] if len(sys.argv) > 2 else repo)
