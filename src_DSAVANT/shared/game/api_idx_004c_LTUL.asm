; auto-generated
api_idx_004c_LTUL:
    mov ax, 0xffb4
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [roster_screen_a]
    push word [roster_screen_b]
    call gfx_restore_screen
    add sp, byte 8
    cmp word [roster_page], byte 0
    je short @..api_idx_004c_LTUL.l1
    mov ax, 0xac
    push ax
    mov ax, 0xa0
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 4
    push ax
    mov ax, 0x63
    push ax
    call draw_font_glyph
    add sp, byte 4
@..api_idx_004c_LTUL.l1:
    cmp word [roster_alt_mode], byte 0
    jne short @..api_idx_004c_LTUL.l2
    cmp word [roster_page], byte 0
    je short @..api_idx_004c_LTUL.l5
@..api_idx_004c_LTUL.l2:
    mov word [bp - 0x0002], 0
@..api_idx_004c_LTUL.l3:
    mov ax, 0x18
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, strict word 0x70
    push ax
    mov ax, 0x9f
    push ax
    mov ax, 0xe
    imul word [bp - 0x0002]
    add ax, strict word 0x70
    push ax
    mov ax, 1
    push ax
    call gfx_fill_area
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jl short @..api_idx_004c_LTUL.l3
    mov word [bp - 0x0002], 0
@..api_idx_004c_LTUL.l4:
    mov ax, 0x18
    push ax
    mov ax, 0xb6
    push ax
    mov ax, 0x4f
    imul word [bp - 0x0002]
    inc ax
    push ax
    mov ax, 0x70
    push ax
    mov ax, 0x4f
    imul word [bp - 0x0002]
    inc ax
    push ax
    call gfx_fill_area
    add sp, byte 0x0a
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 3
    jl short @..api_idx_004c_LTUL.l4
@..api_idx_004c_LTUL.l5:
    mov word [bp - 0x0002], 0
@..api_idx_004c_LTUL.l6:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [roster_page]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    cmp word [bx + cell_key_grid], byte 0
    jg short @..api_idx_004c_LTUL.l7
    jmp near @..api_idx_004c_LTUL.l16
@..api_idx_004c_LTUL.l7:
    cmp word [roster_drawn], byte 0
    je short @..api_idx_004c_LTUL.l8
    jmp near @..api_idx_004c_LTUL.l11
@..api_idx_004c_LTUL.l8:
    mov ax, 0
    push ax
    push word [bx + cell_key_grid]
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 1
    push ax
    call data_record_io
    add sp, byte 8
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [roster_page]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + cell_key_grid + 0x7]
    sub ah, ah
    test ax, 0x80
    je short @..api_idx_004c_LTUL.l9
    lea ax, word [bp - 0x004c]
    push ax
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, roster_names
    push ax
    call aztec_strcpy
    add sp, byte 4
    jmp short @..api_idx_004c_LTUL.l10
@..api_idx_004c_LTUL.l9:
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, roster_names
    push ax
    mov al, byte [bp - 0x0013]
    sub ah, ah
    add ax, 0x1770
    push ax
    call load_message_string
    add sp, byte 4
@..api_idx_004c_LTUL.l10:
    mov al, byte [bp - 0x0012]
    sub ah, ah
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx + roster_row_attr], ax
@..api_idx_004c_LTUL.l11:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx + roster_row_color], 0x69
    cmp word [roster_page], byte 0
    jne short @..api_idx_004c_LTUL.l14
    mov word [bp - 0x0004], 0
@..api_idx_004c_LTUL.l12:
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + cell_key_grid + 0x114]
    sub ah, ah
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_004c_LTUL.l13
    mov ax, word [bp - 0x0004]
    shl ax, 1
    mov bx, ax
    mov ax, word [word bx + 0x1e]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    mov bx, cx
    mov word [bx + roster_row_color], ax
@..api_idx_004c_LTUL.l13:
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..api_idx_004c_LTUL.l12
@..api_idx_004c_LTUL.l14:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [roster_page]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + cell_key_grid + 0x7]
    sub ah, ah
    test ax, 2
    je short @..api_idx_004c_LTUL.l15
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    mov word [bx + roster_row_color], 0x55
@..api_idx_004c_LTUL.l15:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [bx + roster_row_color]
    mov ax, 0x16
    imul word [bp - 0x0002]
    add ax, roster_names
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x78
    imul word [roster_page]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 0xc
    imul word [bp - 0x0002]
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x5c34
    push ax
    push word [bp - 0x0002]
    push word [bp + 0x4]
    call api_idx_0004_MKGU
    add sp, byte 0x0a
@..api_idx_004c_LTUL.l16:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0xa
    jge short @..api_idx_004c_LTUL.l17
    jmp near @..api_idx_004c_LTUL.l6
@..api_idx_004c_LTUL.l17:
    mov word [roster_drawn], 1
    ret
