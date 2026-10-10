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
    rec['_insn'] = insn
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


def _generate_inline_code(insns, raw_bytes, start_offset, binary_data, label_map, local_labels=None, exact_bytes=False, foreign_label_map=None, immediate_labels=None):
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

        nasm_text = format_instruction(insn, label_map, local_labels, foreign_label_map=foreign_label_map, immediate_labels=immediate_labels)

        if nasm_text is None:
            for b in bts:
                records.append({
                    'type': 'db',
                    'text': f'0x{b:02x}',
                    'offset': insn.address,
                    'size': 1,
                })
            continue

        built = micro_assemble(nasm_text, insn.address, label_map, local_labels, immediate_labels=immediate_labels)
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
                            new_text = format_instruction(insn, label_map, local_labels, foreign_label_map=foreign_label_map, immediate_labels=immediate_labels)
                            if new_text:
                                rebuilt = micro_assemble(new_text, insn.address, label_map, local_labels, immediate_labels=immediate_labels)
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


def _postprocess_data_blocks(records, binary_data, known_addrs, label_map, exact_bytes=False, bitmap=None, carve_1=None, trace=None, local_labels=None, foreign_label_map=None, immediate_labels=None, hard_data=None):
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

        if hard_data is not None and any(hard_data[start:end]):
            new_records.append(rec)
            if trace is not None:
                trace.event('cascade', 'skipped', addr=start, end=end,
                            size=end - start, reason='explicit force_data')
            continue

        # A verifier data block can begin with one decoded code byte (often a
        # return) followed by a much larger classifier-DATA run. Treat a
        # small prefix as part of the boundary, not as evidence that the whole
        # block is dead code after a return.
        if bitmap is not None:
            data_start = start
            while data_start < end and bitmap[data_start] != IS_DATA:
                data_start += 1
            long_data_tail = (
                0 <= data_start - start <= 3
                and end - data_start > 32
                and all(b == IS_DATA for b in bitmap[data_start:end])
            )
            if long_data_tail:
                new_records.append(rec)
                if trace is not None:
                    trace.event('cascade', 'skipped', addr=start, end=end,
                                size=end - start,
                                reason='long classifier-DATA tail')
                continue

        promoted = False
        reason = None

        # If bitmap marks the whole block as DATA, skip promotion
        # UNLESS preceded by CODE (e.g., dead code after ret) AND the
        # entire contiguous DATA run is small (≤ 32 bytes). Looking at the
        # full run prevents labels or record boundaries from fragmenting a
        # large table into individually promotable small blocks.
        if bitmap is not None:
            block_bitmap = bitmap[start:end]
            if all(b == IS_DATA for b in block_bitmap):
                data_run_start = start
                while (data_run_start > 0
                       and bitmap[data_run_start - 1] == IS_DATA):
                    data_run_start -= 1
                data_run_end = end
                while (data_run_end < len(bitmap)
                       and bitmap[data_run_end] == IS_DATA):
                    data_run_end += 1

                preceded_by_code = (
                    data_run_start > 0
                    and bitmap[data_run_start - 1] == IS_CODE
                )
                small_data_run = (data_run_end - data_run_start) <= 32
                if not (preceded_by_code and small_data_run):
                    reason = (
                        'all DATA in bitmap'
                        + (', not preceded by code' if not preceded_by_code
                           else ', contiguous data run too large')
                    )
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
                                    reason='preceded by CODE, short data run')

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
                            foreign_label_map=foreign_label_map,
                            immediate_labels=immediate_labels)
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
                                               foreign_label_map=foreign_label_map,
                                               immediate_labels=immediate_labels)
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
        current = list(md.disasm(binary_data[off:min(off + 8, len(binary_data))], off))
        has_entry_prefix = (
            len(current) >= 3
            and current[0].address == off
            and current[1].address == off + current[0].size
            and current[0].mnemonic not in ('ret', 'retf', 'retn', 'iret',
                                            'hlt', 'jmp', 'ljmp', 'ud2')
            and current[1].mnemonic == 'push'
            and current[1].op_str == 'bp'
            and current[2].mnemonic == 'mov'
            and current[2].op_str == 'bp, sp'
        )
        if not has_entry_prefix:
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


def _direct_flow_targets(insn, binary_size, start_offset=0):
    """Return in-binary targets of direct control-flow instructions."""
    mnemonic = insn.mnemonic
    if not (mnemonic.startswith('j') or mnemonic in (
            'call', 'lcall', 'loop', 'loope', 'loopne')):
        return ()
    immediates = [op for op in insn.operands if op.type == CS_OP_IMM]
    if mnemonic in ('ljmp', 'lcall') and len(immediates) >= 2:
        # Far transfers have segment and offset immediates; only the offset
        # denotes a location in this flat binary image.
        immediates = immediates[-1:]
    return tuple(
        target for op in immediates
        if start_offset <= (target := (op.imm & 0xFFFF)) < binary_size
    )


def _is_conditional_branch(mnemonic):
    return ((mnemonic.startswith('j') and mnemonic not in ('jmp', 'ljmp'))
            or mnemonic in ('loop', 'loope', 'loopne', 'jcxz', 'jecxz'))


def _direct_branch_targets(insn, binary_size, start_offset=0):
    """Return immediate destinations of direct jumps, excluding calls."""
    mnemonic = insn.mnemonic
    if not (mnemonic.startswith('j') or mnemonic in (
            'loop', 'loope', 'loopne')):
        return ()
    return _direct_flow_targets(insn, binary_size, start_offset)


def _function_roots(label_map, instructions, entry_points=(),
                    binary_size=None, start_offset=0):
    """Find function roots from named labels, entries and direct calls."""
    roots = {}
    for address, name in (label_map or {}).items():
        if name.startswith(('loc_', 'data_')):
            continue
        roots[address] = name

    for address in entry_points or ():
        roots.setdefault(address, None)

    size = binary_size if binary_size is not None else 0x10000
    for insn in instructions or ():
        if insn.mnemonic not in ('call', 'lcall'):
            continue
        for address in _direct_flow_targets(insn, size, start_offset):
            name = (label_map or {}).get(address)
            if name and name.startswith(('loc_', 'data_')):
                name = None
            roots.setdefault(address, name)
    return roots


def _compute_branch_ownership(instructions, function_roots,
                              branch_edges=(), extra_flow_edges=(),
                              binary_size=None, start_offset=0):
    """Return reachable function owners and direct branch edges.

    Reachability follows decoded instructions, so a reachable block after a
    return instruction is still owned by its function when a branch reaches
    it. Calls create separate roots but continue at their fallthrough site.
    """
    insn_by_addr = {insn.address: insn for insn in instructions or ()}
    ordered = sorted(insn_by_addr.values(), key=lambda insn: insn.address)
    size = binary_size if binary_size is not None else 0x10000
    roots = {
        address: name for address, name in (function_roots or {}).items()
        if address in insn_by_addr and start_offset <= address < size
    }
    root_addresses = set(roots)

    direct_edges = set(branch_edges or ())
    for insn in ordered:
        for target in _direct_branch_targets(insn, size, start_offset):
            direct_edges.add((insn.address, target))

    outgoing = {insn.address: set() for insn in ordered}
    edge_sources = {}
    for source, target in direct_edges | set(extra_flow_edges or ()):
        if source not in insn_by_addr or not (start_offset <= target < size):
            continue
        outgoing[source].add(target)
        if (source, target) in direct_edges:
            edge_sources.setdefault(target, set()).add(source)

    for index, insn in enumerate(ordered):
        mnemonic = insn.mnemonic
        if mnemonic in ('ret', 'retf', 'iret', 'hlt', 'ud2'):
            continue
        next_address = insn.address + insn.size
        has_fallthrough = (
            mnemonic in ('call', 'lcall')
            or _is_conditional_branch(mnemonic)
            or mnemonic not in ('jmp', 'ljmp')
        )
        if (has_fallthrough and index + 1 < len(ordered)
                and ordered[index + 1].address == next_address):
            outgoing[insn.address].add(next_address)

    owners = {}

    def propagate(root):
        pending = [root]
        visited = set()
        while pending:
            address = pending.pop()
            if address in visited:
                continue
            visited.add(address)
            if address != root and address in root_addresses:
                continue
            owners.setdefault(address, set()).add(root)
            pending.extend(outgoing.get(address, ()))

    for root in sorted(roots):
        propagate(root)

    # Classifier output can contain detached code islands with no named
    # function or call-site root (for example, switch arms reached through an
    # indirect jump table that was not recovered). Group each rootless weak
    # CFG component under one inferred owner so its arms and shared epilogues
    # retain a common local scope.
    all_addresses = set(insn_by_addr)
    unowned = all_addresses - owners.keys()
    undirected = {address: set() for address in unowned}
    for source in unowned:
        for target in outgoing.get(source, ()):
            if target in unowned:
                undirected[source].add(target)
                undirected[target].add(source)
    while unowned:
        component = set()
        pending = [min(unowned)]
        while pending:
            address = pending.pop()
            if address in component:
                continue
            component.add(address)
            pending.extend(undirected.get(address, ()) - component)
        incoming = {
            target for source in component
            for target in outgoing.get(source, ()) if target in component
        }
        external_owners = {
            owner
            for source in component
            for target in outgoing.get(source, ())
            if target not in component
            for owner in owners.get(target, ())
        }
        if len(external_owners) == 1:
            root = next(iter(external_owners))
        else:
            entries = sorted(component - incoming)
            root = entries[0] if entries else min(component)
            roots[root] = None
            root_addresses.add(root)
        for address in component:
            owners.setdefault(address, set()).add(root)
        unowned -= component

    return owners, edge_sources, direct_edges, roots


def _local_branch_targets(branch_targets, owners, edge_sources,
                          function_roots):
    """Select branch targets uniquely owned by one non-entry function."""
    root_addresses = set(function_roots or ())
    local = set()
    for target in branch_targets or ():
        target_owners = owners.get(target, set())
        if target in root_addresses or len(target_owners) != 1:
            continue
        sources = edge_sources.get(target, set())
        if not sources:
            continue
        owner = next(iter(target_owners))
        if all(owners.get(source) == {owner} for source in sources):
            local.add(target)
    return local


def _compute_local_labels(local_targets, owners, function_roots, label_map):
    """Return local assembly names for branch targets with unique owners."""
    local_labels = {}
    named_counts = {}
    generic_targets = []
    for off in sorted(local_targets or ()):
        if off in (label_map or {}):
            continue
        owner_set = owners.get(off, set())
        if len(owner_set) != 1:
            continue
        owner = next(iter(owner_set))
        name = (function_roots or {}).get(owner)
        if name and not name.startswith(('loc_', 'data_')):
            named_counts[owner] = named_counts.get(owner, 0) + 1
            local_labels[off] = f'@..{name}.l{named_counts[owner]}'
        else:
            generic_targets.append(off)

    for index, off in enumerate(generic_targets, 1):
        local_labels[off] = f'@..local.l{index}'
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


def _emit_label_record(records, off, label_map, local_labels=None,
                       insn_by_addr=None, label_comments=None):
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
        text = _emit_label(name)
        if label_comments and off in label_comments:
            text = f'{text} {label_comments[off]}'
        records.append({
            'type': 'label',
            'text': text,
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
_BARE_FLOW_RE = re.compile(
    r'\b(?:call|jmp|j[a-z]+|loop(?:e|ne)?)\s+'
    r'(?:(?:short|near|far)\s+)?(?:0x[0-9a-f]{1,4}:)?0x[0-9a-f]{1,4}\b'
)

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
           bitmap=None, code_targets=None, exact_bytes=False, show_offsets=True,
           structs=None, asm_dir=None, cascade_promoted=None,
           carve_1=None, trace=None,
           foreign_label_map=None,
           immediate_labels=None, split_functions=None, hard_data=None,
           function_roots=None, branch_targets=None, branch_edges=None,
           extra_flow_edges=None, label_comments=None, c_overrides=None):
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
    hard_data : bytearray | None
        Explicit sidecar data bytes that may not be promoted or labeled as code.
    structs : list | None
    asm_dir : str | None
    cascade_promoted : set | None

    Returns (asm_text, stats, emit_bytes, label_positions, split_sources).
    """
    from lib.format import format_instruction

    total = len(binary_data)
    if hard_data is None:
        hard_data = bytearray(total)
    else:
        hard_data = bytearray(hard_data[:total])
        hard_data.extend([0] * (total - len(hard_data)))
    # Classification may be refined after the instruction list was decoded.
    # The final bitmap is authoritative for emission: stale instructions over
    # bytes now classified as DATA must be rendered as data, not mnemonics.
    insns = []
    for insn in instructions:
        start = insn.address
        end = start + insn.size
        if start < 0 or end > total or any(hard_data[start:end]):
            continue
        if bitmap is not None and any(
                bitmap[off] != IS_CODE for off in range(start, end)):
            continue
        insns.append(insn)
    if label_map is None:
        label_map = {}
    else:
        label_map = {
            off: label for off, label in label_map.items()
            if not (0 <= off < total and hard_data[off])
        }
    if code_targets:
        code_targets = {
            off for off in code_targets
            if not (0 <= off < total and hard_data[off])
        }
    classifier_code_targets = set(code_targets or ())
    branch_targets = {
        off for off in (branch_targets or ())
        if not (0 <= off < total and hard_data[off])
    }
    branch_edges = {
        (source, target) for source, target in (branch_edges or ())
        if not (0 <= source < total and hard_data[source])
        and not (0 <= target < total and hard_data[target])
    }
    extra_flow_edges = {
        (source, target) for source, target in (extra_flow_edges or ())
        if not (0 <= source < total and hard_data[source])
        and not (0 <= target < total and hard_data[target])
    }

    insn_by_addr = {insn.address: insn for insn in insns}
    initial_insn_addrs = set(insn_by_addr)

    known_addrs = set(label_map.keys()) if label_map else set()
    if code_targets:
        known_addrs |= code_targets

    t0 = time.perf_counter()

    # Discover hidden address references from MZ relocation table
    reloc_targets = _parse_mz_relocs(binary_data, start_offset)
    reloc_targets = {
        off for off in reloc_targets
        if not (0 <= off < total and hard_data[off])
    }
    if reloc_targets and code_targets is not None:
        code_targets |= reloc_targets

    func_boundaries = _compute_func_boundaries(label_map, binary_data)
    t1 = time.perf_counter()
    roots = function_roots or _function_roots(
        label_map, insns, binary_size=total, start_offset=start_offset,
    )
    if function_roots:
        roots = {
            off: root_name for off, root_name in function_roots.items()
            if off in insn_by_addr
            and not (0 <= off < total and hard_data[off])
        }
    owners, edge_sources, direct_edges, roots = _compute_branch_ownership(
        insns, roots, branch_edges, extra_flow_edges,
        binary_size=total, start_offset=start_offset,
    )
    branch_targets.update(target for _, target in direct_edges)
    local_targets = _local_branch_targets(
        branch_targets, owners, edge_sources, roots,
    )
    local_labels = _compute_local_labels(
        local_targets, owners, roots, label_map,
    )
    local_labels = {
        off: label for off, label in local_labels.items()
        if not (0 <= off < total and hard_data[off])
    }
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
        # Keep in-binary destinations even when current code/data classification
        # did not decode them as instruction starts. The emitted label still
        # resolves the reference; the byte-exact renderer can place it between
        # raw-data bytes or at an alternate instruction boundary.
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
        labels_dir = os.path.join(asm_dir, 'inc', 'labels')
        os.makedirs(labels_dir, exist_ok=True)
        inc_name = f'{name}_foreign_labels.inc'
        write_label_inc(foreign_label_map, os.path.join(labels_dir, inc_name))
        consumer_inc = f'inc/labels/{inc_name}'

    records = []
    pending_data = []
    data_block_start = None

    off = start_offset
    while off < total:
        if off in known_addrs and (
                off in insn_by_addr
                or (label_map and off in label_map
                    and label_map[off].startswith('data_'))
                or (local_labels and off in local_labels)):
            data_block_start, pending_data = _flush_data_block(
                records, pending_data, data_block_start, off,
            )
            _emit_label_record(records, off, label_map, local_labels,
                               insn_by_addr, label_comments)
        insn = insn_by_addr.get(off)

        if insn is not None:
            insn_end = off + insn.size

            inner_labels = sorted(
                a for a in known_addrs
                if off < a < insn_end and (
                    a in insn_by_addr
                    or (label_map and a in label_map
                        and label_map[a].startswith('data_'))
                    or (local_labels and a in local_labels))
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
                    _emit_label_record(records, lab, label_map, local_labels,
                                       insn_by_addr, label_comments)
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
            nasm_text = format_instruction(insn, label_map, local_labels, foreign_label_map, immediate_labels=immediate_labels)

            if nasm_text:
                built = micro_assemble(nasm_text, off, label_map, local_labels, foreign_label_map=foreign_label_map, immediate_labels=immediate_labels)
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
                                       foreign_label_map=foreign_label_map,
                                       immediate_labels=immediate_labels,
                                       hard_data=hard_data)

    # Data-block promotion can reveal instructions after the first local-label
    # pass. Give their in-binary direct-flow destinations symbols too, then
    # reformat those promoted instructions against the completed label map.
    for rec in records:
        if rec['type'] not in ('mnem', 'db_with_comment'):
            continue
        insn = rec.get('_insn')
        if insn is None:
            continue
        for target in _direct_flow_targets(insn, total):
            if trace is not None and (
                    trace.watches(insn.address) or trace.watches(target)):
                flow = ('call' if insn.mnemonic in ('call', 'lcall') else
                        'jump' if insn.mnemonic in ('jmp', 'ljmp') else
                        'conditional_jump')
                target_bitmap = (
                    int(bitmap[target]) if bitmap is not None
                    and 0 <= target < len(bitmap) else None
                )
                trace.event(
                    'verify', 'direct_flow_reference', addr=insn.address,
                    target=target, mnemonic=insn.mnemonic, flow=flow,
                    source_was_in_classifier_disassembly=(
                        insn.address in initial_insn_addrs
                    ),
                    source_record_type=rec['type'],
                    source_bitmap=(
                        int(bitmap[insn.address]) if bitmap is not None
                        and 0 <= insn.address < len(bitmap) else None
                    ),
                    target_bitmap=target_bitmap,
                    target_in_classifier_code_targets=(
                        target in classifier_code_targets
                    ),
                    target_hard_data=bool(hard_data[target]),
                    target_label=label_map.get(target)
                    or local_labels.get(target),
                )
            if hard_data[target]:
                continue
            if target < start_offset and target not in label_map:
                # Header destinations cannot be emitted as body labels, but a
                # global equ keeps direct-flow references symbolic without
                # making them local code labels.
                label_map[target] = f'loc_{target:04x}'
            elif target not in local_labels and target not in label_map:
                label_map[target] = f'loc_{target:04x}'
        formatted = format_instruction(
            insn, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels,
        )
        if formatted is not None:
            rec['text'] = formatted

    if trace is not None and trace.watched_addresses:
        for addr in sorted(trace.watched_addresses):
            if not 0 <= addr < total:
                continue
            matching = None
            for preferred_type in ('mnem', 'db_with_comment', 'db',
                                   'data_block', 'label'):
                for rec in records:
                    if rec['type'] != preferred_type:
                        continue
                    if preferred_type == 'data_block':
                        covers = rec['start'] <= addr < rec['end']
                    elif preferred_type in ('mnem', 'db', 'db_with_comment'):
                        rec_start = rec.get('offset', -1)
                        covers = rec_start <= addr < rec_start + rec.get('size', 1)
                    else:
                        covers = rec.get('offset') == addr
                    if covers:
                        matching = rec
                        break
                if matching is not None:
                    break

            if matching is None:
                record_info = None
            else:
                rec_start = matching.get('start', matching.get('offset'))
                rec_end = matching.get(
                    'end', rec_start + matching.get('size', 0)
                    if rec_start is not None else None,
                )
                record_info = {
                    'type': matching['type'],
                    'start': rec_start,
                    'end': rec_end,
                    'format_hint': matching.get('format_hint'),
                    'text': matching.get('text'),
                }
            trace.event(
                'verify', 'address_emission', addr=addr,
                bitmap=(
                    int(bitmap[addr]) if bitmap is not None
                    and addr < len(bitmap) else None
                ),
                classifier_code_target=(addr in classifier_code_targets),
                hard_data=bool(hard_data[addr]),
                label=label_map.get(addr) or local_labels.get(addr),
                emitted_record=record_info,
            )

    if c_overrides:
        records = _apply_c_overrides(
            records, c_overrides, binary_data, label_map, local_labels,
            foreign_label_map, immediate_labels, exact_bytes=exact_bytes,
        )

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

    split_ranges = _select_split_ranges(
        label_map, split_functions, func_boundaries, binary_size=total,
    )
    split_ranges = _extend_split_ranges_with_local_tails(split_ranges, records)

    if trace is not None and trace.watched_addresses:
        for addr in sorted(trace.watched_addresses):
            if not 0 <= addr < total:
                continue
            nearby_boundaries = [
                {'start': start, 'end': end, 'name': boundary_name}
                for start, (end, boundary_name) in func_boundaries.items()
                if abs(start - addr) <= 1
            ]
            nearby_ranges = [
                {'start': start, 'end': end, 'name': range_name}
                for start, end, range_name in split_ranges
                if start - 1 <= addr <= end
            ]
            trace.event(
                'verify', 'split_range_context', addr=addr,
                label=label_map.get(addr),
                boundaries=nearby_boundaries,
                selected_ranges=nearby_ranges,
            )

    src_lines, split_sources = _build_source(
        records, start_offset, binary_data, label_map,
        show_offsets=show_offsets, consumer_inc=consumer_inc,
        immediate_labels=immediate_labels, split_ranges=split_ranges,
        split_dir=name,
    )
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
        structs_dir = os.path.join(asm_dir, 'inc', 'structs')
        inc_line = write_struct_inc_files(structs, name, structs_dir)
        if inc_line:
            src_lines = '%include "inc/structs/structs.inc"\n' + inc_line + '\n' + src_lines
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
        'aztec_spans': {
            name: [start, end] for start, end, name in split_ranges
            if isinstance(name, str) and name.startswith('aztec_')
        },
        'aztec_labels': (
            sum(1 for n in label_map.values()
                if isinstance(n, str) and n.startswith('aztec_'))
            if label_map else 0
        ),
        'status': 'OK',
        'timing_func_boundaries': t1 - t0,
        'timing_local_labels': t2 - t1,
        'timing_main_loop': t3 - t2,
        'timing_postprocess': t4 - t3,
        'timing_emit_class': t5 - t4,
        'timing_build_source': t6 - t5,
    }, emit_class, label_positions, split_sources


def _c_bytes_to_records(data, base, label_map, local_labels, foreign_label_map,
                        immediate_labels, exact_bytes=False):
    """Disassemble compiler-produced code into emission records."""
    from lib.format import format_instruction
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    records = []
    consumed = 0

    def emit_db(start, end):
        for k in range(start, end):
            records.append({
                'type': 'db', 'text': f'0x{data[k]:02x}',
                'offset': base + k, 'size': 1,
            })

    for insn in md.disasm(data, base):
        off = insn.address - base
        if off > consumed:
            emit_db(consumed, off)
        bts = data[off:off + insn.size]
        nasm_text = format_instruction(
            insn, label_map, local_labels, foreign_label_map,
            immediate_labels=immediate_labels)
        if nasm_text:
            built = micro_assemble(
                nasm_text, insn.address, label_map, local_labels,
                foreign_label_map=foreign_label_map,
                immediate_labels=immediate_labels)
            ok = built is not None and built[:len(bts)] == bts
            if not ok and not exact_bytes and built:
                ok = is_semantically_equivalent(bts, built[:len(bts)],
                                                insn.address)
            rec = {
                'type': 'mnem' if ok else 'db_with_comment',
                'text': nasm_text, 'offset': insn.address, 'size': insn.size,
            }
            if not ok:
                rec['db_hex'] = ', '.join(f'0x{b:02x}' for b in bts)
            _set_insn_fields(rec, insn)
            records.append(rec)
        else:
            emit_db(off, off + insn.size)
        consumed = off + insn.size
    if consumed < len(data):
        emit_db(consumed, len(data))
    return records


def _merge_label_records(new_records, label_records):
    """Re-insert original ``label`` records into regenerated code records."""
    out = []
    labels = sorted(label_records, key=lambda r: r['offset'])
    li = 0
    for rec in new_records:
        off = rec.get('offset', 0)
        while li < len(labels) and labels[li]['offset'] <= off:
            out.append(labels[li])
            li += 1
        out.append(rec)
    while li < len(labels):
        out.append(labels[li])
        li += 1
    return out


def _apply_c_overrides(records, c_overrides, binary_data, label_map,
                       local_labels, foreign_label_map, immediate_labels,
                       exact_bytes=False):
    """Replace disassembled records with code compiled from C.

    ``c_overrides`` maps a function label to ``{'code': bytes,
    'fixups': [(offset, width), ...]}``.  Relocation bytes are taken from the
    original binary (the compiled code carries placeholders there), so an
    exactly-recovered routine reproduces the original bytes verbatim.
    """
    name_to_addr = {}
    for addr, nm in label_map.items():
        if isinstance(nm, str):
            name_to_addr.setdefault(nm, addr)

    replacements = []
    for label, override in c_overrides.items():
        start = name_to_addr.get(label)
        if start is None:
            raise ValueError(f'C override: label {label!r} not found')
        compiled = bytearray(override['code'])
        # The routine owns exactly *length* bytes (its original, exact-match
        # size).  A shorter compile is NOP-filled up to that size; a longer one
        # would shift every following address, so it is a hard error.
        length = override.get('length') or len(compiled)
        if len(compiled) > length:
            raise ValueError(
                f'C override: {label!r} compiled to {len(compiled)} bytes, '
                f'exceeds the original {length} bytes')

        # Overlay the original relocation bytes.  A relocation may start on the
        # routine's last byte and run one byte past it; clamp to the code so the
        # overlay never grows the routine.
        for off, width in override.get('fixups', ()):
            n = min(width, len(compiled) - off)
            if n <= 0:
                continue
            chunk = binary_data[start + off:start + off + n]
            if len(chunk) < n:
                chunk = chunk + bytes(n - len(chunk))
            compiled[off:off + n] = chunk

        # Extend to the end of whichever original record the routine ends
        # inside, then take any uncovered bytes (local tails, alignment) from
        # the original image.
        end = start + length
        for rec in records:
            rec_start, rec_end = _record_span(rec)
            if rec['type'] == 'label':
                continue
            if rec_start < end and rec_end > end:
                end = rec_end
        final = bytearray(binary_data[start:end])
        if len(final) < length:
            final.extend(b'\x90' * (length - len(final)))
        final[:len(compiled)] = compiled
        if len(compiled) < length:
            final[len(compiled):length] = b'\x90' * (length - len(compiled))
        new_records = _c_bytes_to_records(
            bytes(final), start, label_map, local_labels, foreign_label_map,
            immediate_labels, exact_bytes=exact_bytes)
        labels_in = [r for r in records
                     if r['type'] == 'label' and start < r['offset'] < end]
        replacements.append((start, end,
                             _merge_label_records(new_records, labels_in)))

    if not replacements:
        return records

    out = []
    done = set()
    for rec in records:
        rec_start, rec_end = _record_span(rec)
        span = None
        for repl_start, repl_end, _ in replacements:
            if rec['type'] == 'label':
                if repl_start <= rec_start < repl_end:
                    span = (repl_start, repl_end)
                    break
            elif rec_start < repl_end and rec_end > repl_start:
                if rec_start < repl_start or rec_end > repl_end:
                    raise ValueError(
                        f'C override: record 0x{rec_start:x}-0x{rec_end:x} '
                        f'straddles override boundary '
                        f'0x{repl_start:x}-0x{repl_end:x}')
                span = (repl_start, repl_end)
                break
        if span is None:
            out.append(rec)
            continue
        if rec['type'] == 'label':
            if rec_start == span[0]:
                out.append(rec)
            continue
        if span not in done:
            out.extend(next(r[2] for r in replacements
                            if (r[0], r[1]) == span))
            done.add(span)
    return out


def _record_span(rec):
    """Return the half-open byte span emitted by a record, or its label offset."""
    if rec['type'] == 'label':
        return rec['offset'], rec['offset']
    if rec['type'] == 'data_block':
        return rec['start'], rec['end']
    start = rec.get('offset', 0)
    return start, start + rec.get('size', 1)


def _select_split_ranges(label_map, split_functions, func_boundaries=None,
                         binary_size=None):
    """Select named function boundaries, ending each at the next split root.

    Starts come straight from the label offsets so a function's file always
    begins at its real entry.  Deriving starts from the heuristic boundary
    scan was unreliable: the 512-byte cap truncated long functions and the
    backward push-bp scan pulled starts into the preceding function.
    """
    requested = set(split_functions or ())
    selected = sorted(
        (off, name)
        for off, name in (label_map or {}).items()
        if name in requested
        and not name.startswith('data_')
        and not re.fullmatch(r'loc_[0-9a-fA-F]+', name)
    )

    ranges = []
    for index, (start, name) in enumerate(selected):
        if index + 1 < len(selected):
            end = selected[index + 1][0]
        else:
            end = None
            if func_boundaries and start in func_boundaries:
                end = func_boundaries[start][0]
            if end is None:
                end = binary_size
        ranges.append((start, end, name))
    return ranges


def _extend_split_ranges_with_local_tails(split_ranges, records):
    """Keep immediately following, referenced local blocks with their root."""
    if not split_ranges:
        return split_ranges

    labels_at = {}
    records_at = {}
    for rec in records:
        if rec['type'] == 'label':
            labels_at.setdefault(rec['offset'], []).append(
                rec['text'].removesuffix(':')
            )
        else:
            start, end = _record_span(rec)
            if end > start:
                records_at[start] = rec

    extended = []
    for start, end, name in split_ranges:
        scope_prefix = f'@..{name}.'
        while True:
            local_labels = [
                label for label in labels_at.get(end, ())
                if label.startswith(scope_prefix)
            ]
            referenced = any(
                rec.get('type') in ('mnem', 'db_with_comment')
                and start <= rec.get('offset', -1) < end
                and any(label in rec.get('text', '') for label in local_labels)
                for rec in records
            )
            if not local_labels or not referenced:
                break

            cursor = end
            found_terminator = False
            while True:
                scoped_labels = [
                    label for label in labels_at.get(cursor, ())
                    if label.startswith(scope_prefix)
                ]
                if labels_at.get(cursor) and not scoped_labels:
                    break
                rec = records_at.get(cursor)
                if rec is None or rec['type'] not in (
                        'mnem', 'db', 'db_with_comment'):
                    break
                rec_start, rec_end = _record_span(rec)
                if rec_start != cursor or rec_end <= cursor:
                    break
                cursor = rec_end
                mnemonic = rec.get('text', '').split(' ', 1)[0]
                if mnemonic in ('jmp', 'ljmp', 'ret', 'retf', 'retn',
                                'iret', 'hlt'):
                    found_terminator = True
                    break

            if not found_terminator:
                break
            end = cursor
        extended.append((start, end, name))
    return extended


def _partition_function_records(records, split_ranges, split_dir):
    """Replace selected contiguous function spans with include records."""
    if not split_ranges:
        return records, {}

    # Function bounds are heuristic and can land inside an instruction or
    # across un-emitted gaps (for example, when a label was matched to data).
    # Splitting is only a source-layout optimization, so leave any unsafe span
    # in the master file instead of failing the entire project build.
    ranges = []
    candidates = sorted(split_ranges, key=lambda item: item[0])
    for start, end, name in candidates:
        if start >= end:
            continue
        spans = []
        safe = True
        for rec in records:
            if rec['type'] == 'label':
                continue
            rec_start, rec_end = _record_span(rec)
            if rec_start >= end or rec_end <= start:
                continue
            if rec['type'] != 'data_block' and (
                    rec_start < start or rec_end > end):
                safe = False
                break
            spans.append((max(start, rec_start), min(end, rec_end)))
        if safe:
            cursor = start
            for span_start, span_end in sorted(spans):
                if span_start != cursor:
                    safe = False
                    break
                cursor = span_end
            safe = safe and cursor == end
        if safe and (not ranges or start >= ranges[-1][1]):
            ranges.append((start, end, name))

    if not ranges:
        return records, {}

    # Data blocks can span a function's final byte and following data (or a
    # split boundary between adjacent named roots). Divide those aggregate
    # records at split boundaries so each byte is routed to the right source.
    boundaries = sorted({point for start, end, _ in ranges
                         for point in (start, end)})
    partitioned_records = []
    for rec in records:
        if rec['type'] != 'data_block':
            partitioned_records.append(rec)
            continue
        cuts = [rec['start']]
        cuts.extend(point for point in boundaries
                    if rec['start'] < point < rec['end'])
        cuts.append(rec['end'])
        partitioned_records.extend(
            {**rec, 'start': start, 'end': end}
            for start, end in zip(cuts, cuts[1:])
        )
    records = partitioned_records

    main_records = []
    split_records = {name: [] for _, _, name in ranges}
    split_bytes = {name: 0 for _, _, name in ranges}
    include_inserted = set()

    for rec in records:
        rec_start, rec_end = _record_span(rec)
        owner = None
        for start, end, name in ranges:
            if rec['type'] == 'label':
                if start <= rec_start < end:
                    owner = (start, end, name)
                    break
            elif rec_start < end and rec_end > start:
                if rec_start < start or rec_end > end:
                    raise ValueError(
                        f'{name}: function boundary 0x{start:x}-0x{end:x} '
                        f'splits emitted record at 0x{rec_start:x}-0x{rec_end:x}'
                    )
                owner = (start, end, name)
                break

        if owner is None:
            main_records.append(rec)
            continue

        start, end, name = owner
        if name not in include_inserted:
            filename = re.sub(r'[^A-Za-z0-9_.-]+', '_', name).strip('._')
            if not filename:
                raise ValueError(f'cannot make include filename for function {name!r}')
            main_records.append({
                'type': 'include',
                'text': f'%include "{split_dir}/{filename}.asm"',
            })
            include_inserted.add(name)
        split_records[name].append(rec)
        if rec['type'] != 'label':
            split_bytes[name] += rec_end - rec_start

    for start, end, name in ranges:
        if name not in include_inserted:
            raise ValueError(f'{name}: no emitted records in split range 0x{start:x}-0x{end:x}')
        if split_bytes[name] != end - start:
            raise ValueError(
                f'{name}: split records cover {split_bytes[name]} bytes, '
                f'expected {end - start} for 0x{start:x}-0x{end:x}'
            )

    split_sources = {}
    for _, _, name in ranges:
        filename = re.sub(r'[^A-Za-z0-9_.-]+', '_', name).strip('._')
        split_sources[f'{split_dir}/{filename}.asm'] = split_records[name]
    return main_records, split_sources


def _render_records(records, binary_data, show_offsets=True):
    """Render ordered body records, including textual NASM include directives."""
    out = []
    i = 0
    while i < len(records):
        rec = records[i]

        if rec['type'] == 'include':
            out.append(rec['text'])
            out.append('')

        elif rec['type'] == 'label':
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

    return out


def _render_mz_header(header):
    """Render the fixed MZ fields with a shared comment column."""
    _, cblp, cp, crlc, cparhdr, minalloc, maxalloc, ss, sp, \
        csum, ip, cs, lfarlc, ovno = struct.unpack_from('<2s13H', header, 0)
    fields = [
        ('db "MZ"', 'e_magic: DOS MZ signature'),
        (f'dw 0x{cblp:04x}', 'e_cblp: bytes in final 512-byte page (0 means full)'),
        (f'dw 0x{cp:04x}', 'e_cp: total 512-byte pages in the file'),
        (f'dw 0x{crlc:04x}', 'e_crlc: number of relocation entries'),
        (f'dw 0x{cparhdr:04x}', 'e_cparhdr: header size in 16-byte paragraphs'),
        (f'dw 0x{minalloc:04x}', 'e_minalloc: minimum extra memory paragraphs'),
        (f'dw 0x{maxalloc:04x}', 'e_maxalloc: maximum extra memory paragraphs'),
        (f'dw 0x{ss:04x}', 'e_ss: initial stack segment, relative to load module'),
        (f'dw 0x{sp:04x}', 'e_sp: initial stack pointer'),
        (f'dw 0x{csum:04x}', 'e_csum: file checksum (often unused)'),
        (f'dw 0x{ip:04x}', 'e_ip: initial instruction pointer'),
        (f'dw 0x{cs:04x}', 'e_cs: initial code segment, relative to load module'),
        (f'dw 0x{lfarlc:04x}', 'e_lfarlc: file offset of relocation table'),
        (f'dw 0x{ovno:04x}', 'e_ovno: overlay number (0 for main executable)'),
    ]
    return [
        '    ; DOS MZ executable header (512 bytes)',
        *(f'    {instruction:<14} ; {comment}'
          for instruction, comment in fields),
    ]


def _build_source(records, start_offset, binary_data, label_map=None, show_offsets=True,
                  consumer_inc=None, immediate_labels=None, split_ranges=None,
                  split_dir='ds'):
    """Render the master NASM source and any generated function includes."""
    out = ['org 0', 'bits 16']
    if consumer_inc:
        out.append(f'%include "{consumer_inc}"')
        out.append('')

    if (start_offset == 0x200 and len(binary_data) >= 0x200
            and binary_data[:2] == b'MZ'):
        hdr = binary_data[:start_offset]
        out.extend(_render_mz_header(hdr))
        out.append('')
        out.extend(_render_data_block(hdr[28:]))
        out.append('')
    elif start_offset > 0:
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
    if immediate_labels:
        for addr in sorted(immediate_labels):
            name = immediate_labels[addr]
            if not label_map or addr not in label_map or label_map[addr] != name:
                out.append(f'{name} equ 0x{addr:04x}')
    if label_map or immediate_labels:
        out.append('')

    main_records, split_records = _partition_function_records(
        records, split_ranges, split_dir,
    )
    out.extend(_render_records(main_records, binary_data, show_offsets))

    split_sources = {
        path: '\n'.join(_render_records(fragment, binary_data, show_offsets)) + '\n'
        for path, fragment in split_records.items()
    }
    out.append('')
    return '\n'.join(out), split_sources
