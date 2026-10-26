; auto-generated
aztec_noper:
    mov ax, 0
    ret
aztec_Croot:
    push bp
    mov bp, sp
    push di
    push si
    mov si, word [bp + 4]
    mov ax, 0
    push ax
    call aztec_isatty
    pop cx
    mov byte [_ioflg], al
    mov ax, 1
    push ax
    call aztec_isatty
    pop cx
    mov byte [_ioflg + 0x1], al
    mov ax, 2
    push ax
    call aztec_isatty
    pop cx
    mov byte [_ioflg + 0x2], al
    mov ax, word [bp + 6]
    shl ax, 1
    inc ax
    inc ax
    push ax
    call aztec_sbrk
    pop cx
    mov word [Argv], ax
    mov ax, aztec_croot_empty_str
    mov bx, word [Argv]
    mov word [bx], aztec_croot_empty_str
    mov ax, word [bp + 6]
    mov word [Argc], ax
    shl ax, 1
    mov di, word [Argv]
    add di, ax
.back1:
    cmp byte [si], 0x20
    je short .forward1
    cmp byte [si], 9
    jne short .forward2
.forward1:
    inc si
    jmp short .back1
.forward2:
    cmp byte [si], 0
    je short .forward6
    mov word [di], si
    inc di
    inc di
    inc word [Argc]
    mov ax, 2
    push ax
    call aztec_sbrk
    pop cx
    cmp ax, strict word 0xffff
    jne short .back2
    mov ax, 0xe
    push ax
    mov ax, aztec_croot_empty_str + 0x1
    push ax
    mov ax, 2
    push ax
    call aztec_write
    add sp, byte 6
    mov ax, 0xc8
    push ax
    call aztec_impl_exit
    pop cx
.back2:
    inc si
    cmp byte [si], 0
    je short .forward5
    mov al, byte [si]
    cmp al, 0x20
    je short .forward3
    cmp al, 9
    jne short .forward4
.forward3:
    mov byte [si], 0
    inc si
    jmp short .forward5
.forward4:
    jmp short .back2
.forward5:
    jmp short .back1
.forward6:
    mov word [di], 0
    push word [Argv]
    push word [Argc]
    call main
    add sp, byte 4
    mov ax, 0
    push ax
    call aztec_exit
    pop cx
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
aztec_exit:
    push bp
    mov bp, sp
    call [cls_]
    push word [bp + 4]
    call aztec_impl_exit
    pop cx
    mov sp, bp
    pop bp
    ret
