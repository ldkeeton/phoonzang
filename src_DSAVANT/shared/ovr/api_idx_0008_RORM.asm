; auto-generated
api_idx_0008_RORM:
    mov ax, 0xfff8
    call aztec_csav
    mov ax, word [bp + 6]
    cwd
    idiv word [bp + 0x12]
    imul word [bp + 0xe]
    mov word [bp - 2], ax
    mov ax, word [bp + 6]
    cwd
    idiv word [bp + 0x12]
    mov ax, dx
    imul word [bp + 0x10]
    mov word [bp - 4], ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 4]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    add ax, word [bp - 2]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 4]
    dec ax
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 2]
    dec ax
    push ax
    call call_save_area
    add sp, byte 8
    mov word [bp - 6], dx
    mov word [bp - 8], ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 4]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    add ax, word [bp - 2]
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 4]
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 2]
    push ax
    call draw_bevel_frame
    add sp, byte 0xa
    mov ax, 0xc0
    push ax
    push word [bp + 0x14]
    call call_set_text_color
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push word [bp + 4]
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
    add ax, word [bp - 2]
    inc ax
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 4]
    call draw_text_glyphs
    add sp, byte 4
    mov ax, word [bp + 0xa]
    add ax, word [bp - 4]
    add ax, strict word 9
    push ax
    mov ax, 6
    imul word [bp + 0xc]
    add ax, word [bp + 8]
    add ax, word [bp - 2]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    add ax, word [bp - 4]
    dec ax
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 2]
    dec ax
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 6]
    push word [bp - 8]
    call call_restore_area
    add sp, byte 6
    ret
loc_MNNG:
    mov ax, 0
    call aztec_csav
    push word [bp + 0xc]
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 8]
    inc ax
    push ax
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    push word [bp + 0xc]
    mov ax, word [bp + 0xa]
    inc ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    mov ax, word [bp + 6]
    dec ax
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    call call_fill_area
    add sp, byte 0xa
    ret
