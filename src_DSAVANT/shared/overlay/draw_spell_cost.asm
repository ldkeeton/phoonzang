; auto-generated
draw_spell_cost:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 4]
    add ax, strict word 0x14
    push ax
    push word [bp + 6]
    push word [bp + 4]
    call draw_inset_panel
    add sp, byte 8
    mov ax, word [bp + 8]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [word bx + 8]
    mov ax, word [bp + 6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 4]
    add ax, strict word 0x14
    push ax
    push word [bp + 6]
    push word [bp + 4]
    call gfx_fill_area
    add sp, byte 0xa
    mov ax, word [bp + 6]
    inc ax
    push ax
    mov ax, word [bp + 4]
    inc ax
    inc ax
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short .forward1
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short .forward1
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    push word [bp + 0xa]
    call draw_number_field
    add sp, byte 6
    jmp short .return1
.forward1:
    mov ax, 0
    push ax
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, draw_spell_cost.dseg1
    push ax
    call draw_text_glyphs
    add sp, byte 4
.return1:
    ret
