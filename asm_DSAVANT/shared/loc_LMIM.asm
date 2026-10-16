; auto-generated
loc_LMIM:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x6]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_LMIM.l1
    mov ax, 1
@..loc_LMIM.l1:
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5d54], al
    mov ax, word [bp + 0x8]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_LMIM.l2
    mov ax, 1
@..loc_LMIM.l2:
    mov byte [bx + 0x5d55], al
    mov ax, word [bp + 0xa]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_LMIM.l3
    mov ax, 1
@..loc_LMIM.l3:
    mov byte [bx + 0x5d56], al
    mov ax, word [bp + 0xc]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_LMIM.l4
    mov ax, 1
@..loc_LMIM.l4:
    mov byte [bx + 0x5d57], al
    mov ax, word [bp + 0xe]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_LMIM.l5
    mov ax, 1
@..loc_LMIM.l5:
    mov byte [bx + 0x5d58], al
    mov ax, word [bp + 0x10]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_LMIM.l6
    mov ax, 1
@..loc_LMIM.l6:
    mov byte [bx + 0x5d59], al
    ret
