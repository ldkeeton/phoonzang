; auto-generated
aztec_swapmem:
    push bp
    mov bp, sp
    push si
    push di
    mov di, ds
    mov es, di
    mov si, word [bp + 0x4]
    mov di, word [bp + 0x6]
    mov cx, word [bp + 0x8]
    jcxz @..aztec_swapmem.done
    cmp di, si
    je short @..aztec_swapmem.done
@..aztec_swapmem.swaploop:
    mov al, byte [es:di]
    xchg byte [si], al
    stosb
    inc si
    loop @..aztec_swapmem.swaploop
@..aztec_swapmem.done:
    pop di
    pop si
    pop bp
    ret
