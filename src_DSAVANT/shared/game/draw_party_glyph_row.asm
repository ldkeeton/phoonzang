; auto-generated
draw_party_glyph_row:
    mov ax, 0xfff2
    call aztec_csav
    cmp word [marker_mode], byte 0
    jg short @..draw_party_glyph_row.l1
    jmp near @..draw_party_glyph_row.l8
@..draw_party_glyph_row.l1:
    mov ax, word [party_tag]
    mov cx, word [marker_mode]
    dec cx
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp short @..draw_party_glyph_row.l6
@..draw_party_glyph_row.l2:
    mov byte [bp - 0x000e], 1
    mov byte [bp - 0x000d], 2
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..draw_party_glyph_row.l3
    mov ax, 4
@..draw_party_glyph_row.l3:
    mov byte [bp - 0x000c], al
    mov byte [bp - 0x000b], 0
    mov word [bp - 0x0004], 0
    jmp short @..draw_party_glyph_row.l7
@..draw_party_glyph_row.l4:
    mov byte [bp - 0x000e], 3
    mov byte [bp - 0x000d], 0
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..draw_party_glyph_row.l5
    mov ax, 1
@..draw_party_glyph_row.l5:
    mov word [bp - 0x0004], ax
    jmp short @..draw_party_glyph_row.l7
@..draw_party_glyph_row.l6:
    cmp ax, strict word 0
    je short @..draw_party_glyph_row.l2
    cmp ax, strict word 1
    je short @..draw_party_glyph_row.l4
    cmp ax, strict word 2
    je short @..draw_party_glyph_row.l2
    cmp ax, strict word 3
    je short @..draw_party_glyph_row.l4
@..draw_party_glyph_row.l7:
    mov ax, 0
    push ax
    push ax
    lea ax, word [bp - 0x000e]
    push ax
    push word [bp - 0x0004]
    mov ax, 0x8f
    push ax
    mov ax, 0x21
    push ax
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov al, byte [bp - 0x000e]
    sub ah, ah
    mov bx, ax
    mov al, byte [bx + glyph_y_table]
    sub ah, ah
    inc ax
    push ax
    shl bx, 1
    mov ax, bx
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + glyph_x_table]
    sub ah, ah
    inc ax
    push ax
    mov ax, 3
    push ax
    call gfx_draw_text
    add sp, byte 0x16
@..draw_party_glyph_row.l8:
    ret
