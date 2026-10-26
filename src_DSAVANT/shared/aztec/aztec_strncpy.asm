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
    jcxz .cpydone
.cpyloop:
    lodsb
    test al, al
    je short .zerofill
    stosb
    loop .cpyloop
    jmp short .cpydone
.zerofill:
    rep stosb
.cpydone:
    pop di
    pop si
    mov ax, word [bp + 4]
    pop bp
    ret
