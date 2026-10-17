"""Repair NASM's malformed DWARF ``.debug_line`` file operands.

NASM's ELF DWARF writer (``output/outelf.c``, ``dwarf_output``) emits the
``DW_LNS_set_file`` operand with ``saa_write8`` -- a single raw byte -- even
though DWARF specifies a ULEB128.  For an assembly that references more than
127 distinct source files, indices >= 128 set the ULEB128 continuation bit, so
every conforming reader (readelf, GDB, bfd/addr2line) desynchronises the line
program: addresses resolve to ``<unknown>``/``<corrupt>`` rows.

A generated MZ listing can easily reference ~200 include files, so this module
re-encodes those operands.  The program is parsed with NASM's own one-byte
semantics (which is unambiguous and consumes the section exactly), then each
``set_file`` operand is rewritten as a real ULEB128 and the section is written
back with ``objcopy --update-section`` so section offsets and relocations are
handled by binutils.

PR https://github.com/netwide-assembler/nasm/pull/330 created to fix upstream
"""

import os
import struct
import subprocess
import tempfile


def _uleb(buf, index):
    value = 0
    shift = 0
    while True:
        byte = buf[index]
        index += 1
        value |= (byte & 0x7F) << shift
        shift += 7
        if not byte & 0x80:
            return value, index


def _encode_uleb(value):
    out = bytearray()
    while True:
        byte = value & 0x7F
        value >>= 7
        if value:
            out.append(byte | 0x80)
        else:
            out.append(byte)
            return bytes(out)


def _section_header(data, want):
    """Return ``(offset, size)`` of *want* in an ELF32 file, or ``None``."""
    e_shoff = struct.unpack('<I', data[0x20:0x24])[0]
    e_shentsize = struct.unpack('<H', data[0x2E:0x30])[0]
    e_shnum = struct.unpack('<H', data[0x30:0x32])[0]
    e_shstrndx = struct.unpack('<H', data[0x32:0x34])[0]

    def header(index):
        start = e_shoff + index * e_shentsize
        return struct.unpack('<IIIIIIIIII', data[start:start + 40])

    shstr = header(e_shstrndx)
    shstr_off = shstr[4]
    for index in range(e_shnum):
        name_off = header(index)[0]
        end = data.index(b'\0', shstr_off + name_off)
        if data[shstr_off + name_off:end].decode() == want:
            section = header(index)
            return section[4], section[5]
    return None


def fix_set_file_operands(section):
    """Return *section* with every ``DW_LNS_set_file`` operand as ULEB128."""
    version = struct.unpack('<H', section[4:6])[0]
    if version != 2:
        raise ValueError(f'unsupported DWARF line version {version}')

    index = 10
    index += 4                                    # min insn, is_stmt, base, range
    opcode_base = section[index]
    index += 1 + (opcode_base - 1)                # opcode base + std op lengths

    while section[index] != 0:                    # include directories
        index = section.index(b'\0', index) + 1
    index += 1
    while section[index] != 0:                    # file names
        index = section.index(b'\0', index) + 1
        for _ in range(3):
            _, index = _uleb(section, index)
    index += 1

    out = bytearray()
    program = section[index:]
    length = len(program)
    i = 0
    changed = False
    while i < length:
        opcode = program[i]
        if opcode == 0:                           # extended opcode
            j = i + 1
            extended_length, j = _uleb(program, j)
            out += program[i:j + extended_length]
            i = j + extended_length
            continue
        if opcode >= opcode_base:                 # special opcode
            out.append(opcode)
            i += 1
            continue
        if opcode == 4:                           # DW_LNS_set_file
            value = program[i + 1]                # NASM wrote one byte
            encoded = _encode_uleb(value)
            out.append(opcode)
            out += encoded
            changed = changed or encoded != program[i + 1:i + 2]
            i += 2
            continue
        if opcode in (1, 6, 7, 8, 10, 11, 12):    # no operand
            out.append(opcode)
            i += 1
            continue
        if opcode == 9:                           # fixed_advance_pc
            out += program[i:i + 3]
            i += 3
            continue
        out.append(opcode)                        # 2,3,5: single ULEB operand
        _, j = _uleb(program, i + 1)
        out += program[i + 1:j]
        i = j

    if not changed:
        return None

    fixed = section[:index] + bytes(out)
    return struct.pack('<I', len(fixed) - 4) + fixed[4:]


def fix_elf(path):
    """Repair *path* in place. Returns the number of bytes appended."""
    with open(path, 'rb') as f:
        data = f.read()
    located = _section_header(data, '.debug_line')
    if located is None:
        return 0
    offset, size = located
    fixed = fix_set_file_operands(data[offset:offset + size])
    if fixed is None:
        return 0
    with tempfile.NamedTemporaryFile(delete=False) as tmp:
        tmp.write(fixed)
        tmp_name = tmp.name
    try:
        subprocess.run(
            ['objcopy', f'--update-section', f'.debug_line={tmp_name}', path],
            check=True, capture_output=True,
        )
    finally:
        os.unlink(tmp_name)
    return len(fixed) - size
