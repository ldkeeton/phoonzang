; auto-generated
restore_areas_redraw_glyph:
    mov ax, 0xfff6
    call aztec_csav
    mov ax, 0
    push ax
    push word [saved_area_a_hi]
    push word [saved_area_a]
    call gfx_restore_area
    add sp, byte 6
    mov ax, 0
    push ax
    push word [saved_area_b_hi]
    push word [saved_area_b]
    call gfx_restore_area
    add sp, byte 6
    mov byte [bp - 0xa], 1
    mov byte [bp - 9], 0
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0xa]
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
    cmp word [bp + 4], byte 0
    je short .return1
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
.return1:
    ret
