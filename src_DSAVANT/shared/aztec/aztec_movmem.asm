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
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    mov ax, es
    mov dx, ds
    cmp ax, dx
    jne short @..aztec_movmem.move_forward
    cmp di, si
    je short @..aztec_movmem.done
    jb short @..aztec_movmem.move_forward
    std
    add di, cx
    add si, cx
    dec di
    dec si
    test cl, 1
    je short @..aztec_movmem.nobyte
    movsb
@..aztec_movmem.nobyte:
    dec di
    dec si
    jmp short @..aztec_movmem.domove
@..aztec_movmem.move_forward:
    test cl, 1
    je short @..aztec_movmem.domove
    movsb
@..aztec_movmem.domove:
    shr cx, 1
    je short @..aztec_movmem.done
    rep movsw
@..aztec_movmem.done:
    cld
    pop di
    pop si
    popf
    pop bp
    ret
