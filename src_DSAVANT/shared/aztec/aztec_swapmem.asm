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
    jcxz .done
    cmp di, si
    je short .done
.swaploop:
    mov al, byte [es:di]
    xchg byte [si], al
    stosb
    inc si
    loop .swaploop
.done:
    pop di
    pop si
    pop bp
    ret
