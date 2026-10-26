; auto-generated
titlecase_string:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 4], 0x20
    mov word [bp - 2], 0
    jmp short .forward2
.back1:
    cmp word [bp - 4], byte 0x20
    je short .forward1
    mov bx, word [bp + 4]
    mov si, word [bp - 2]
    cmp byte [bx + si], 0x41
    jb short .forward1
    cmp byte [bx + si], 0x5a
    ja short .forward1
    add byte [bx + si], 0x20
.forward1:
    mov bx, word [bp + 4]
    mov si, word [bp - 2]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 4], ax
    inc word [bp - 2]
.forward2:
    push word [bp + 4]
    call aztec_strlen
    pop cx
    cmp ax, word [bp - 2]
    jg short .back1
    ret
