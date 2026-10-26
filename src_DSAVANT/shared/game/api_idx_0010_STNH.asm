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
    jmp near .forward5
.back1:
    mov word [bp - 2], 0
    jmp near .forward3
.back2:
    les bx, word [bp - 8]
    mov si, word [bp - 0xe]
    mov al, byte [es:bx + si]
    sub ah, ah
    mov word [bp - 0x10], ax
    cmp ax, 0xff
    jne short .forward1
    jmp near .forward2
.forward1:
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
.forward2:
    inc word [bp - 0xe]
    inc word [bp - 2]
.forward3:
    mov ax, word [bp - 2]
    cmp ax, word [bp - 0xa]
    jge short .forward4
    jmp near .back2
.forward4:
    inc word [bp - 4]
.forward5:
    mov ax, word [bp - 0xc]
    dec ax
    dec ax
    cmp ax, word [bp - 4]
    jle short .return1
    jmp near .back1
.return1:
    ret
