; auto-generated
aztec_strncpy:
    push bp
    mov bp, sp
    cld
    push si
    push di
    mov cx, word [bp + 8]
    mov di, ds
    mov es, di
    mov di, word [bp + 4]
    mov si, word [bp + 6]
    jcxz .forward2
.back1:
    lodsb
    test al, al
    je short .forward1
    stosb
    loop .back1
    jmp short .forward2
.forward1:
    rep stosb
.forward2:
    pop di
    pop si
    mov ax, word [bp + 4]
    pop bp
    ret
