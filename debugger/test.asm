BITS 16
%ifidn __OUTPUT_FORMAT__, bin
ORG 0x100
%endif

global start
start:
    mov ah, 9
    mov dx, msg
    int 0x21
    int3
    mov ax, 0x4C00
    int 0x21

msg: db "test.com running", 0x0D, 0x0A, "$"
