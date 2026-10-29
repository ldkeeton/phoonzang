; auto-generated
api_idx_0008_OMTP:
    mov ax, 0xfff8
    call aztec_csav
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call call_show_area
    add sp, byte 8
    push word [bp + 4]
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 2], ax
    push word [bp + 4]
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 2]
    add cx, ax
    mov word [bp - 4], cx
    mov ax, 0x98
    push ax
    push cx
    mov ax, 0x92
    push ax
    push word [bp - 2]
    call call_save_area
    add sp, byte 8
    mov word [bp - 6], dx
    mov word [bp - 8], ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 0x92
    push ax
    push word [bp - 2]
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 4]
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0x98
    push ax
    push word [bp - 4]
    mov ax, 0x92
    push ax
    push word [bp - 2]
    call call_show_area
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 6]
    push word [bp - 8]
    call call_restore_area
    add sp, byte 6
    call flush_keyboard
    ret
