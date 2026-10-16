; auto-generated
; asm only
aztec_strncat:
    push bp
    mov bp, sp
    mov dx, word [bp + 0x8]
@..aztec_strncat.catcommon:
    cld
    push si
    push di
    mov di, ds
    mov es, di
    mov di, word [bp + 0x4]
    sub ax, ax
    mov cx, 0x7fff
    repne scasb ; find end of destination string
    dec di ; backup to null byte
    mov si, word [bp + 0x6]
    mov cx, dx
@..aztec_strncat.cpyloop:
    lodsb
    stosb
    test al, al
    loopne @..aztec_strncat.cpyloop
    je short @..aztec_strncat.nul_ok
    sub al, al ; guarantee that string is nul terminated
    stosb
@..aztec_strncat.nul_ok:
    pop di
    pop si
    mov ax, word [bp + 0x4]
    pop bp
    ret
