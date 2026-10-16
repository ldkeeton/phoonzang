; auto-generated
loc_SIKN:
    mov ax, 0
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + 0x5d6c], 0x64
    jae short @..loc_SIKN.l1
    mov al, byte [bx + 0x5d6c]
    sub ah, ah
    push ax
    call ds_app_PUNN
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c18]
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    sub ax, cx
    jg short @..loc_SIKN.l1
    add bx, word [bp + 0x6]
    inc byte [bx + 0x5d6c]
@..loc_SIKN.l1:
    ret
