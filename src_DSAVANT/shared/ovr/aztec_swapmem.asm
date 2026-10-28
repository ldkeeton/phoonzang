; auto-generated
aztec_swapmem:
    push bp
    mov bp, sp
    push si
    push di
    mov di, ds
    mov es, di
    mov si, word [bp + 4]
    mov di, word [bp + 6]
    mov cx, word [bp + 8]
    jcxz .forward1
    cmp di, si
    je short .forward1
.back1:
    mov al, byte [es:di]
    xchg byte [si], al
    stosb
    inc si
    loop .back1
.forward1:
    pop di
    pop si
    pop bp
    ret
