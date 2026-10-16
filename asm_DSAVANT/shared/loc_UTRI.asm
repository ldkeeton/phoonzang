; auto-generated
loc_UTRI:
    mov ax, 0
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..loc_UTRI.l1
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, strict word 8
    push ax
    call ds_app_IPOK
    pop cx
@..loc_UTRI.l1:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + 0x5e2f], 3
    mov word [bx + 0x5c0c], 0
    mov word [bx + 0x5c10], 0
    cmp word [bp + 0x6], byte 0
    jle short @..loc_UTRI.l2
    mov ax, 1
    push ax
    push word [bp + 0x4]
    call ds_app_PIKI
    add sp, byte 4
    cmp word [bp + 0x6], byte 1
    jle short @..loc_UTRI.l2
    mov ax, 8
    push ax
    call ds_app_MIKI
    pop cx
@..loc_UTRI.l2:
    ret
