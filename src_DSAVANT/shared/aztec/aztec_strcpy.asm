; auto-generated
aztec_strcpy:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 6]
    mov cx, 0xffff
    mov al, 0
    repne scasb
    not cx
    mov di, word [bp + 4]
    mov si, word [bp + 6]
    shr cx, 1
    jcxz .forward1
    rep movsw
.forward1:
    jae short .forward2
    movsb
.forward2:
    pop di
    pop si
    mov ax, word [bp + 4]
    pop bp
    ret
