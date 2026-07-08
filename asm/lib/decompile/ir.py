from dataclasses import dataclass, field
from typing import Optional


@dataclass
class Operand:
    type: str          # 'reg', 'imm', 'mem', 'label'
    size: int          # 1, 2, or 4 (bytes)
    value: any = None  # register name, immediate int, or displacement int
    base: str = ''     # base register for mem
    index: str = ''    # index register for mem
    segment: str = ''  # segment register for mem
    is_far: bool = False


_INSN_ENDING = frozenset({'ret', 'retf', 'retn', 'iret', 'jmp', 'je', 'jne',
    'jb', 'jae', 'jbe', 'ja', 'jl', 'jge', 'jle', 'jg', 'jz', 'jnz',
    'js', 'jns', 'jo', 'jno', 'jp', 'jnp', 'jc', 'jnc', 'jecxz',
    'call', 'ljmp', 'lcall'})


@dataclass
class Instruction:
    address: int
    mnemonic: str
    raw_bytes: bytes
    operands: list[Operand] = field(default_factory=list)
    comment: str = ''

    def is_terminator(self) -> bool:
        return self.mnemonic in _INSN_ENDING

    def is_unconditional_jump(self) -> bool:
        return self.mnemonic == 'jmp'

    def is_conditional_jump(self) -> bool:
        return self.mnemonic.startswith('j') and self.mnemonic != 'jmp' and self.mnemonic not in ('je', 'jne', 'jb', 'jae', 'jbe', 'ja', 'jl', 'jge', 'jle', 'jg', 'jz', 'jnz', 'js', 'jns', 'jo', 'jno', 'jp', 'jnp', 'jc', 'jnc') or False

    def is_call(self) -> bool:
        return self.mnemonic in ('call', 'lcall')

    def is_ret(self) -> bool:
        return self.mnemonic in ('ret', 'retf', 'retn', 'iret')


@dataclass
class BasicBlock:
    start_addr: int
    end_addr: int
    instructions: list[Instruction] = field(default_factory=list)
    exit_type: str = ''     # 'jmp', 'jcc', 'call', 'ret', 'fallthrough'
    exit_target: int = -1   # target address for jmp/jcc/call
    exit_taken: int = -1    # target when condition true (jcc)
    exit_fall: int = -1     # target when condition false (jcc)


@dataclass
class StackVar:
    offset: int     # positive = param, negative = local
    size: int       # bytes
    name: str = ''


@dataclass
class Function:
    name: str
    entry_addr: int
    end_addr: int
    instructions: list[Instruction]
    basic_blocks: list[BasicBlock] = field(default_factory=list)
    params: list[StackVar] = field(default_factory=list)
    locals: list[StackVar] = field(default_factory=list)
    frame_size: int = 0
    is_far: bool = False
    inline_asm: bool = False
