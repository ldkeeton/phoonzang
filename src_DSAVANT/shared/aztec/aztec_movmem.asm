; auto-generated
aztec_movmem:
    push bp
    mov bp, sp
    pushf
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov si, word [bp + 4]
    mov di, word [bp + 6]
    mov cx, word [bp + 8]
    mov ax, es
    mov dx, ds
    cmp ax, dx
    jne short .forward2
    cmp di, si
    je short .forward4
    jb short .forward2
    std
    add di, cx
    add si, cx
    dec di
    dec si
    test cl, 1
    je short .forward1
    movsb
.forward1:
    dec di
    dec si
    jmp short .forward3
.forward2:
    test cl, 1
    je short .forward3
    movsb
.forward3:
    shr cx, 1
    je short .forward4
    rep movsw
.forward4:
    cld
    pop di
    pop si
    popf
    pop bp
    ret
