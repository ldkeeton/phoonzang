; auto-generated
api_idx_0010_STNH:
    mov ax, 0xfff0
    call aztec_csav
    lea ax, word [bp - 0x000c]
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + member_icon]
    mov ax, 5
    push ax
    call get_font_glyph
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x000e], ax
    mov word [bp - 0x0004], 0
    jmp near @..api_idx_0010_STNH.l7
@..api_idx_0010_STNH.l1:
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0010_STNH.l5
@..api_idx_0010_STNH.l2:
    les bx, word [bp - 0x0008]
    mov si, word [bp - 0x000e]
    mov al, byte [es:bx + si]
    sub ah, ah
    mov word [bp - 0x0010], ax
    cmp ax, 0xff
    jne short @..api_idx_0010_STNH.l3
    jmp near @..api_idx_0010_STNH.l4
@..api_idx_0010_STNH.l3:
    mov ax, 0xffff
    push ax
    push word [bp - 0x0010]
    call clamp_value_to_range
    add sp, byte 4
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    push ax
    call gfx_put_pixel
    add sp, byte 6
    push word [bp - 0x0010]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    inc ax
    push ax
    call gfx_put_pixel
    add sp, byte 6
    push word [bp - 0x0010]
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    push ax
    call gfx_put_pixel
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0010]
    call clamp_value_to_range
    add sp, byte 4
    push ax
    mov ax, word [bp - 0x0004]
    shl ax, 1
    add ax, word [bp + 0x8]
    inc ax
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    add ax, word [bp + 0x6]
    inc ax
    push ax
    call gfx_put_pixel
    add sp, byte 6
@..api_idx_0010_STNH.l4:
    inc word [bp - 0x000e]
    inc word [bp - 0x0002]
@..api_idx_0010_STNH.l5:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jge short @..api_idx_0010_STNH.l6
    jmp near @..api_idx_0010_STNH.l2
@..api_idx_0010_STNH.l6:
    inc word [bp - 0x0004]
@..api_idx_0010_STNH.l7:
    mov ax, word [bp - 0x000c]
    dec ax
    dec ax
    cmp ax, word [bp - 0x0004]
    jle short @..api_idx_0010_STNH.l8
    jmp near @..api_idx_0010_STNH.l1
@..api_idx_0010_STNH.l8:
    ret
