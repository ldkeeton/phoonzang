; auto-generated
get_palette:
    push bp
    mov bp, sp
    sub sp, byte 8
    push ds
    push es
    push di
    push si
    mov ax, ds
    mov es, ax
    lds si, word [cs:palette_ptr - IMAGE_BASE]
    mov di, word [bp + 0xc]
    mov cx, 0x300
    rep movsb
    pop si
    pop di
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
