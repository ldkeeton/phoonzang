BITS 16
%ifidn __OUTPUT_FORMAT__, bin
ORG 0x100
%endif

global start
start:
    mov ah, 9
    mov dx, msg
    int 0x21

.loop:
    nop
    nop
    int3
    nop
    nop
    jmp .loop

msg: db "test.com running (looping)", 0x0D, 0x0A, "$"
