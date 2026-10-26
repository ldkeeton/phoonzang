; auto-generated
get_mouse:
    push bp
    mov bp, sp
    sub sp, byte 6
    push es
    mov ax, ds
    mov es, ax
    cmp byte [cs:mouse_present - IMAGE_BASE], 0
    je short @..get_mouse.l1
    mov ax, 3
    int 0x33 ; BIOS mouse
    mov word [bp - 2], bx
    mov bx, word [bp + 0xc]
    shr cx, 1
    mov word [bx], cx
    mov bx, word [bp + 0xe]
    mov word [bx], dx
    mov ax, word [bp - 2]
@..get_mouse.l1:
    pop es
    mov sp, bp
    pop bp
    ret
