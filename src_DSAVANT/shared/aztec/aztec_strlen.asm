; auto-generated
aztec_strlen:
    push bp
    mov bp, sp
    cld
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 4]
    mov bx, di
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    mov ax, di
    sub ax, bx
    dec ax
    pop di
    pop bp
    ret
