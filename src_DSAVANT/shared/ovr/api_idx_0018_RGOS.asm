; auto-generated
api_idx_0018_RGOS:
    mov ax, 0xffe8
    call aztec_csav
    mov ax, word [bp + 6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 0xb
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp + 6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    dec ax
    push ax
    mov ax, word [bp + 8]
    dec ax
    push ax
    call call_save_area
    add sp, byte 8
    mov word [bp - 0x16], dx
    mov word [bp - 0x18], ax
    lea ax, word [bp - 0x14]
    push ax
    push word [bp + 4]
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    push ax
    mov ax, word [bp + 6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    push ax
    push word [bp + 8]
    call draw_bevel_frame
    add sp, byte 0xa
    mov ax, word [bp + 6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x14]
    push ax
    call aztec_strlen
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xc]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 8]
    inc ax
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x14]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, word [bp + 6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    push ax
    mov ax, word [bp + 6]
    imul word [bp + 0xe]
    add ax, word [bp + 0xa]
    push ax
    push word [bp + 8]
    call call_show_area
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x16]
    push word [bp - 0x18]
    call call_restore_area
    add sp, byte 6
    ret
