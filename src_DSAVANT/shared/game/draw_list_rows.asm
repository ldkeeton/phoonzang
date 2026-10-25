; auto-generated
draw_list_rows:
    mov ax, 0xfffc
    call aztec_csav
    mov word [bp - 0x0002], 0
    jmp near @..draw_list_rows.l8
@..draw_list_rows.l1:
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..draw_list_rows.l2
    mov ax, 1
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 0xd
    push ax
    mov ax, 6
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x1c
    push ax
    call gfx_fill_area
    add sp, byte 0x0a
    mov word [bp - 0x0004], 0
    jmp short @..draw_list_rows.l3
@..draw_list_rows.l2:
    mov word [bp - 0x0004], 0xb4
@..draw_list_rows.l3:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    inc ax
    inc ax
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx + list_row_marked], byte 0
    je short @..draw_list_rows.l4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call draw_font_glyph
    add sp, byte 4
@..draw_list_rows.l4:
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0xf
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + list_row_glyph]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    push word [bp - 0x0004]
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    inc ax
    inc ax
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x1d
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    mov cx, 0x16
    imul cx
    add ax, list_row_name
    push ax
    call draw_split_two_line_text
    add sp, byte 8
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    cmp word [bx + list_row_count], byte 0
    jle short @..draw_list_rows.l7
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x47
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xe]
    jne short @..draw_list_rows.l5
    mov ax, word [bp - 0x0004]
    jmp short @..draw_list_rows.l6
@..draw_list_rows.l5:
    mov ax, 2
@..draw_list_rows.l6:
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, word [bp + 0xc]
    add ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx + list_row_count]
    call draw_number_field
    add sp, byte 6
@..draw_list_rows.l7:
    inc word [bp - 0x0002]
@..draw_list_rows.l8:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0xa]
    jge short @..draw_list_rows.l9
    jmp near @..draw_list_rows.l1
@..draw_list_rows.l9:
    ret
