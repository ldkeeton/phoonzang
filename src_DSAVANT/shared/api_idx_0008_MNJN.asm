; auto-generated
api_idx_0008_MNJN:
    mov ax, 0xfff8
    call aztec_csav
    push word [bp + 0x4]
    call ds_app_KTPM
    pop cx
    test ax, ax
    jne short @..api_idx_0008_MNJN.l1
    jmp near @..api_idx_0008_MNJN.l4
@..api_idx_0008_MNJN.l1:
    mov ax, 0x2c
    imul word [bp + 0x4]
    mov si, ax
    mov bx, word [party_char]
    cmp byte [bx + si + 0x2b], 1
    je short @..api_idx_0008_MNJN.l2
    cmp byte [bx + si + 0x2b], 3
    je short @..api_idx_0008_MNJN.l2
    jmp near @..api_idx_0008_MNJN.l4
@..api_idx_0008_MNJN.l2:
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_app_LUOV
    add sp, byte 4
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 0x0006], ax
    mov ax, word [bp + 0x4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 0x0008], ax
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x1c
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xb
    push ax
    call ds_loc_TJTV
    add sp, byte 4
    cmp word [bp + 0x6], byte 0
    je short @..api_idx_0008_MNJN.l3
    mov ax, word [bp - 0x0008]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x3b
    push ax
    push word [bp - 0x0008]
    push word [bp - 0x0006]
    call gfx_show_area
    add sp, byte 8
@..api_idx_0008_MNJN.l3:
    jmp short @..api_idx_0008_MNJN.l5
@..api_idx_0008_MNJN.l4:
    push word [bp + 0x6]
    push word [bp + 0x4]
    call ds_app_LUOV
    add sp, byte 4
@..api_idx_0008_MNJN.l5:
    ret
