; debug.asm — direct-entry GDB stub (no TSR, no hotkey)
;
; Build:   nasm -O0 -f bin -o debug.com debug.asm
; Usage:   dosbox-x / dosemu
; GDB:     target remote :1234

BITS 16
%ifidn __OUTPUT_FORMAT__, bin
ORG 0x100
%endif

    jmp entry

%include "lib/equ.asm"
%include "lib/data.asm"
%include "lib/serial.asm"
%include "lib/hex.asm"
%include "lib/proto.asm"
%include "lib/bp.asm"
%include "lib/cmds.asm"
%include "lib/int.asm"

entry:
    call ser_init

    ; save original int3/int1 vectors
    mov ax, 0x3503
    int 0x21
    mov [ov3], bx
    mov [ov3+2], es
    mov ax, 0x3501
    int 0x21
    mov [ov1], bx
    mov [ov1+2], es

    ; install our vectors
    push ds
    mov ax, cs
    mov ds, ax
    mov dx, int3
    mov ax, 0x2503
    int 0x21
    mov dx, int1
    mov ax, 0x2501
    int 0x21
    pop ds

    ; set up initial state
    mov [hk_ss], ss
    mov [hk_sp], sp
    mov word [bp_cur], -1

    ; print status
    mov ah, 9
    mov dx, msg
    int 0x21

    ; enter target code
    call target

    ; restore vectors
    call restore_vecs
    mov ax, 0x4C00
    int 0x21

target:
    nop
    nop
    int3
    nop
    nop
    ret

msg: db "debug.com running", 0x0D, 0x0A, "$"
