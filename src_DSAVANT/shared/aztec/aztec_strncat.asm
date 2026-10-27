; auto-generated
aztec_strncat:
    push bp
    mov bp, sp
    mov dx, word [bp + 8]
aztec_strncat.loc1:
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 4]
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    dec di
    mov si, word [bp + 6]
    mov cx, dx
aztec_strncat.loc2:
    lodsb
    stosb
    test al, al
    loopne aztec_strncat.loc2
    je short aztec_strncat.loc3
    sub al, al
    stosb
aztec_strncat.loc3:
    pop di
    pop si
    mov ax, word [bp + 4]
    pop bp
    ret
