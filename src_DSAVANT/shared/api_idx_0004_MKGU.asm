; auto-generated
api_idx_0004_MKGU:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, 0xd
    imul cx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, ax
    pop ax
    add ax, cx
    add ax, strict word 4
    mov word [bp - 0x0002], ax
    shl dx, 1
    mov ax, dx
    mov cx, 6
    imul cx
    push ax
    mov ax, word [bp + 0x6]
    mov cx, 5
    cwd
    idiv cx
    mov cx, dx
    shl cx, 1
    pop ax
    add ax, cx
    add ax, strict word 0x72
    mov word [bp - 0x0004], ax
    push ax
    push word [bp - 0x0002]
    call gfx_entry_13
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x5]
    sub ah, ah
    push ax
    call ds_loc_TJTV
    add sp, byte 4
    push word [bp + 0xc]
    push word [bp - 0x0004]
    mov ax, word [bp - 0x0002]
    add ax, strict word 0xe
    push ax
    push word [bp + 0xa]
    call api_idx_002a_STSK
    add sp, byte 8
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x4]
    sub ah, ah
    mov bx, ax
    cmp byte [bx + 0x60e], 1
    jne short @..api_idx_0004_MKGU.l1
    mov ax, word [bp - 0x0004]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 0x0002]
    add ax, strict word 0x38
    push ax
    call gfx_entry_13
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 2
    push ax
    call gfx_entry_12
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x6]
    sub ah, ah
    push ax
    call ds_app_GUML
    add sp, byte 6
@..api_idx_0004_MKGU.l1:
    ret
