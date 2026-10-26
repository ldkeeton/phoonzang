; auto-generated
draw_split_two_line_text:
    mov ax, 0xffd6
    call aztec_csav
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x2a]
    push ax
    call aztec_setmem
    add sp, byte 6
    push word [bp + 4]
    lea ax, word [bp - 0x2a]
    push ax
    call aztec_strcpy
    add sp, byte 4
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x2a]
    push ax
    call strpos
    add sp, byte 4
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    jne short @..draw_split_two_line_text.l1
    lea ax, word [bp - 0x2a]
    push ax
    call aztec_strlen
    pop cx
    mov word [bp - 2], ax
@..draw_split_two_line_text.l1:
    cmp word [bp - 2], byte 0xa
    jle short @..draw_split_two_line_text.l2
    mov word [bp - 2], 0xa
@..draw_split_two_line_text.l2:
    mov bx, word [bp - 2]
    add bx, bp
    mov byte [bx - 0x2a], 0
    mov byte [bx - 0x1f], 0
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call gfx_set_text_color
    add sp, byte 4
    push word [bp + 8]
    push word [bp + 6]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x2a]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, word [bp + 8]
    add ax, strict word 6
    push ax
    push word [bp + 6]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 2]
    lea cx, word [bp - 0x29]
    add ax, cx
    push ax
    call draw_text_glyphs
    add sp, byte 4
    ret
