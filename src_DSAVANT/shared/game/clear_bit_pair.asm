; auto-generated
clear_bit_pair:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, word [bp + 6]
    mov word [bp - 2], ax
    jmp short @..clear_bit_pair.l2
@..clear_bit_pair.l1:
    mov ax, word [bp - 2]
    mov cx, 8
    cwd
    idiv cx
    mov si, ax
    mov bx, word [bp + 4]
    mov al, byte [bx + si]
    cbw
    push ax
    mov ax, word [bp - 2]
    cwd
    idiv cx
    mov cx, dx
    mov dx, 1
    shl dx, cl
    mov cx, dx
    not cx
    pop ax
    and ax, cx
    mov byte [bx + si], al
    inc word [bp - 2]
@..clear_bit_pair.l2:
    mov ax, word [bp + 6]
    inc ax
    inc ax
    cmp ax, word [bp - 2]
    jg short @..clear_bit_pair.l1
    ret
