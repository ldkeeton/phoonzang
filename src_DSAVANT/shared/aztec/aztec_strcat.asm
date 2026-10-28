; auto-generated
aztec_strcat:
    push bp
    mov bp, sp
    mov dx, 0x7fff
    jmp short aztec_strcat.loc1
aztec_strncat:
    push bp
    mov bp, sp
    mov dx, word [bp + 8]
aztec_strcat.loc1:
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
aztec_strcat.loc2:
    lodsb
    stosb
    test al, al
    loopne aztec_strcat.loc2
    je short aztec_strcat.loc3
    sub al, al
    stosb
aztec_strcat.loc3:
    pop di
    pop si
    mov ax, word [bp + 4]
    pop bp
    ret
