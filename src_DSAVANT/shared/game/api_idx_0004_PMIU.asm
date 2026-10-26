; auto-generated
api_idx_0004_PMIU:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call gfx_save_area
    add sp, byte 8
    mov word [bp - 2], dx
    mov word [bp - 4], ax
    mov ax, 0xbc
    push ax
    push word [bp + 4]
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 4]
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call gfx_show_area
    add sp, byte 8
    cmp word [bp + 6], byte 0
    jle short .forward1
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
.forward1:
    push word [message_delay]
    call wait_for_hotspot_timeout
    pop cx
    mov ax, 1
    push ax
    push word [bp - 2]
    push word [bp - 4]
    call gfx_restore_area
    add sp, byte 6
    mov ax, 0xc2
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0
    push ax
    call gfx_show_area
    add sp, byte 8
    ret
