; auto-generated
refresh_floor_item_icon:
    mov ax, 0xfffa
    call aztec_csav
    call find_floor_item_at_party
    mov word [bp - 2], ax
    test ax, ax
    je short .forward1
    mov ax, 0
    push ax
    push word [base_screen_area_segment]
    push word [base_screen_area]
    call call_restore_area
    add sp, byte 6
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 4
    push ax
    mov bx, word [bp - 2]
    mov al, byte [bx + 7]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 1
    ret
.forward1:
    mov ax, 0
    push ax
    mov ax, word [party_map_piece]
    mov cx, 6
    shl ax, cl
    mov cx, word [party_cell_y]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [party_cell_x]
    push ax
    mov ax, floor_item_cell_bits
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 0
    push ax
    push word [base_screen_area_segment]
    push word [base_screen_area]
    call call_restore_area
    add sp, byte 6
    mov ax, 0xc4
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xb9
    push ax
    mov ax, 0x131
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 0
    ret
