; auto-generated
api_idx_004c_RQSO:
    mov ax, 0xffb4
    call aztec_csav
    mov ax, 0
    push ax
    push word [bp + 0x6]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call ds_app_file_MPPM
    add sp, byte 8
    cmp word [bp + 0xa], byte 0xfe
    jne short @..api_idx_004c_RQSO.l1
    mov al, byte [bp - 0x0030]
    sub ah, ah
    push ax
    mov al, byte [bp - 0x002f]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    add ax, word [bp - 0x0032]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short @..api_idx_004c_RQSO.l3
@..api_idx_004c_RQSO.l1:
    cmp word [bp + 0xa], byte 0xff
    jne short @..api_idx_004c_RQSO.l2
    push word [bp - 0x0030]
    push word [bp - 0x0032]
    call ds_app_QSQR
    add sp, byte 4
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
    jmp short @..api_idx_004c_RQSO.l3
@..api_idx_004c_RQSO.l2:
    mov al, byte [bp + 0xa]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x6], al
@..api_idx_004c_RQSO.l3:
    mov ax, word [bp + 0x6]
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    mov al, byte [bp - 0x0014]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x4], al
    mov al, byte [bp - 0x0013]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x5], al
    mov ax, word [bp - 0x0028]
    mov bx, word [bp + 0x8]
    mov word [bx + 0x2], ax
    mov al, byte [bp - 0x0024]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x8], al
    mov al, byte [bp - 0x0023]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x9], al
    mov al, byte [bp - 0x0010]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0xa], al
    mov al, byte [bp - 0x000c]
    mov bx, word [bp + 0x8]
    mov byte [bx + 0xb], al
    mov ax, 0
    cmp word [bp + 0xc], byte 0
    je short @..api_idx_004c_RQSO.l4
    mov ax, 0x80
@..api_idx_004c_RQSO.l4:
    mov bx, word [bp + 0x8]
    mov byte [bx + 0x7], al
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 8
    je short @..api_idx_004c_RQSO.l5
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 4
@..api_idx_004c_RQSO.l5:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 4
    je short @..api_idx_004c_RQSO.l6
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 8
@..api_idx_004c_RQSO.l6:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x10
    je short @..api_idx_004c_RQSO.l7
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x10
@..api_idx_004c_RQSO.l7:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 0x20
    je short @..api_idx_004c_RQSO.l8
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x20
@..api_idx_004c_RQSO.l8:
    mov al, byte [bp - 0x0015]
    sub ah, ah
    test ax, 2
    je short @..api_idx_004c_RQSO.l9
    mov bx, word [bp + 0x8]
    or byte [bx + 0x7], 0x40
@..api_idx_004c_RQSO.l9:
    push word [bp + 0x4]
    call ds_app_OOUT
    pop cx
    ret
