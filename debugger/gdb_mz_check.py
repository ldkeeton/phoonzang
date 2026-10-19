"""``mz-check``: does every MZ relocation patch an operand, not an opcode?

DOS adds the load segment to each word the EXE header's relocation table
names.  When a source edit moves code but an entry keeps its old offset, DOS
patches the wrong bytes -- an opcode, or half of one operand and half of the
next -- and the program dies far from the cause with wild segment registers.

The ELF from ``make elf-rebuild`` describes the load image and its line table
has one entry per source line (one instruction, or one ``db``/``dw`` line), so
each relocation site can be checked against the line that covers it:

* an instruction line: the word must lie strictly inside the instruction,
  past its first (opcode) byte;
* a data line: the word must lie inside the line's bytes.

The EXE is the ``.exe`` beside the ELF (``DS.elf`` -> ``DS.EXE``).  The check
runs once at the first stop; ``mz-check`` reruns it.
"""

import os
import struct

import gdb


def _exe_for(elf_path):
    folder = os.path.dirname(elf_path)
    stem = os.path.splitext(os.path.basename(elf_path))[0].lower()
    for name in os.listdir(folder):
        if name.lower() == stem + '.exe':
            return os.path.join(folder, name)
    return None


def _relocations(exe_path):
    with open(exe_path, 'rb') as f:
        data = f.read()
    if data[:2] != b'MZ':
        return []
    count, = struct.unpack_from('<H', data, 6)
    table, = struct.unpack_from('<H', data, 24)
    return [struct.unpack_from('<HH', data, table + 4 * k)
            for k in range(count)]


def _covering_line(site):
    """``(start, end, source text, file, line)`` of the line holding *site*."""
    sal = gdb.find_pc_line(site)
    if sal.symtab is None or not sal.line:
        return None
    addrs = sorted({e.pc for e in sal.symtab.linetable()})
    start = max((a for a in addrs if a <= site), default=None)
    if start is None:
        return None
    end = min((a for a in addrs if a > start), default=None)
    text = ''
    try:
        with open(sal.symtab.fullname()) as f:
            text = f.read().splitlines()[sal.line - 1]
    except (OSError, IndexError):
        pass
    return start, end, text.split(';', 1)[0].strip(), sal.symtab.filename, sal.line


def check(quiet=False):
    objfile = gdb.current_progspace().filename
    exe = _exe_for(objfile) if objfile else None
    if exe is None:
        if not quiet:
            gdb.write('mz-check: no .exe beside the ELF\n')
        return
    bad = 0
    relocs = _relocations(exe)
    for off, seg in relocs:
        site = seg * 16 + off
        found = _covering_line(site)
        if found is None:
            gdb.write(f'mz-check: relocation {seg:04x}:{off:04x} (0x{site:04x}) '
                      'is on no source line\n')
            bad += 1
            continue
        start, end, text, path, line = found
        is_data = text.split(None, 1)[0].lower() in ('db', 'dw', 'dd', 'times') \
            if text else False
        inside = end is None or site + 2 <= end
        ok = inside and (site >= start if is_data else site > start)
        if not ok:
            bad += 1
            where = 'its opcode byte' if site == start else 'past its end'
            gdb.write(f'mz-check: BAD relocation {seg:04x}:{off:04x} patches '
                      f'{where}: 0x{site:04x} in {path}:{line} '
                      f'(`{text}`, 0x{start:04x}-0x{(end or start):04x})\n'
                      '          DOS will corrupt this code at load time; '
                      'the header entry did not move with the code.\n')
        elif not quiet:
            gdb.write(f'mz-check: ok  0x{site:04x}  {path}:{line}  `{text}`\n')
    if bad or not quiet:
        gdb.write(f'mz-check: {len(relocs)} relocation(s), {bad} bad '
                  f'({os.path.basename(exe)})\n')


class MzCheck(gdb.Command):
    """Check every MZ relocation entry lands on an operand of the image."""

    def __init__(self):
        super().__init__('mz-check', gdb.COMMAND_STATUS)

    def invoke(self, arg, from_tty):
        check(quiet=False)


def _first_stop(event):
    gdb.events.stop.disconnect(_first_stop)
    try:
        check(quiet=True)
    except Exception as exc:
        gdb.write(f'mz-check: {exc}\n')


MzCheck()
gdb.events.stop.connect(_first_stop)
