; auto-generated
loc_QQUT:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 0x8], byte 1
    jne short @..loc_QQUT.l3
    cmp word [bp + 0x6], byte 0
    jle short @..loc_QQUT.l1
    mov ax, word [bp + 0x4]
    sub word [bp + 0x6], ax
    jmp short @..loc_QQUT.l2
@..loc_QQUT.l1:
    mov ax, 0
    sub ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jge short @..loc_QQUT.l2
    mov word [bp + 0x6], ax
@..loc_QQUT.l2:
    jmp short @..loc_QQUT.l5
@..loc_QQUT.l3:
    cmp word [bp + 0x8], byte 0
    jne short @..loc_QQUT.l5
    cmp word [bp + 0x6], byte 0
    jge short @..loc_QQUT.l4
    mov ax, word [bp + 0x4]
    add word [bp + 0x6], ax
    jmp short @..loc_QQUT.l5
@..loc_QQUT.l4:
    mov ax, word [bp + 0x6]
    cmp ax, word [bp + 0x4]
    jge short @..loc_QQUT.l5
    mov ax, word [bp + 0x4]
    mov word [bp + 0x6], ax
@..loc_QQUT.l5:
    mov ax, word [bp + 0x6]
    ret
