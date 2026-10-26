; auto-generated
api_idx_0026_NRVO:
    mov ax, 0xffda
    call aztec_csav
    mov word [spell_dialog_result], 0xffff
    mov word [bp - 2], 0x37
    mov word [bp - 4], 0x8f
    mov word [bp - 6], 0x108
    mov word [bp - 8], 0xc5
    mov ax, api_idx_0026_NRVO.dseg1
    push ax
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    inc ax
    push ax
    mov ax, word [bp - 4]
    dec ax
    push ax
    mov ax, word [bp - 2]
    dec ax
    push ax
    call save_screen_area
    add sp, byte 0xa
    mov word [bp - 0x26], ax
    push word [bp - 8]
    push word [bp - 6]
    push word [bp - 4]
    push word [bp - 2]
    call draw_dialog_box
    add sp, byte 8
    lea ax, word [bp - 0x24]
    push ax
    push word [bp + 4]
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x24]
    push ax
    push word [bp + 6]
    mov ax, 1
    push ax
    mov ax, 0x20
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0xc
    lea ax, word [bp - 0x24]
    push ax
    mov ax, word [bp + 4]
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x24]
    push ax
    push word [bp + 8]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0xc
    lea ax, word [bp - 0x24]
    push ax
    mov ax, word [bp + 4]
    inc ax
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x24]
    push ax
    push word [bp + 0xa]
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call draw_button
    add sp, byte 0xc
    lea ax, word [bp - 0x24]
    push ax
    mov ax, word [bp + 4]
    inc ax
    inc ax
    inc ax
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0xc2
    push ax
    mov ax, 0x9b
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, word [bp - 4]
    add ax, strict word 0x16
    push ax
    lea ax, word [bp - 0x24]
    push ax
    call aztec_strlen
    pop cx
    mov cx, ax
    mov ax, 0x11
    sub ax, cx
    mov cx, 6
    imul cx
    inc ax
    inc ax
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x24]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    push word [bp + 0xc]
    mov ax, known_spell_names
    push ax
    call aztec_strcpy
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x25
    push ax
    mov ax, word [bp - 2]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    mov ax, 0
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0xf
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    mov ax, 1
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0xd
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    mov ax, 2
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x2f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x50
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    mov ax, 3
    push ax
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
    mov ax, 4
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, word [bp - 6]
    inc ax
    push ax
    mov ax, word [bp - 4]
    dec ax
    push ax
    mov ax, word [bp - 2]
    dec ax
    push ax
    call gfx_show_area
    add sp, byte 8
    call flush_keyboard
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 7
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5f
    push ax
    mov ax, known_spell_names
    push ax
    call input_text_field
    add sp, byte 0xe
    mov ax, known_spell_names
    push ax
    push word [bp + 0xc]
    call aztec_strcpy
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov ax, word [bp - 4]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 2]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call gfx_show_area
    add sp, byte 8
    mov word [bp - 0x10], 1
@..api_idx_0026_NRVO.l1:
    mov ax, hotspot_rects
    push ax
    call poll_hotspots
    pop cx
    dec ax
    mov word [bp - 0xe], ax
    cmp word [hotspot_hit], byte 1
    je short @..api_idx_0026_NRVO.l2
    jmp near @..api_idx_0026_NRVO.l14
@..api_idx_0026_NRVO.l2:
    jmp near @..api_idx_0026_NRVO.l10
@..api_idx_0026_NRVO.l3:
    call flush_keyboard
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov ax, word [bp - 4]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 2]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    mov ax, 7
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x20
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5f
    push ax
    mov ax, known_spell_names
    push ax
    call input_text_field
    add sp, byte 0xe
    mov ax, known_spell_names
    push ax
    push word [bp + 0xc]
    call aztec_strcpy
    add sp, byte 4
    mov ax, 1
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0x11
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call draw_text_list
    add sp, byte 0xe
    mov ax, word [bp - 4]
    add ax, strict word 0x26
    push ax
    mov ax, word [bp - 2]
    add ax, 0xc5
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x1f
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 0x5d
    push ax
    call gfx_show_area
    add sp, byte 8
    jmp near @..api_idx_0026_NRVO.l14
@..api_idx_0026_NRVO.l4:
    cmp word [bp + 6], byte 0
    je short @..api_idx_0026_NRVO.l5
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 7
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 0
    mov word [bp - 0x10], 0
@..api_idx_0026_NRVO.l5:
    jmp near @..api_idx_0026_NRVO.l14
@..api_idx_0026_NRVO.l6:
    cmp word [bp + 8], byte 0
    je short @..api_idx_0026_NRVO.l7
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x17
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 1
    mov word [bp - 0x10], 0
@..api_idx_0026_NRVO.l7:
    jmp short @..api_idx_0026_NRVO.l14
@..api_idx_0026_NRVO.l8:
    cmp word [bp + 0xa], byte 0
    je short @..api_idx_0026_NRVO.l9
    mov ax, 1
    push ax
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0xc
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 0x27
    push ax
    mov ax, word [bp - 2]
    add ax, strict word 8
    push ax
    call flash_button
    add sp, byte 0xa
    mov word [spell_dialog_button], 2
    mov word [bp - 0x10], 0
@..api_idx_0026_NRVO.l9:
    jmp short @..api_idx_0026_NRVO.l14
@..api_idx_0026_NRVO.l10:
    cmp ax, strict word 0
    jne short @..api_idx_0026_NRVO.l11
    jmp near @..api_idx_0026_NRVO.l3
@..api_idx_0026_NRVO.l11:
    cmp ax, strict word 1
    jne short @..api_idx_0026_NRVO.l12
    jmp near @..api_idx_0026_NRVO.l4
@..api_idx_0026_NRVO.l12:
    cmp ax, strict word 2
    jne short @..api_idx_0026_NRVO.l13
    jmp near @..api_idx_0026_NRVO.l6
@..api_idx_0026_NRVO.l13:
    cmp ax, strict word 3
    je short @..api_idx_0026_NRVO.l8
@..api_idx_0026_NRVO.l14:
    cmp word [bp - 0x10], byte 0
    je short @..api_idx_0026_NRVO.l15
    jmp near @..api_idx_0026_NRVO.l1
@..api_idx_0026_NRVO.l15:
    mov ax, 1
    push ax
    push word [bp - 0x26]
    call restore_saved_screen
    add sp, byte 4
    mov word [spell_dialog_result], 0xffff
    mov ax, word [spell_dialog_button]
    ret
