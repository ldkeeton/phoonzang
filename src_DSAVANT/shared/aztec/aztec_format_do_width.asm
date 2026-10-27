; auto-generated
aztec_format_do_width:
    cmp al, 0x2a
    jne short .forward1
    push ds
    pop es
    mov di, word [bp + 8]
    mov dx, word [es:di]
    add di, byte 2
    mov word [bp + 8], di
    lodsb
    ret
.forward1:
    sub dx, dx
    mov ah, 0
.back1:
    cmp al, 0x30
    jb short .return1
    cmp al, 0x39
    ja short .return1
    sub al, 0x30
    shl dx, 1
    mov cx, dx
    shl dx, 1
    shl dx, 1
    add dx, cx
    add dx, ax
    lodsb
    jmp short .back1
.return1:
    ret
