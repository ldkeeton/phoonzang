"""Byte verification and NASM source generation.

Each candidate mnemonic is round-trip verified at its original offset.
Lines that don't reassemble to the exact original bytes are kept as
``db`` with a comment.  Data blocks are grouped under block headers
when a classification bitmap is provided.
"""

import os
import re
import struct
import time

from capstone import Cs, CS_ARCH_X86, CS_MODE_16, CS_OP_IMM, CS_OP_MEM, CS_OP_REG

from lib.model import IS_CODE, IS_DATA, IS_UNKNOWN
from lib.verify.assemble import micro_assemble, is_semantically_equivalent, clear_assemble_cache
from lib.diagnostics import enabled as diag_enabled, emit as diag_emit, phase as diag_phase
from lib.mz import parse_relocs as _parse_mz_relocs


_FILE_FORMATS = [
    (0, b'\x0A', 'PCX image'),
    (0, b'MThd', 'MIDI sound'),
    (0, b'FORM', 'IFF container (image/audio)'),
    (0, b'BM',   'BMP bitmap'),
    (0, b'RIFF', 'RIFF container (WAV/AVI)'),
    (0, b'\x89PNG\r\n\x1a\n', 'PNG image'),
    (0, b'GIF87a',   'GIF image (v87a)'),
    (0, b'GIF89a',   'GIF image (v89a)'),
    (0, b'\xFF\xD8\xFF', 'JPEG image'),
    (0, b'MZ',    'DOS MZ executable'),
    (0, b'\x7FELF', 'ELF binary'),
    (0, b'Creative Voice File', 'Creative VOC audio'),
    (0, b'M.K.', 'Protracker MOD audio'),
    (0, b'IMPM',  'Impulse Tracker IT audio'),
    (0, b'Extended Module:', 'FastTracker XM audio'),
    (0, b'Z\x00', 'PkZip compressed (SQueezed)'),
    (0, b'PK\x03\x04', 'ZIP archive'),
    (0, b'Rar!\x1a\x07', 'RAR archive'),
    (0, b'\x1F\x8B', 'GZIP compressed'),
    (0, b'BZh',  'Bzip2 compressed'),
    (0, b'\x1F\x9D', 'LZW compressed (tar.z)'),
    (0, b'\x1F\xA0', 'LZH compressed (tar.z)'),
    (0, b'-lh',  'LHA/LZH archive'),
    (0, b'ZOO',  'ZOO archive'),
    (0, b'\x60\xEA', 'ARJ archive'),
    (0, b'LZIP', 'LZIP compressed'),
    (0, b'WAD',  'WAD archive (game resource)'),
    (0, b'IWAD', 'Doom IWAD'),
    (0, b'PWAD', 'Doom PWAD'),
]


# ── Interrupt descriptions ──────────────────────────────────────

_INT_DESCRIPTIONS = {
    0x00: 'BIOS: divide by zero',
    0x04: 'BIOS: overflow',
    0x05: 'BIOS: print screen',
    0x08: 'BIOS: IRQ0 - system timer',
    0x09: 'BIOS: IRQ1 - keyboard',
    0x0b: 'BIOS: IRQ3 - COM2',
    0x0c: 'BIOS: IRQ4 - COM1',
    0x0e: 'BIOS: IRQ6 - floppy disk',
    0x10: 'BIOS video',
    0x11: 'BIOS: equipment check',
    0x12: 'BIOS: memory size',
    0x13: 'BIOS disk',
    0x14: 'BIOS serial',
    0x15: 'BIOS system',
    0x16: 'BIOS keyboard',
    0x17: 'BIOS printer',
    0x19: 'BIOS: boot load',
    0x1a: 'BIOS timer',
    0x1b: 'BIOS: Ctrl-Break handler',
    0x1c: 'BIOS: user timer tick',
    0x21: 'DOS function dispatcher',
    0x23: 'DOS: Ctrl-C handler',
    0x24: 'DOS: critical error handler',
    0x25: 'DOS: set interrupt vector',
    0x27: 'DOS: terminate and stay resident (FCB)',
    0x28: 'DOS: idle (wait)',
    0x29: 'DOS: parse filename',
    0x2f: 'DOS: multiplex (MUX)',
    0x33: 'BIOS mouse',
    0x67: 'EMS (Expanded Memory)',
}

_DOS_FUNCTIONS = {
    0x00: 'terminate program',
    0x01: 'keyboard input (echo)',
    0x02: 'character output',
    0x06: 'direct console I/O',
    0x07: 'keyboard input (no echo)',
    0x08: 'keyboard input (no echo, no Ctrl-C)',
    0x09: 'string output',
    0x0a: 'buffered keyboard input',
    0x0b: 'check input status',
    0x0c: 'clear buffer & input',
    0x0d: 'reset disk',
    0x0e: 'select default drive',
    0x19: 'get default drive',
    0x1a: 'set DTA address',
    0x1b: 'get FAT info (current drive)',
    0x1c: 'get FAT info (any drive)',
    0x1f: 'get DPB (current drive)',
    0x21: 'read file (FCB)',
    0x23: 'get file size (FCB)',
    0x25: 'set interrupt vector',
    0x27: 'read random (FCB)',
    0x28: 'write random (FCB)',
    0x29: 'parse filename (FCB)',
    0x2a: 'get system date',
    0x2b: 'set system date',
    0x2c: 'get system time',
    0x2d: 'set system time',
    0x2e: 'set verify flag',
    0x2f: 'get DTA address',
    0x30: 'get DOS version',
    0x31: 'terminate and stay resident',
    0x32: 'get DPB (any drive)',
    0x33: 'Ctrl-Break check',
    0x34: 'get InDos flag',
    0x35: 'get interrupt vector',
    0x36: 'get disk free space',
    0x38: 'get/set country info',
    0x39: 'create directory',
    0x3a: 'remove directory',
    0x3b: 'set current directory',
    0x3c: 'create file handle',
    0x3d: 'open file handle',
    0x3e: 'close file handle',
    0x3f: 'read file (handle)',
    0x40: 'write file (handle)',
    0x41: 'delete file (handle)',
    0x42: 'seek file (lseek)',
    0x43: 'get/set file attributes',
    0x44: 'IOCTL',
    0x45: 'duplicate handle',
    0x46: 'force duplicate handle',
    0x47: 'get current directory',
    0x48: 'allocate memory',
    0x49: 'free memory',
    0x4a: 'resize memory block',
    0x4b: 'exec (load/run program)',
    0x4c: 'exit with return code',
    0x4d: 'get return code',
    0x4e: 'find first file (DTA)',
    0x4f: 'find next file (DTA)',
    0x50: 'set PSP',
    0x51: 'get PSP',
    0x52: 'get DOS list of lists',
    0x54: 'get verify flag',
    0x56: 'rename file',
    0x57: 'get/set file date/time',
    0x58: 'get/set allocation strategy',
    0x59: 'get extended error',
    0x5a: 'create temp file',
    0x5b: 'create new file',
    0x5c: 'lock/unlock file region',
    0x5e: 'get/set network params',
    0x5f: 'get/set redirection',
    0x62: 'get PSP',
}

_BIOS_VIDEO_FUNCTIONS = {
    0x00: 'set video mode',
    0x01: 'set cursor shape',
    0x02: 'set cursor position',
    0x03: 'get cursor position',
    0x05: 'select active page',
    0x06: 'scroll up',
    0x07: 'scroll down',
    0x08: 'read char/attribute',
    0x09: 'write char/attribute',
    0x0a: 'write char',
    0x0b: 'set border/background',
    0x0c: 'write pixel',
    0x0d: 'read pixel',
    0x0e: 'teletype output',
    0x0f: 'get video mode',
    0x10: 'set palette registers',
    0x11: 'character generator',
    0x12: 'alternate select',
    0x13: 'write string',
}

_BIOS_DISK_FUNCTIONS = {
    0x00: 'reset disk system',
    0x01: 'get disk status',
    0x02: 'read sectors',
    0x03: 'write sectors',
    0x04: 'verify sectors',
    0x05: 'format track',
    0x08: 'get drive parameters',
    0x0c: 'seek to cylinder',
    0x10: 'get drive status',
    0x11: 'recalibrate drive',
    0x15: 'get disk type',
    0x16: 'get floppy change status',
    0x17: 'set disk type',
    0x18: 'set floppy type',
}

_BIOS_KBD_FUNCTIONS = {
    0x00: 'read keystroke',
    0x01: 'check keystroke',
    0x02: 'get shift status',
    0x03: 'set typematic rate',
    0x10: 'extended read keystroke',
    0x11: 'extended check keystroke',
    0x12: 'extended shift status',
}

_BIOS_TIMER_FUNCTIONS = {
    0x00: 'get system tick count',
    0x01: 'set system tick count',
    0x02: 'get CMOS time',
    0x03: 'set CMOS time',
}

_BIOS_MOUSE_FUNCTIONS = {
    0x00: 'reset mouse',
    0x01: 'show mouse cursor',
    0x02: 'hide mouse cursor',
    0x03: 'get mouse position',
    0x04: 'set mouse position',
    0x05: 'get button press info',
    0x06: 'get button release info',
    0x07: 'set horizontal limits',
    0x08: 'set vertical limits',
    0x09: 'set graphics cursor',
    0x0a: 'set text cursor',
    0x0b: 'read motion counters',
    0x0c: 'set event handler',
    0x0f: 'set mouse speed',
    0x10: 'set mouse page',
}

_BIOS_SYSTEM_FUNCTIONS = {
    0x41: 'read system info word',
    0x84: 'joystick support',
    0x85: 'SysRq key',
    0x86: 'wait (microseconds)',
    0x87: 'move extended memory block',
    0x88: 'get extended memory size',
    0x89: 'enter protected mode',
    0xc0: 'get system configuration',
    0xc1: 'get extended BIOS data area',
}

_INT_FUNCTION_TABLES = {
    0x10: _BIOS_VIDEO_FUNCTIONS,
    0x13: _BIOS_DISK_FUNCTIONS,
    0x15: _BIOS_SYSTEM_FUNCTIONS,
    0x16: _BIOS_KBD_FUNCTIONS,
    0x1a: _BIOS_TIMER_FUNCTIONS,
    0x33: _BIOS_MOUSE_FUNCTIONS,
}

_CFLOW_INSTS = frozenset({'int', 'call', 'jmp', 'ret', 'iret', 'hlt', 'retf', 'retn', 'ljmp', 'lcall'})


def _set_insn_fields(rec, insn):
    """Set structured fields on *rec* from a capstone instruction object."""
    if insn is None:
        return
    if insn.mnemonic == 'int' and len(insn.operands) > 0:
        rec['int_num'] = insn.operands[0].imm & 0xFF
    if (insn.mnemonic == 'mov' and len(insn.operands) == 2
        and insn.operands[0].type == CS_OP_REG
        and insn.reg_name(insn.operands[0].reg) == 'ah'
        and insn.operands[1].type == CS_OP_IMM):
        rec['ah_value'] = insn.operands[1].imm & 0xFF
    if insn.mnemonic in _CFLOW_INSTS:
        rec['cflow'] = True


def _annotate_interrupts(records):
    """Post-process records to annotate `int` instructions with DOS/BIOS function names."""
    for i, rec in enumerate(records):
        rtype = rec['type']
        if rtype not in ('mnem', 'db_with_comment'):
            continue

        vec = rec.get('int_num')
        if vec is None:
            continue

        if vec == 0x21:
            found = False
            for j in range(i - 1, -1, -1):
                prev = records[j]
                if prev['type'] not in ('mnem', 'db_with_comment'):
                    continue
                if prev.get('cflow'):
                    break
                ah = prev.get('ah_value')
                if ah is not None:
                    desc = _DOS_FUNCTIONS.get(ah)
                    if desc:
                        rec['annotation'] = f'DOS {desc}'
                        found = True
                    break
            if not found:
                rec['annotation'] = 'DOS function dispatcher'

        elif vec in _INT_FUNCTION_TABLES:
            func_table = _INT_FUNCTION_TABLES[vec]
            base = _INT_DESCRIPTIONS.get(vec, f'INT 0x{vec:02x}')
            found = False
            for j in range(i - 1, -1, -1):
                prev = records[j]
                if prev['type'] not in ('mnem', 'db_with_comment'):
                    continue
                if prev.get('cflow'):
                    break
                ah = prev.get('ah_value')
                if ah is not None:
                    fdesc = func_table.get(ah)
                    if fdesc:
                        rec['annotation'] = f'{base}: {fdesc}'
                        found = True
                    break
            if not found:
                desc = _INT_DESCRIPTIONS.get(vec)
                if desc:
                    rec['annotation'] = desc

        else:
            desc = _INT_DESCRIPTIONS.get(vec)
            if desc:
                rec['annotation'] = desc


def _try_decode_block(raw_bytes, start_offset):
    """Try to disassemble *raw_bytes* as 16-bit x86 instructions.

    Returns (instructions, all_decoded, has_control_flow) or
    (None, False, False) for all-zero or undecodable blocks.
    """
    if not raw_bytes or all(b == 0 for b in raw_bytes):
        return None, False, False

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True

    insns = list(md.disasm(raw_bytes, start_offset))
    if not insns:
        return None, False, False

    consumed = sum(insn.size for insn in insns)
    all_decoded = consumed >= len(raw_bytes)

    ctrl_flow = frozenset({'ret', 'retf', 'iret', 'retn', 'call', 'lcall', 'jmp', 'ljmp',
                            'jcxz', 'jecxz', 'loop', 'loope', 'loopne'})
    has_ctrl = any(
        insn.mnemonic in ctrl_flow
        or (insn.mnemonic.startswith('j')
            and insn.mnemonic not in ('jmp', 'ljmp')
            and len(insn.mnemonic) > 1)
        for insn in insns
    )
    return insns, all_decoded, has_ctrl


def _detect_jump_table(raw_bytes, start_offset, binary_len, known_addrs):
    """Check if *raw_bytes* is a jump table (consecutive word code pointers).

    Returns the number of valid entries or None.
    """
    n = len(raw_bytes)
    if n < 6:
        return None

    skip = start_offset % 2
    if skip >= n:
        return None

    zero_count = sum(1 for b in raw_bytes if b == 0)
    if zero_count > len(raw_bytes) // 2:
        return None

    entries = []
    off = skip
    while off + 2 <= n:
        val = struct.unpack_from('<H', raw_bytes, off)[0]
        is_addr = val != 0 and 0 <= val < binary_len and val in known_addrs
        entries.append(is_addr)
        off += 2

    if len(entries) < 3:
        return None

    best = 0
    cur = 0
    for flag in entries:
        if flag:
            cur += 1
            best = max(best, cur)
        else:
            cur = 0

    return best if best >= 3 else None


def _detect_file_format(raw_bytes):
    """Check if *raw_bytes* starts with a known file-format magic."""
    for offset, magic, name in _FILE_FORMATS:
        if len(raw_bytes) >= offset + len(magic):
            if raw_bytes[offset:offset + len(magic)] == magic:
                return name
    return None


def _generate_inline_code(insns, raw_bytes, start_offset, binary_data, label_map, local_labels=None, exact_bytes=False, foreign_label_map=None):
    """Build mnem/db_with_comment/db records for a code-like block."""
    from lib.format import format_instruction

    records = []
    data_added = 0

    for insn in insns:
        rel_off = insn.address - start_offset
        if rel_off < 0 or rel_off + insn.size > len(raw_bytes):
            break

        bts = raw_bytes[rel_off:rel_off + insn.size]

        if all(b == 0 for b in bts):
            for b in bts:
                records.append({
                    'type': 'db',
                    'text': f'0x{b:02x}',
                    'offset': insn.address,
                    'size': 1,
                })
            continue

        nasm_text = format_instruction(insn, label_map, local_labels, foreign_label_map=foreign_label_map)

        if nasm_text is None:
            for b in bts:
                records.append({
                    'type': 'db',
                    'text': f'0x{b:02x}',
                    'offset': insn.address,
                    'size': 1,
                })
            continue

        built = micro_assemble(nasm_text, insn.address, label_map, local_labels)
        ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
        if not ok and not exact_bytes and built:
            ok = is_semantically_equivalent(bts, built[:len(bts)], insn.address)
        if ok:
            new_text = None
            if label_map is not None:
                for op in insn.operands:
                    if op.type == CS_OP_MEM and op.mem.base == 0 and op.mem.index == 0:
                        addr = op.mem.disp & 0xFFFF
                        if addr != 0 and addr not in label_map:
                            label_map[addr] = f'data_{addr:04x}'
                            data_added += 1
                            clear_assemble_cache()
                            new_text = format_instruction(insn, label_map, local_labels, foreign_label_map=foreign_label_map)
                            if new_text:
                                rebuilt = micro_assemble(new_text, insn.address, label_map, local_labels)
                                if rebuilt and len(built) >= len(bts) and rebuilt[:len(bts)] == bts:
                                    nasm_text = new_text
            rec = {
                'type': 'mnem',
                'text': nasm_text,
                'offset': insn.address,
                'size': insn.size,
            }
            _set_insn_fields(rec, insn)
            records.append(rec)
        else:
            db_hex = ', '.join(f'0x{b:02x}' for b in bts)
            rec = {
                'type': 'db_with_comment',
                'text': nasm_text,
                'db_hex': db_hex,
                'offset': insn.address,
                'size': insn.size,
            }
            _set_insn_fields(rec, insn)
            records.append(rec)

    if diag_enabled() and data_added > 0:
        diag_phase('gen_inline')
        diag_emit('data_added', data_added)

    return records


def _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes=False, bitmap=None, carve_1=None, trace=None, local_labels=None, foreign_label_map=None):
    """Replace code-like data_block records with inline records;
    annotate jump tables and known file formats on the rest."""
    new_records = []
    binary_len = len(binary_data)

    promoted_blocks = 0
    promoted_mnemonics = 0
    skipped_all_data = 0
    skipped_carve = 0
    skipped_no_ctrl = 0
    partial_blocks = 0

    for rec in records:
        if rec['type'] != 'data_block':
            new_records.append(rec)
            continue

        start = rec['start']
        end = rec['end']
        raw = binary_data[start:end]

        if len(raw) < 2:
            new_records.append(rec)
            continue

        promoted = False
        reason = None

        # If bitmap marks the whole block as DATA, skip promotion
        # UNLESS preceded by CODE (e.g., dead code after ret)
        # AND the block is small (≤ 32 bytes).
        if bitmap is not None:
            block_bitmap = bitmap[start:end]
            if all(b == 2 for b in block_bitmap):
                preceded_by_code = start > 0 and bitmap[start - 1] == 1
                small_block = (end - start) <= 32
                if not (preceded_by_code and small_block):
                    reason = 'all DATA in bitmap' + (', not preceded by code' if not preceded_by_code else ', too large')
                    skipped_all_data += 1
                    new_records.append(rec)
                    if trace is not None:
                        trace.event('cascade', 'skipped', addr=start,
                                    end=end, size=end - start, reason=reason)
                    continue
                else:
                    if trace is not None:
                        trace.event('cascade', 'override_allowed', addr=start,
                                    end=end, size=end - start,
                                    reason='preceded by CODE, small')

        insns, all_decoded, has_ctrl = _try_decode_block(raw, start)
        if insns and has_ctrl:
            consumed = sum(i.size for i in insns)
            gap = len(raw) - consumed

            # If carve_1 is available, check each decoded instruction
            # against carve DATA signal. Stop promotion at the first
            # instruction that ends at or past the first strong carve
            # byte — keep the safe prefix as code and the tail as a
            # new data block.
            if carve_1 is not None:
                # Locate the first byte with strong carve DATA signal
                carve_frontier = None
                for offset in range(len(raw)):
                    if carve_1[start + offset] < -0.5:
                        carve_frontier = offset
                        break
                if carve_frontier is not None:
                    safe_end_offset = 0
                    for insn in insns:
                        insn_end = safe_end_offset + insn.size
                        if insn_end >= carve_frontier:
                            break
                        safe_end_offset = insn_end
                    if safe_end_offset == 0:
                        # No safe instruction — keep entire block as data
                        skipped_carve += 1
                        new_records.append(rec)
                        if trace is not None:
                            trace.event('cascade', 'carve_blocked',
                                        addr=start, end=end, size=end - start,
                                        reason='first instruction reaches carve frontier')
                        continue
                    if safe_end_offset < len(raw):
                        # Partial promotion: safe prefix → code, tail → data
                        safe_insns = [i for i in insns
                                      if i.address - start < safe_end_offset]
                        inline = _generate_inline_code(
                            safe_insns, raw[:safe_end_offset], start,
                            binary_data, label_map, local_labels, exact_bytes=True,
                            foreign_label_map=foreign_label_map)
                        if inline:
                            partial_blocks += 1
                            if trace is not None:
                                trace.event('cascade', 'partial_promote',
                                            addr=start,
                                            end=start + safe_end_offset,
                                            size=safe_end_offset,
                                            tail=len(raw) - safe_end_offset)
                            new_records.extend(inline)
                            tail_start = start + safe_end_offset
                            tail_hex = [f'0x{b:02x}'
                                        for b in raw[safe_end_offset:]]
                            new_records.append({
                                'type': 'data_block',
                                'start': tail_start,
                                'end': end,
                                'bytes': tail_hex,
                            })
                            continue
                    # safe_end_offset == len(raw) or inline failed —
                    # fall through to normal promotion

            if all_decoded or (0 < gap <= 3):
                inline = _generate_inline_code(insns, raw, start, binary_data, label_map, local_labels, exact_bytes=True,
                                               foreign_label_map=foreign_label_map)
                if inline:
                    promoted_blocks += 1
                    promoted_mnemonics += sum(1 for r in inline if r['type'] == 'mnem')
                    if trace is not None:
                        trace.event('cascade', 'promoted', addr=start,
                                    end=start + consumed, size=consumed,
                                    gap=gap, all_decoded=all_decoded)
                    new_records.extend(inline)
                    if gap > 0:
                        for g_off in range(consumed, len(raw)):
                            new_records.append({
                                'type': 'db',
                                'text': f'0x{raw[g_off]:02x}',
                                'offset': start + g_off,
                                'size': 1,
                            })
                    continue

        jt_count = _detect_jump_table(raw, start, binary_len, known_addrs)
        if jt_count is not None:
            rec['format_hint'] = f'Jump table: {jt_count} entries'
            skipped_no_ctrl += 1
            if trace is not None:
                trace.event('cascade', 'jump_table', addr=start,
                            end=end, size=end - start)
            new_records.append(rec)
            continue

        fmt = _detect_file_format(raw)
        if fmt is not None:
            rec['format_hint'] = fmt
            skipped_no_ctrl += 1
            if trace is not None:
                trace.event('cascade', 'file_format', addr=start,
                            end=end, size=end - start)
            new_records.append(rec)
            continue

        if trace is not None:
            trace.event('cascade', 'kept_as_data', addr=start,
                        end=end, size=end - start,
                        decoded=insns is not None,
                        all_decoded=all_decoded if insns else False,
                        has_ctrl=has_ctrl if insns else False)
        skipped_no_ctrl += 1
        new_records.append(rec)

    if diag_enabled():
        diag_phase('postproc')
        diag_emit('promoted_blocks', promoted_blocks)
        diag_emit('promoted_mnemonics', promoted_mnemonics)
        diag_emit('skipped_all_data', skipped_all_data)
        diag_emit('skipped_carve', skipped_carve)
        diag_emit('skipped_no_ctrl', skipped_no_ctrl)
        diag_emit('partial', partial_blocks)

    return new_records


def _group_db_lines(hex_bytes):
    """Group hex bytes into db lines, 16 bytes per line."""
    lines = []
    for i in range(0, len(hex_bytes), 16):
        chunk = hex_bytes[i:i + 16]
        lines.append(f'    db {", ".join(chunk)}')
    return lines


def _render_data_block(raw):
    """Render raw bytes as mixed string literals, zero-run repeats,
    and grouped hex db lines."""
    lines = []
    i = 0
    buf = []
    def flush():
        if buf:
            lines.extend(_group_db_lines(buf))
            buf.clear()
    while i < len(raw):
        b = raw[i]
        if b == 0:
            s = i
            i += 1
            while i < len(raw) and raw[i] == 0:
                i += 1
            run_len = i - s
            if run_len >= 4:
                flush()
                lines.append(f"    times {run_len} db 0")
            else:
                for _ in range(run_len):
                    buf.append('0x00')
            continue
        if 0x20 <= b < 0x7f:
            s = i
            i += 1
            while i < len(raw) and 0x20 <= raw[i] < 0x7f:
                i += 1
            if i - s < 5:
                for off in range(s, i):
                    buf.append(f'0x{raw[off]:02x}')
                continue
            raw_str = bytes(raw[s:i]).decode('ascii')
            has_nul = i < len(raw) and raw[i] == 0
            if has_nul:
                i += 1
            if "'" in raw_str and '"' in raw_str:
                for off in range(s, i):
                    buf.append(f'0x{raw[off]:02x}')
                continue
            flush()
            delim = '"' if "'" in raw_str else "'"
            if has_nul:
                lines.append(f"    db {delim}{raw_str}{delim}, 0")
            else:
                lines.append(f"    db {delim}{raw_str}{delim}")
            continue
        buf.append(f'0x{raw[i]:02x}')
        i += 1
    flush()
    return lines


def _emit_label(name):
    return f'{name}:'


def _compute_func_boundaries(label_map, binary_data):
    """Return {start: (end, name)} for each named function."""
    if not label_map:
        return {}
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    _TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}
    boundaries = {}
    for off in sorted(label_map.keys()):
        name = label_map[off]
        if name == f'loc_{off:04x}':
            continue
        func_start = off
        for i in range(min(16, off), 0, -1):
            p = off - i
            if binary_data[p] == 0x55:
                try:
                    prev = list(md.disasm(binary_data[p:off], p))
                except Exception:
                    prev = []
                if prev and prev[-1].address + prev[-1].size == off:
                    func_start = p
                    break
        end = min(func_start + 512, len(binary_data))
        for insn in md.disasm(binary_data[func_start:end], func_start):
            if insn.mnemonic in _TERMINATORS:
                end = insn.address + insn.size
                break
            end = insn.address + insn.size
        if func_start not in boundaries:
            boundaries[func_start] = (end, name)
    return boundaries


def _compute_local_labels(func_boundaries, code_targets, label_map, insn_by_addr=None):
    """Return {offset: '@..name.l{N}'} for code targets within named functions."""
    targets = set(code_targets) if code_targets else set()

    if insn_by_addr:
        flow_ops = frozenset((
            'jmp', 'call', 'je', 'jne', 'jl', 'jle', 'jg', 'jge',
            'ja', 'jb', 'jae', 'jbe', 'jz', 'jnz', 'js', 'jns',
            'jo', 'jno', 'jp', 'jnp', 'jcxz', 'jecxz',
            'loop', 'loope', 'loopne',
        ))
        for insn in insn_by_addr.values():
            if insn.mnemonic in flow_ops:
                for op in insn.operands:
                    if op.type == 2:
                        targets.add(op.imm & 0xFFFF)

    local_labels = {}
    assigned = set()

    if func_boundaries:
        for fn_start, (fn_end, fn_name) in sorted(func_boundaries.items()):
            n = 0
            for off in sorted(t for t in targets if fn_start < t < fn_end):
                if off not in label_map and off not in assigned:
                    n += 1
                    local_labels[off] = f'@..{fn_name}.l{n}'
                    assigned.add(off)

    flat_n = 0
    for off in sorted(t for t in targets if t not in label_map and t not in assigned):
        flat_n += 1
        local_labels[off] = f'@..local.l{flat_n}'

    return local_labels


def _flush_data_block(records, pending_data, data_block_start, end_off):
    """Append a data_block record if *pending_data* is non-empty."""
    if not pending_data:
        return None, []
    records.append({
        'type': 'data_block',
        'start': data_block_start,
        'end': end_off,
        'bytes': list(pending_data),
    })
    return None, []


def _emit_label_record(records, off, label_map, local_labels=None, insn_by_addr=None):
    if label_map and off in label_map:
        name = label_map[off]
        if name.startswith('data_'):
            if local_labels and off in local_labels:
                records.append({
                    'type': 'label',
                    'text': _emit_label(local_labels[off]),
                    'offset': off,
                })
            return
        if name.startswith('loc_') and local_labels and off in local_labels:
            records.append({
                'type': 'label',
                'text': _emit_label(local_labels[off]),
                'offset': off,
            })
            return
        records.append({
            'type': 'label',
            'text': f'{_emit_label(name)}',
            'offset': off,
        })
    elif local_labels and off in local_labels:
        records.append({
            'type': 'label',
            'text': _emit_label(local_labels[off]),
            'offset': off,
        })
    else:
        records.append({
            'type': 'label',
            'text': _emit_label(f'loc_{off:04x}'),
            'offset': off,
        })


_BARE_MEM_RE = re.compile(r'\[(?:[a-z]+:)?0x[0-9a-f]{4}\]')
_BARE_FLOW_RE = re.compile(r'\b(?:call|jmp|retf)\s+0x[0-9a-f]{4}\b')

def _count_bare_addrs(records):
    bare_mem = 0
    bare_call = 0
    bare_dbc = 0
    for r in records:
        t = r.get('text')
        if not t:
            continue
        if r['type'] == 'mnem':
            if _BARE_MEM_RE.search(t):
                bare_mem += 1
            if _BARE_FLOW_RE.search(t):
                bare_call += 1
        elif r['type'] == 'db_with_comment':
            if _BARE_FLOW_RE.search(t) or _BARE_MEM_RE.search(t):
                bare_dbc += 1
    return bare_mem, bare_call, bare_dbc


def verify(binary_data, start_offset, instructions, name='', label_map=None,
           bitmap=None, code_targets=None, exact_bytes=False, show_offsets=False,
           structs=None, asm_dir=None, cascade_promoted=None,
           carve_1=None, trace=None,
           foreign_label_map=None):
    """Produce NASM source text from *binary_data* and *instructions*.

    Parameters
    ----------
    binary_data : bytes
    start_offset : int
        Number of header bytes at the start of *binary_data*.
    instructions : iterable of capstone instructions
    name : str
    label_map : dict | None
    bitmap : bytearray | None
    code_targets : set | None
    structs : list | None
    asm_dir : str | None
    cascade_promoted : set | None

    Returns (asm_text, stats).
    """
    from lib.format import format_instruction

    insns = list(instructions)
    total = len(binary_data)

    insn_by_addr = {insn.address: insn for insn in insns}

    known_addrs = set(label_map.keys()) if label_map else set()
    if code_targets:
        known_addrs |= code_targets

    t0 = time.perf_counter()

    # Discover hidden address references from MZ relocation table
    reloc_targets = _parse_mz_relocs(binary_data, start_offset)
    if reloc_targets and code_targets is not None:
        code_targets |= reloc_targets

    func_boundaries = _compute_func_boundaries(label_map, binary_data)
    t1 = time.perf_counter()
    local_labels = _compute_local_labels(func_boundaries, code_targets, label_map, insn_by_addr)
    t2 = time.perf_counter()

    if label_map:
        bad = set()
        for off in label_map:
            for addr, insn in insn_by_addr.items():
                if addr < off < addr + insn.size:
                    bad.add(off)
                    break
        for off in bad:
            del label_map[off]
        known_addrs = set(label_map.keys())
        if code_targets:
            known_addrs |= code_targets
    if local_labels:
        local_labels = {
            off: name for off, name in local_labels.items()
            if off in insn_by_addr
        }
        known_addrs |= local_labels.keys()

    # ── Pre-collect data labels from insn operands, MZ relocs, and data gaps ──
    data_refs = set()
    if reloc_targets:
        data_refs.update(reloc_targets)
    for insn in insns:
        for op in insn.operands:
            if op.type == CS_OP_MEM and op.mem.base == 0 and op.mem.index == 0:
                addr = op.mem.disp & 0xFFFF
                if addr != 0:
                    data_refs.add(addr)
    covered = bytearray(total)
    for addr, insn in insn_by_addr.items():
        for i in range(addr, addr + insn.size):
            if i < total:
                covered[i] = 1
    i = start_offset
    while i < total:
        if not covered[i]:
            s = i
            while i < total and not covered[i]:
                i += 1
            raw = binary_data[s:i]
            for off in range(0, len(raw) - 1, 2):
                val = struct.unpack_from('<H', raw, off)[0]
                if val in known_addrs and val != 0:
                    data_refs.add(val)
        else:
            i += 1
    data_labels = {}
    for addr in sorted(data_refs):
        if addr == 0:
            continue
        dname = f'data_{addr:04x}'
        data_labels[addr] = dname
        if label_map is not None and addr not in label_map:
            if code_targets is not None and addr in code_targets:
                continue
            label_map[addr] = dname

    # ── Pre-collect data labels from insn operands, MZ relocs, and data gaps ──
    consumer_inc = None
    if foreign_label_map and asm_dir and name:
        from lib.cross_ref import write_label_inc
        labels_dir = os.path.join(asm_dir, 'labels')
        os.makedirs(labels_dir, exist_ok=True)
        inc_name = f'{name}_foreign_labels.inc'
        write_label_inc(foreign_label_map, os.path.join(labels_dir, inc_name))
        consumer_inc = f'labels/{inc_name}'

    records = []
    pending_data = []
    data_block_start = None

    off = start_offset
    while off < total:
        if off in known_addrs and (off in insn_by_addr or (label_map and off in label_map and label_map[off].startswith('data_')) or (local_labels and off in local_labels)):
            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )
            _emit_label_record(records, off, label_map, local_labels, insn_by_addr)
        insn = insn_by_addr.get(off)

        if insn is not None:
            insn_end = off + insn.size

            inner_labels = sorted(
                a for a in known_addrs
                if off < a < insn_end and (a in insn_by_addr or (label_map and a in label_map and label_map[a].startswith('data_')) or (local_labels and a in local_labels))
            )

            if inner_labels:
                data_block_start, pending_data = _flush_data_block(
                    records, pending_data, data_block_start, off,
                )
                chunk_start = off
                for lab in inner_labels:
                    for b_off in range(chunk_start, lab):
                        records.append({
                            'type': 'db',
                            'text': f'0x{binary_data[b_off]:02x}',
                            'offset': b_off,
                            'size': 1,
                        })
                    _emit_label_record(records, lab, label_map, local_labels, insn_by_addr)
                    chunk_start = lab
                for b_off in range(chunk_start, insn_end):
                    records.append({
                        'type': 'db',
                        'text': f'0x{binary_data[b_off]:02x}',
                        'offset': b_off,
                        'size': 1,
                    })
                off = insn_end
                continue

            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )

            bts = binary_data[off:insn_end]
            nasm_text = format_instruction(insn, label_map, local_labels, foreign_label_map)

            if nasm_text:
                built = micro_assemble(nasm_text, off, label_map, local_labels, foreign_label_map=foreign_label_map)
                exact_here = exact_bytes
                ok = built and len(built) >= len(bts) and built[:len(bts)] == bts
                if not ok and not exact_here and built:
                    ok = is_semantically_equivalent(bts, built[:len(bts)], off)
                if ok:
                    rec = {
                        'type': 'mnem',
                        'text': nasm_text,
                        'offset': off,
                        'size': insn.size,
                    }
                    _set_insn_fields(rec, insn)
                    records.append(rec)
                else:
                    db_hex = ', '.join(f'0x{b:02x}' for b in bts)
                    rec = {
                        'type': 'db_with_comment',
                        'text': nasm_text,
                        'db_hex': db_hex,
                        'offset': off,
                        'size': insn.size,
                    }
                    _set_insn_fields(rec, insn)
                    records.append(rec)
            else:
                db_hex = ', '.join(f'0x{b:02x}' for b in bts)
                records.append({
                    'type': 'db',
                    'text': db_hex,
                    'offset': off,
                    'size': insn.size,
                })
            off = insn_end

        else:
            if data_block_start is None:
                data_block_start = off
            pending_data.append(f'0x{binary_data[off]:02x}')
            off += 1

    if pending_data:
        records.append({
            'type': 'data_block',
            'start': data_block_start,
            'end': total,
            'bytes': list(pending_data),
        })

    t3 = time.perf_counter()
    records = _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes, bitmap, carve_1, trace, local_labels,
                                       foreign_label_map=foreign_label_map)
    _annotate_interrupts(records)
    t4 = time.perf_counter()

    emit_class = bytearray(total)
    label_positions = bytearray(total)
    for rec in records:
        if rec['type'] == 'label':
            off = rec['offset']
            if off < total:
                label_positions[off] = 1
            continue
        if rec['type'] == 'mnem':
            off, sz = rec['offset'], rec['size']
            for i in range(off, off + sz):
                emit_class[i] = IS_CODE
        elif rec['type'] in ('data_block', 'db', 'db_with_comment'):
            if rec['type'] == 'data_block':
                for i in range(rec['start'], rec['end']):
                    emit_class[i] = IS_DATA
            else:
                off, sz = rec['offset'], rec.get('size', 1)
                for i in range(off, off + sz):
                    emit_class[i] = IS_DATA

    t5 = time.perf_counter()

    bare_mem, bare_call, bare_dbc = _count_bare_addrs(records)

    src_lines = _build_source(records, start_offset, binary_data, label_map, show_offsets=show_offsets,
                              consumer_inc=consumer_inc)
    t6 = time.perf_counter()

    mnem_count = sum(1 for r in records if r['type'] == 'mnem')
    db_count = sum(1 for r in records if r['type'] == 'db')
    dbc_count = sum(1 for r in records if r['type'] == 'db_with_comment')
    data_blocks = sum(1 for r in records if r['type'] == 'data_block')
    label_count = sum(1 for r in records if r['type'] == 'label')

    code_loss = 0
    if label_map:
        for off, name in label_map.items():
            if name.startswith('loc_') and off < total and emit_class[off] == IS_DATA:
                code_loss += 1

    struct_count = 0
    if structs:
        from lib.struct_analysis import write_struct_inc_files
        if asm_dir is None:
            asm_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        structs_dir = os.path.join(asm_dir, 'structs')
        inc_line = write_struct_inc_files(structs, name, structs_dir)
        if inc_line:
            src_lines = '%include "structs/structs.inc"\n' + inc_line + '\n' + src_lines
            struct_count = len(structs)

    return src_lines, {
        'mnemonic': mnem_count,
        'data': db_count,
        'with_comment': dbc_count,
        'data_blocks': data_blocks,
        'labels': label_count,
        'structs': struct_count,
        'bare_mem': bare_mem,
        'bare_call': bare_call,
        'bare_dbc': bare_dbc,
        'code_loss': code_loss,
        'status': 'OK',
        'timing_func_boundaries': t1 - t0,
        'timing_local_labels': t2 - t1,
        'timing_main_loop': t3 - t2,
        'timing_postprocess': t4 - t3,
        'timing_emit_class': t5 - t4,
        'timing_build_source': t6 - t5,
    }, emit_class, label_positions


def _build_source(records, start_offset, binary_data, label_map=None, show_offsets=False,
                  consumer_inc=None):
    """Render the record list to final NASM text."""
    out = []
    out.append('org 0')
    out.append('bits 16')
    if consumer_inc:
        out.append(f'%include "{consumer_inc}"')
        out.append('')

    if start_offset > 0:
        hdr = binary_data[:start_offset]
        out.append(f'    ; header ({start_offset} bytes)')
        out.extend(_render_data_block(hdr))
        out.append('')

    if label_map:
        label_offsets = {r['offset'] for r in records if r['type'] == 'label'}
        for addr in sorted(label_map):
            name = label_map[addr]
            if name.startswith('data_'):
                out.append(f'{name} equ 0x{addr:04x}')
            elif addr not in label_offsets:
                out.append(f'{name} equ 0x{addr:04x}')
        out.append('')

    i = 0
    while i < len(records):
        rec = records[i]

        if rec['type'] == 'label':
            out.append(f'{rec["text"]}')

        elif rec['type'] == 'data_block':
            blk_size = rec['end'] - rec['start']
            fmt = rec.get('format_hint', '')
            is_tiny = blk_size < 16
            if not is_tiny:
                out.append('')
            if fmt:
                out.append(f'; {"=" * 42}')
                out.append(f'; {fmt} (offsets 0x{rec["start"]:04x} - 0x{rec["end"] - 1:04x})')
                out.append(f'; {"=" * 42}')
            out.extend(_render_data_block(binary_data[rec['start']:rec['end']]))
            if not is_tiny:
                out.append('')

        elif rec['type'] == 'mnem':
            annotation = rec.get('annotation')
            if annotation:
                out.append(f'    {rec["text"]} ; {annotation}')
            elif show_offsets:
                out.append(f'    {rec["text"]:<32s} ; 0x{rec["offset"]:04x}')
            else:
                out.append(f'    {rec["text"]}')

        elif rec['type'] == 'db_with_comment':
            annotation = rec.get('annotation')
            if annotation:
                out.append(f'    db {rec["db_hex"]} ; {rec["text"]}  ; {annotation}')
            else:
                out.append(f'    db {rec["db_hex"]} ; {rec["text"]}')

        elif rec['type'] == 'db':
            hexes = []
            zero_run = 0
            while i < len(records) and records[i]['type'] == 'db':
                text = records[i]['text']
                if text == '0x00':
                    zero_run += 1
                    if zero_run == 1:
                        if hexes:
                            out.extend(_group_db_lines(hexes))
                            hexes = []
                else:
                    if zero_run:
                        if zero_run >= 4:
                            out.append(f'    times {zero_run} db 0')
                        else:
                            hexes.extend(['0x00'] * zero_run)
                        zero_run = 0
                    hexes.append(text)
                i += 1
            if zero_run:
                if zero_run >= 4:
                    out.append(f'    times {zero_run} db 0')
                else:
                    hexes.extend(['0x00'] * zero_run)
            if hexes:
                out.extend(_group_db_lines(hexes))
            continue

        i += 1

    out.append('')
    return '\n'.join(out)
