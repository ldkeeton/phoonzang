; auto-generated
draw_known_spell_values:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [roster_screen_a]
    push word [roster_screen_b]
    call gfx_restore_screen
    add sp, byte 8
    mov word [bp - 2], 0
    jmp near @..draw_known_spell_values.l2
@..draw_known_spell_values.l1:
    mov ax, 0
    push ax
    mov ax, word [bp + 6]
    shl ax, 1
    mov bx, ax
    push word [word bx + 0x30]
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 6
    imul word [bp - 2]
    add ax, strict word 0x72
    push ax
    mov ax, 6
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 2]
    add ax, known_spell_names
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 6
    imul word [bp - 2]
    add ax, strict word 0x72
    push ax
    mov ax, 0x85
    push ax
    call gfx_set_text_pos
    add sp, byte 4
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
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 2]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.flag]
    sub ah, ah
    push ax
    call draw_number_field
    add sp, byte 6
    inc word [bp - 2]
@..draw_known_spell_values.l2:
    mov ax, word [bp - 2]
    cmp ax, word [bp + 8]
    jge short @..draw_known_spell_values.l3
    jmp near @..draw_known_spell_values.l1
@..draw_known_spell_values.l3:
    ret
