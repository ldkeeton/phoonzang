; auto-generated
draw_power_digit:
    mov ax, 0
    call aztec_csav
    push word [bp + 6]
    mov ax, 0xa
    imul word [bp + 8]
    add ax, word [bp + 4]
    dec ax
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short .forward1
    mov ax, 1
.forward1:
    add ax, strict word 0x10
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    push word [bp + 6]
    mov ax, 0xa
    imul word [bp + 8]
    add ax, word [bp + 4]
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 8]
    inc ax
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    cmp word [bp + 8], byte 0
    jne short .return1
    cmp word [bp + 0xa], byte 0
    jne short .return1
    mov ax, 0xc2
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 4]
    dec ax
    push ax
    push word [bp + 6]
    push ax
    call call_fill_area
    add sp, byte 0xa
.return1:
    ret
