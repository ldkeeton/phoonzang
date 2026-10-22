; auto-generated
put_pixel:
    push bp
    mov bp, sp
    push ds
    push es
    mov ax, ds
    mov es, ax
    mov ax, word [cs:put_pixel.screen_buf_seg1 - IMAGE_BASE]
    mov ds, ax
    mov ax, word [bp + 0xe]
    mov bx, 0x140
    mul bx
    add ax, word [bp + 0xc]
    mov bx, ax
    mov ax, word [bp + 0x10]
    mov byte [bx], al
    pop es
    pop ds
    mov sp, bp
    pop bp
    ret
