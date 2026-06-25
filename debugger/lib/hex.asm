; hex.asm — hex nibble/byte/address conversion

; Write nibble of AL as hex char via serial
pnib:
    and al, 0x0F
    add al, '0'
    cmp al, '9'
    jbe .pn
    add al, 7
.pn:jmp ser_putc

; Write byte in AL as two hex chars via serial
phex8:
    push ax
    push cx
    mov cx, ax
    shr al, 4
    call pnib
    mov al, cl
    call pnib
    pop cx
    pop ax
    ret

; Convert ASCII hex char in AL to nibble
gnib:
    sub al, '0'
    cmp al, 9
    jbe .gn
    and al, ~0x20
    sub al, 7
.gn:ret

; Parse hex string at DS:SI into DX:AX, advance SI past hex chars
ph32:
    xor dx, dx
    xor ax, ax
.ph:lodsb
    cmp al, '0'
    jb .pd
    cmp al, '9'
    ja .a1
    sub al, '0'
    jmp .sv
.a1:and al, ~0x20
    cmp al, 'A'
    jb .pd
    cmp al, 'F'
    ja .pd
    sub al, 'A' - 10
.sv:push bx
    mov bl, al
    shl ax, 1
    rcl dx, 1
    shl ax, 1
    rcl dx, 1
    shl ax, 1
    rcl dx, 1
    shl ax, 1
    rcl dx, 1
    or al, bl
    pop bx
    jmp .ph
.pd:dec si
    ret
