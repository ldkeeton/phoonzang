"""Annotate emitted records with interrupt and DOS/BIOS function names."""

from capstone import CS_OP_IMM, CS_OP_REG

from lib.compare.constants import (
    _CFLOW_INSTS,
    _DOS_FUNCTIONS,
    _INT_DESCRIPTIONS,
    _INT_FUNCTION_TABLES,
)


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
