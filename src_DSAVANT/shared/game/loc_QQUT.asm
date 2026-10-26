; auto-generated
loc_QQUT:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 8], byte 1
    jne short @..loc_QQUT.l3
    cmp word [bp + 6], byte 0
    jle short @..loc_QQUT.l1
    mov ax, word [bp + 4]
    sub word [bp + 6], ax
    jmp short @..loc_QQUT.l2
@..loc_QQUT.l1:
    mov ax, 0
    sub ax, word [bp + 4]
    cmp ax, word [bp + 6]
    jge short @..loc_QQUT.l2
    mov word [bp + 6], ax
@..loc_QQUT.l2:
    jmp short @..loc_QQUT.l5
@..loc_QQUT.l3:
    cmp word [bp + 8], byte 0
    jne short @..loc_QQUT.l5
    cmp word [bp + 6], byte 0
    jge short @..loc_QQUT.l4
    mov ax, word [bp + 4]
    add word [bp + 6], ax
    jmp short @..loc_QQUT.l5
@..loc_QQUT.l4:
    mov ax, word [bp + 6]
    cmp ax, word [bp + 4]
    jge short @..loc_QQUT.l5
    mov ax, word [bp + 4]
    mov word [bp + 6], ax
@..loc_QQUT.l5:
    mov ax, word [bp + 6]
    ret
