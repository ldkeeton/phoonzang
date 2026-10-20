; auto-generated
aztec_strcat:
    push bp
    mov bp, sp
    mov dx, 0x7fff
    jmp short @..aztec_strcat.catcommon
aztec_strncat:
    push bp
    mov bp, sp
    mov dx, word [bp + 0x8]
@..aztec_strcat.catcommon:
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    sub ax, ax
    mov cx, 0x7fff
    repne scasb
    dec di
    mov si, word [bp + 0x6]
    mov cx, dx
@..aztec_strcat.cpyloop:
    lodsb
    stosb
    test al, al
    loopne @..aztec_strcat.cpyloop
    je short @..aztec_strcat.nul_ok
    sub al, al
    stosb
@..aztec_strcat.nul_ok:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
