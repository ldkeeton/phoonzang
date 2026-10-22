; auto-generated
redraw_glyph_strip:
    mov ax, 0xfff6
    call aztec_csav
    mov ax, 0
    push ax
    push word [saved_area_a + 0x2]
    push word [saved_area_a]
    call gfx_restore_area
    add sp, byte 6
    mov ax, 0
    push ax
    push word [saved_area_b + 0x2]
    push word [saved_area_b]
    call gfx_restore_area
    add sp, byte 6
    mov byte [bp - 0x000a], 1
    mov byte [bp - 0x0009], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000a]
    push ax
    mov ax, 0
    push ax
    mov ax, 0xc7
    push ax
    mov ax, 0
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    mov ax, 0x9a
    push ax
    mov ax, 0x37
    push ax
    mov ax, 0xe
    push ax
    call gfx_draw_text
    add sp, byte 0x16
    cmp word [bp + 0x4], byte 0
    je short @..redraw_glyph_strip.l1
    mov ax, 0xc2
    push ax
    mov ax, 0x13a
    push ax
    mov ax, 0x93
    push ax
    mov ax, 8
    push ax
    call gfx_show_area
    add sp, byte 8
@..redraw_glyph_strip.l1:
    ret
