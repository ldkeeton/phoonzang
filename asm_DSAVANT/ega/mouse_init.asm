mouse_init:
    push bp
    mov bp, sp
    sub sp, byte 4
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:data_0205], 0
    jne short @..mouse_init.l1
    jmp near @..mouse_init.l2
@..mouse_init.l1:
    push ds
    push si
    mov si, 0x259e
    mov ax, cs
    mov ds, ax
    call string_loc_17a1
    pop si
    pop ds
    mov ax, 0
    int 0x33 ; BIOS mouse
    mov ax, 7
    xor cx, cx
    mov dx, 0x27f
    int 0x33 ; BIOS mouse
    mov ax, 8
    xor cx, cx
    mov dx, 0xc7
    int 0x33 ; BIOS mouse
    mov ax, 4
    xor cx, cx
    xor dx, dx
    int 0x33 ; BIOS mouse
    mov ax, data_0003
    int 0x33 ; BIOS mouse
    shr cx, 1
    mov word [cs:data_1beb], cx
    mov word [cs:data_1bed], dx
    push ds
    push es
    push di
    push si
    mov ax, cs
    push ax
    mov ax, 0xffff
    mov word [cs:data_1bdb], ax
    call math_loc_2a6a
    pop si
    pop di
    pop es
    pop ds
    mov byte [cs:data_0228], 1
    push es
    mov ax, 0x14
    mov bx, cs
    mov es, bx
    mov cx, 0xb
    mov dx, 0x2b09
    int 0x33 ; BIOS mouse
    pop es
@..mouse_init.l2:
    pop es
    mov sp, bp
    pop bp
    ret
