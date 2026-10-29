; auto-generated
api_idx_0058_GKGM:
    mov ax, 0xffa8
    call aztec_csav
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 6]
    mov word [bp - 2], ax
    mov ax, word [bp + 8]
    add ax, strict word 9
    mov word [bp - 4], ax
    mov ax, word [bp - 4]
    add ax, strict word 6
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x19
    push ax
    mov ax, word [bp + 8]
    add ax, strict word 0xffeb
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 0xffe7
    push ax
    call call_save_area
    add sp, byte 8
    mov word [bp - 0x56], dx
    mov word [bp - 0x58], ax
    mov ax, word [bp - 4]
    add ax, strict word 5
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x18
    push ax
    mov ax, word [bp + 8]
    add ax, strict word 0xffec
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 0xffe8
    push ax
    call draw_dialog_box
    add sp, byte 8
    lea ax, word [bp - 0x54]
    push ax
    push word [bp + 4]
    call load_message_string
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 1
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, word [bp + 8]
    add ax, strict word 0xfff3
    push ax
    lea ax, word [bp - 0x54]
    push ax
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x54]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    lea ax, word [bp - 0x54]
    push ax
    mov ax, word [bp + 4]
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp + 8]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 6]
    push ax
    push word [bp + 8]
    push word [bp + 6]
    call draw_bevel_frame
    add sp, byte 0xa
    mov ax, 0xc0
    push ax
    mov ax, 0x1a
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, word [bp + 8]
    inc ax
    inc ax
    push ax
    lea ax, word [bp - 0x54]
    push ax
    call aztec_strlen
    pop cx
    mov cx, ax
    mov ax, word [bp + 0xa]
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp + 6]
    inc ax
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x54]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp + 8]
    add ax, strict word 8
    push ax
    mov ax, 6
    imul word [bp + 0xa]
    add ax, word [bp + 6]
    push ax
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 0xe]
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0xe]
    inc ax
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0xc7
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0
    push ax
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, word [bp - 0x58]
    mov dx, word [bp - 0x56]
    ret
