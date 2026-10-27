; auto-generated
aztec_impl_tty_wr:
    push bp
    mov bp, sp
    push di
    push si
    mov di, word [bp + 6]
    mov si, word [bp + 8]
    jmp short .forward1
.back1:
    mov bx, di
    inc di
    cmp byte [bx], 0xa
    jne short .forward1
    mov ax, di
    sub ax, word [bp + 6]
    push ax
    push word [bp + 6]
    push word [bp + 4]
    call aztec_impl_write
    add sp, byte 6
    mov ax, 1
    push ax
    mov ax, aztec_tty_wr_crbuf
    push ax
    push word [bp + 4]
    call aztec_impl_write
    add sp, byte 6
    mov word [bp + 6], di
.forward1:
    mov ax, si
    dec si
    test ax, ax
    jne short .back1
    cmp di, word [bp + 6]
    je short .forward2
    mov ax, di
    sub ax, word [bp + 6]
    push ax
    push word [bp + 6]
    push word [bp + 4]
    call aztec_impl_write
    add sp, byte 6
.forward2:
    mov ax, word [bp + 8]
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
