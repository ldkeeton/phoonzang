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
    jne short .move_forward
    cmp di, si
    je short .done
    jb short .move_forward
    std
    add di, cx
    add si, cx
    dec di
    dec si
    test cl, 1
    je short .nobyte
    movsb
.nobyte:
    dec di
    dec si
    jmp short .domove
.move_forward:
    test cl, 1
    je short .domove
    movsb
.domove:
    shr cx, 1
    je short .done
    rep movsw
.done:
    cld
    pop di
    pop si
    popf
    pop bp
    ret
