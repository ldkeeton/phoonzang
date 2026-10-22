; auto-generated
draw_split_two_line_text:
    mov ax, 0xffd6
    call aztec_csav
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call aztec_setmem
    add sp, byte 6
    push word [bp + 0x4]
    lea ax, word [bp - 0x002a]
    push ax
    call aztec_strcpy
    add sp, byte 4
    mov ax, 0x2f
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call strpos
    add sp, byte 4
    mov word [bp - 0x0002], ax
    cmp ax, strict word 0xffff
    jne short @..draw_split_two_line_text.l1
    lea ax, word [bp - 0x002a]
    push ax
    call aztec_strlen
    pop cx
    mov word [bp - 0x0002], ax
@..draw_split_two_line_text.l1:
    cmp word [bp - 0x0002], byte 0x0a
    jle short @..draw_split_two_line_text.l2
    mov word [bp - 0x0002], 0xa
@..draw_split_two_line_text.l2:
    mov bx, word [bp - 0x0002]
    add bx, bp
    mov byte [bx - 0x002a], 0
    mov byte [bx - 0x001f], 0
    mov ax, 0
    push ax
    push word [bp + 0xa]
    call gfx_set_text_color
    add sp, byte 4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x002a]
    push ax
    call draw_string
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 6
    push ax
    push word [bp + 0x6]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    lea cx, word [bp - 0x0029]
    add ax, cx
    push ax
    call draw_string
    add sp, byte 4
    ret
