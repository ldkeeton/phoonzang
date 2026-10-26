; auto-generated
loc_OIOJ:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 6]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_OIOJ.l1
    mov ax, 1
@..loc_OIOJ.l1:
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    pop ax
    mov byte [bx + party_records + pc_rec.f_0160], al
    mov ax, word [bp + 8]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_OIOJ.l2
    mov ax, 1
@..loc_OIOJ.l2:
    mov byte [bx + party_records + pc_rec.f_0160 + 0x1], al
    mov ax, word [bp + 0xa]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_OIOJ.l3
    mov ax, 1
@..loc_OIOJ.l3:
    mov byte [bx + party_records + pc_rec.f_0160 + 0x2], al
    mov ax, word [bp + 0xc]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_OIOJ.l4
    mov ax, 1
@..loc_OIOJ.l4:
    mov byte [bx + party_records + pc_rec.f_0160 + 0x3], al
    mov ax, word [bp + 0xe]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_OIOJ.l5
    mov ax, 1
@..loc_OIOJ.l5:
    mov byte [bx + party_records + pc_rec.f_0160 + 0x4], al
    mov ax, word [bp + 0x10]
    push ax
    cmp ax, strict word 1
    pop ax
    jge short @..loc_OIOJ.l6
    mov ax, 1
@..loc_OIOJ.l6:
    mov byte [bx + party_records + pc_rec.f_0160 + 0x5], al
    ret
