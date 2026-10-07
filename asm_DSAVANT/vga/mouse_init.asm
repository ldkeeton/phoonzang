mouse_init:
    push bp
    mov bp, sp
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:data_0205], 0
    je short @..mouse_init.l1
    mov ax, 0
    int 0x33 ; BIOS mouse
    push ds
    push es
    push di
    push si
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
    mov ax, 3
    int 0x33 ; BIOS mouse
    shr cx, 1
    mov word [cs:data_15b0], cx
    mov word [cs:data_15b2], dx
    mov ax, cs
    push ax
    mov ax, 0xffff
    mov word [cs:data_15ae], ax
    call math_loc_1e35
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
    mov dx, 0x1ed4
    int 0x33 ; BIOS mouse
    pop es
@..mouse_init.l1:
    pop es
    mov sp, bp
    pop bp
    ret
