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
    out dx, al
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
    push es
    mov ax, 0xB800
    mov es, ax
    mov byte [es:158], 0xDB
    pop es
    pop dx
    ret

ser_getc:
    push dx
.g1:cmp byte [cs:brk_req], 0
    jne .g_brk
    mov dx, [com]
    add dx, 5
    sti
    in al, dx
    test al, 1
    jz .g1
    mov dx, [com]
    in al, dx
    push es
    push ax
    mov ax, 0xB800
    mov es, ax
    mov byte [es:156], 0xDB
    pop ax
    pop es
    pop dx
    clc
    ret
.g_brk:
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
