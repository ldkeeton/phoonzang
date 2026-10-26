; auto-generated
loc_NJOH:
    mov ax, 0
    call aztec_csav
    mov ax, 0x7d
    push ax
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    push ax
    mov ax, 0xe
    imul word [bp + 6]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, word [bp + 8]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.prev]
    sub ah, ah
    add ax, word [bp + 0xa]
    push ax
    call clamp_between
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0xe
    imul word [bp + 6]
    mov dx, ax
    add cx, ax
    add cx, word [bp + 8]
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.prev], al
    ret
