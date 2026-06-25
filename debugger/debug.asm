; debug.asm — direct-entry GDB stub (no TSR, no hotkey)
;
; Build:   nasm -O0 -f bin -o debug.com debug.asm
; Usage:   dosemu -E DEBUG
; GDB:     target remote :1234

BITS 16
ORG 0x100

    jmp entry

%include "equ.asm"
%include "data.asm"
%include "serial.asm"
%include "hex.asm"
%include "proto.asm"
%include "bp.asm"
%include "cmds.asm"
%include "int.asm"

entry:
    call ser_init

    mov [sreg+R_CS], cs
    mov [sreg+R_SS], ss
    mov [sreg+R_SP], sp
    mov word [sreg+R_IP], entry

    mov [hk_ss], ss
    mov [hk_sp], sp
    mov word [bp_cur], -1

    cli
    mov ax, cs
    mov ss, ax
    mov sp, stk_t

    sti
    call gdb_loop

    mov ax, 0x4C00
    int 0x21
