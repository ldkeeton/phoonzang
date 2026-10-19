"""Name the thunks a program calls a driver's API through.

A program that loads a raw driver keeps a table of far pointers to the
driver's jump-table entries (sidecar ``binaries.<b>.driver_slots``).  A slot's
initial offset is its entry's address in the driver as loaded at
``segment:0x100``, so slot value ``0x100 + base + size*n`` is entry ``n``.  A
thunk is a routine whose whole body is::

    push bp; mov bp, sp; cld; call far [cs:slot]; mov sp, bp; pop bp; ret

so the slot it calls says which entry it is: ``<prefix>_<api name>``, or
``<prefix>_entry_NN`` while the driver's ``dispatch_table`` leaves it unnamed.
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16
from capstone.x86 import X86_OP_MEM, X86_REG_CS, X86_REG_INVALID

from lib.segments import _DRIVER_LOAD

_THUNK_SHAPE = ('push', 'mov', 'cld', 'lcall', 'mov', 'pop', 'ret')


def _thunk_slot(md, data, off, start_offset):
    """The file offset of the slot the thunk at *off* calls, or None."""
    insns = list(md.disasm(data[off:off + 16], off, count=len(_THUNK_SHAPE)))
    if tuple(i.mnemonic for i in insns) != _THUNK_SHAPE:
        return None
    if (insns[0].op_str, insns[1].op_str, insns[4].op_str, insns[5].op_str) != (
            'bp', 'bp, sp', 'sp, bp', 'bp'):
        return None
    op = insns[3].operands[0]
    if (op.type != X86_OP_MEM or op.mem.segment != X86_REG_CS
            or op.mem.base != X86_REG_INVALID
            or op.mem.index != X86_REG_INVALID):
        return None
    return (op.mem.disp & 0xFFFF) + start_offset


def driver_thunk_entries(data, targets, slots, start_offset):
    """``{thunk offset: entry number}`` for each routine in *targets* that
    calls through a slot of the declared table.

    *slots* is the resolved ``driver_slots`` entry: ``offset``/``count`` of
    the far-pointer table and ``dispatch_table``, the driver's jump table.
    """
    table = int(slots['offset'], 16)
    end = table + 4 * slots['count']
    api = slots['dispatch_table']
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    entries = {}
    for off in sorted(targets):
        slot = _thunk_slot(md, data, off, start_offset)
        if slot is None or not table <= slot < end or (slot - table) % 4:
            continue
        value = int.from_bytes(data[slot:slot + 2], 'little')
        n, rem = divmod(value - _DRIVER_LOAD - api['base_offset'],
                        api['entry_size'])
        if rem == 0 and 0 <= n < api['count']:
            entries[off] = n
    return entries


def entry_handlers(data, table):
    """``{entry number: handler offset}`` for a declared ``dispatch_table``:
    entry *n* is ``call handler; retf`` at ``base_offset + entry_size*n``."""
    handlers = {}
    for n in range(table['count']):
        addr = table['base_offset'] + n * table['entry_size']
        if addr + 4 <= len(data) and data[addr] == 0xE8 and data[addr + 3] == 0xCB:
            rel = int.from_bytes(data[addr + 1:addr + 3], 'little', signed=True)
            handlers[n] = (addr + 3 + rel) & 0xFFFF
    return handlers


def thunk_name(n, slots):
    """The name of the thunk that calls entry *n* through *slots*."""
    name = (slots['dispatch_table'].get('names') or {}).get(str(n))
    return f"{slots['prefix']}_{name or f'entry_{n:02d}'}"
