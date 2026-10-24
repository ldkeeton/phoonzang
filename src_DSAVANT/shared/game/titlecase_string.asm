; auto-generated
titlecase_string:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 0x0004], 0x20
    mov word [bp - 0x0002], 0
    jmp short @..titlecase_string.l3
@..titlecase_string.l1:
    cmp word [bp - 0x0004], byte 0x20
    je short @..titlecase_string.l2
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    cmp byte [bx + si], 0x41
    jb short @..titlecase_string.l2
    cmp byte [bx + si], 0x5a
    ja short @..titlecase_string.l2
    add byte [bx + si], 0x20
@..titlecase_string.l2:
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0002]
    mov al, byte [bx + si]
    sub ah, ah
    mov word [bp - 0x0004], ax
    inc word [bp - 0x0002]
@..titlecase_string.l3:
    push word [bp + 0x4]
    call aztec_strlen
    pop cx
    cmp ax, word [bp - 0x0002]
    jg short @..titlecase_string.l1
    ret
