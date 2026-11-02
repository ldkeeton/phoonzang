; auto-generated
aztec_impl_tty_rd:
    push bp
    mov bp, sp
    push si
    mov si, word [_TTrem]
    test si, si
    jne short .forward2
    mov ax, 0x104
    push ax
    mov ax, aztec_tty_rd_buffer
    push ax
    push word [bp + 4]
    call aztec_impl_read
    add sp, byte 6
    mov si, ax
    test si, si
    je short .forward1
    cmp byte [si + Argv + 0x1], 0xa
    jne short .forward1
    dec si
    mov al, byte [_Eol]
    mov byte [si + Argv + 0x1], al
.forward1:
    mov word [aztec_tty_rd_bp], aztec_tty_rd_buffer
    mov word [_TTrem], si
.forward2:
    cmp si, word [bp + 8]
    jle short .forward3
    mov si, word [bp + 8]
.forward3:
    test si, si
    je short .forward4
    push si
    push word [bp + 6]
    push word [aztec_tty_rd_bp]
    call aztec_movmem
    add sp, byte 6
.forward4:
    add word [aztec_tty_rd_bp], si
    sub word [_TTrem], si
    mov ax, si
    pop si
    mov sp, bp
    pop bp
    ret
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
