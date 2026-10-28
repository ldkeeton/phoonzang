; auto-generated
draw_active_member_panel:
    mov ax, 0xfff8
    call aztec_csav
    push word [bp + 4]
    call member_is_active
    pop cx
    test ax, ax
    jne short .forward1
    jmp near .forward4
.forward1:
    mov ax, 0x2c
    imul word [bp + 4]
    mov si, ax
    mov bx, word [party_char]
    cmp byte [bx + si + member_rec.item_phase], 1
    je short .forward2
    cmp byte [bx + si + 0x2b], 3
    je short .forward2
    jmp near .forward4
.forward2:
    mov ax, 0
    push ax
    push word [bp + 4]
    call draw_party_member_panel
    add sp, byte 4
    mov ax, word [bp + 4]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xfc
    imul cx
    add ax, strict word 5
    mov word [bp - 6], ax
    mov ax, word [bp + 4]
    mov cx, 2
    cwd
    idiv cx
    mov cx, 0x2d
    imul cx
    add ax, strict word 0x12
    mov word [bp - 8], ax
    add ax, strict word 0x15
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x1c
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xb
    push ax
    call draw_font_glyph
    add sp, byte 4
    cmp word [bp + 6], byte 0
    je short .forward3
    mov ax, word [bp - 8]
    add ax, strict word 0x2b
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x3b
    push ax
    push word [bp - 8]
    push word [bp - 6]
    call gfx_show_area
    add sp, byte 8
.forward3:
    jmp short .return1
.forward4:
    push word [bp + 6]
    push word [bp + 4]
    call draw_party_member_panel
    add sp, byte 4
.return1:
    ret
