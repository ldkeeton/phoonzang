; auto-generated
api_idx_0010_STNH:
    mov ax, 0xfff0
    call aztec_csav
    lea ax, word [bp - 0xc]
    push ax
    lea ax, word [bp - 0xa]
    push ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    push word [bx + member_icon]
    mov ax, 5
    push ax
    call get_font_glyph
    add sp, byte 8
    mov word [bp - 6], dx
    mov word [bp - 8], ax
    mov ax, word [bp - 0xa]
    mov word [bp - 0xe], ax
    mov word [bp - 4], 0
    jmp near @..api_idx_0010_STNH.l7
@..api_idx_0010_STNH.l1:
    mov word [bp - 2], 0
    jmp near @..api_idx_0010_STNH.l5
@..api_idx_0010_STNH.l2:
    les bx, word [bp - 8]
    mov si, word [bp - 0xe]
    mov al, byte [es:bx + si]
    sub ah, ah
    mov word [bp - 0x10], ax
    cmp ax, 0xff
    jne short @..api_idx_0010_STNH.l3
    jmp near @..api_idx_0010_STNH.l4
@..api_idx_0010_STNH.l3:
    mov ax, 0xffff
    push ax
    push word [bp - 0x10]
    call clamp_value_to_range
    add sp, byte 4
    push ax
    mov ax, word [bp - 4]
    shl ax, 1
    add ax, word [bp + 8]
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    add ax, word [bp + 6]
    push ax
    call gfx_put_pixel
    add sp, byte 6
    push word [bp - 0x10]
    mov ax, word [bp - 4]
    shl ax, 1
    add ax, word [bp + 8]
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    add ax, word [bp + 6]
    inc ax
    push ax
    call gfx_put_pixel
    add sp, byte 6
    push word [bp - 0x10]
    mov ax, word [bp - 4]
    shl ax, 1
    add ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    add ax, word [bp + 6]
    push ax
    call gfx_put_pixel
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x10]
    call clamp_value_to_range
    add sp, byte 4
    push ax
    mov ax, word [bp - 4]
    shl ax, 1
    add ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    add ax, word [bp + 6]
    inc ax
    push ax
    call gfx_put_pixel
    add sp, byte 6
@..api_idx_0010_STNH.l4:
    inc word [bp - 0xe]
    inc word [bp - 2]
@..api_idx_0010_STNH.l5:
    mov ax, word [bp - 2]
    cmp ax, word [bp - 0xa]
    jge short @..api_idx_0010_STNH.l6
    jmp near @..api_idx_0010_STNH.l2
@..api_idx_0010_STNH.l6:
    inc word [bp - 4]
@..api_idx_0010_STNH.l7:
    mov ax, word [bp - 0xc]
    dec ax
    dec ax
    cmp ax, word [bp - 4]
    jle short @..api_idx_0010_STNH.l8
    jmp near @..api_idx_0010_STNH.l1
@..api_idx_0010_STNH.l8:
    ret
