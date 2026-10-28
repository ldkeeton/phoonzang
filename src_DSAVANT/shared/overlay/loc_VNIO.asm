; auto-generated
loc_VNIO:
    mov ax, 0
    call aztec_csav
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call gfx_set_text_color
    add sp, byte 4
    push word [bp + 8]
    push word [bp + 4]
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 6]
    sub ax, cx
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 4]
    call draw_text_glyphs
    add sp, byte 4
    ret
