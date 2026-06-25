; serial.asm — serial port I/O for GDBSRV

ser_init:
    push ax
    push dx
    mov dx, [com]
    add dx, 3
    mov al, 0x83
    out dx, al
    mov dx, [com]
    mov al, BDIV & 0xFF
    out dx, al
    mov dx, [com]
    add dx, 1
    mov al, BDIV >> 8
    out dx, al
    mov dx, [com]
    add dx, 3
    mov al, 0x03
    out dx, al
    mov dx, [com]
    add dx, 4
    mov al, 0x03
    out dx, al          ; MCR = 0x03 (DTR|RTS)
    mov dx, [com]
    add dx, 5
.f1:in al, dx
    test al, 1
    jz .f2
    mov dx, [com]
    in al, dx
    mov dx, [com]
    add dx, 5
    jmp .f1
.f2:pop dx
    pop ax
    ret

ser_putc:
    push dx
    push ax
    mov dx, [com]
    add dx, 5
.sp1:in al, dx
    test al, 0x20
    jz .sp1
    mov dx, [com]
    pop ax
    out dx, al
    pop dx
    ret

ser_getc:
    push dx
    mov dx, [com]
    add dx, 5
.g1:sti
    cmp byte [brk_req], 0
    jne .g_brk
    in al, dx
    test al, 1
    jz .g1
    mov dx, [com]
    in al, dx
    cli
    pop dx
    clc
    ret
.g_brk:cli
    pop dx
    stc
    ret

ser_poll:
    push dx
    mov dx, [com]
    add dx, 5
    in al, dx
    test al, 1
    jz .np
    mov dx, [com]
    in al, dx
    pop dx
    clc
    ret
.np:pop dx
    stc
    ret
