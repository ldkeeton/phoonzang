; auto-generated
loc_NSKO:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 0x8], byte 1
    jne short @..loc_NSKO.l3
    cmp word [bp + 0x6], byte 0
    jle short @..loc_NSKO.l1
    mov ax, word [bp + 0x4]
    sub word [bp + 0x6], ax
    jmp short @..loc_NSKO.l2
@..loc_NSKO.l1:
    mov ax, 0
    sub ax, word [bp + 0x4]
    cmp ax, word [bp + 0x6]
    jge short @..loc_NSKO.l2
    mov word [bp + 0x6], ax
@..loc_NSKO.l2:
    jmp short @..loc_NSKO.l5
@..loc_NSKO.l3:
    cmp word [bp + 0x8], byte 0
    jne short @..loc_NSKO.l5
    cmp word [bp + 0x6], byte 0
    jge short @..loc_NSKO.l4
    mov ax, word [bp + 0x4]
    add word [bp + 0x6], ax
    jmp short @..loc_NSKO.l5
@..loc_NSKO.l4:
    mov ax, word [bp + 0x6]
    cmp ax, word [bp + 0x4]
    jge short @..loc_NSKO.l5
    mov ax, word [bp + 0x4]
    mov word [bp + 0x6], ax
@..loc_NSKO.l5:
    mov ax, word [bp + 0x6]
    ret
