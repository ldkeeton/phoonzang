; auto-generated
draw_spell_cost:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call draw_inset_panel
    add sp, byte 8
    mov ax, word [bp + 0x8]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [word bx + 0x8]
    mov ax, word [bp + 0x6]
    add ax, strict word 6
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x14
    push ax
    push word [bp + 0x6]
    push word [bp + 0x4]
    call gfx_fill_area
    add sp, byte 0x0a
    mov ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    cmp word [bp + 0xa], byte 0
    jle short @..draw_spell_cost.l1
    mov ax, word [bp + 0xa]
    cmp ax, word [bp + 0xc]
    jg short @..draw_spell_cost.l1
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
    jmp short @..draw_spell_cost.l2
@..draw_spell_cost.l1:
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
@..draw_spell_cost.l2:
    ret
