; auto-generated
api_idx_0032_HGIM:
    mov ax, 0xffce
    call aztec_csav
    mov ax, word [bp + 6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + slot_value]
    mov word [bp - 0xc], ax
    mov word [bp - 0xa], 0
    mov word [bp - 0x28], 0xffff
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call call_save_area
    add sp, byte 8
    mov word [bp - 0x2c], dx
    mov word [bp - 0x2e], ax
.back1:
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call draw_known_spell_values
    add sp, byte 8
    push word [bp - 0xc]
    push word [bp + 6]
    call draw_slot_value_row
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0xa]
    add ax, strict word 0x72
    push ax
    mov ax, 0x7f
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0xa]
    add ax, strict word 0x72
    push ax
    mov ax, 0x97
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov word [bp - 2], 0
    jmp near .forward5
.back2:
    mov ax, word [bp - 2]
    cmp ax, word [bp - 0xa]
    jne short .forward1
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 6
    imul word [bp - 0xa]
    add ax, strict word 0x76
    push ax
    mov ax, 0x84
    push ax
    mov ax, 6
    imul word [bp - 0xa]
    add ax, strict word 0x71
    push ax
    mov ax, 0x7f
    push ax
    push word [bp - 2]
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0x3d
    push ax
    mov ax, 0x2b
    push ax
    mov ax, 6
    imul word [bp - 0xa]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0xa]
    add ax, strict word 0x71
    push ax
    mov ax, 0x97
    push ax
    push word [bp + 8]
    call set_hotspot
    add sp, byte 0xe
    jmp short .forward4
.forward1:
    mov ax, 0
    push ax
    mov ax, word [bp - 0xa]
    inc ax
    cwd
    idiv word [bp + 8]
    mov ax, dx
    cmp ax, word [bp - 2]
    jne short .forward2
    mov al, 0x20
    jmp short .forward3
.forward2:
    mov al, 0
.forward3:
    cbw
    push ax
    mov ax, 6
    imul word [bp - 2]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 2]
    add ax, strict word 0x71
    push ax
    mov ax, 6
    push ax
    push word [bp - 2]
    call set_hotspot
    add sp, byte 0xe
.forward4:
    inc word [bp - 2]
.forward5:
    mov ax, word [bp - 2]
    cmp ax, word [bp + 8]
    jge short .forward6
    jmp near .back2
.forward6:
    mov ax, 0
    push ax
    push word [bp - 0x2c]
    push word [bp - 0x2e]
    call call_restore_area
    add sp, byte 6
    mov ax, word [bp - 0xc]
    mov word [bp - 4], ax
    mov word [bp - 2], 0
.back3:
    mov ax, word [bp - 2]
    cmp ax, word [bp + 6]
    je short .forward7
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + slot_value]
    add word [bp - 4], ax
.forward7:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jl short .back3
    mov ax, 1
    cmp word [bp - 4], byte 0
    jle short .forward8
    mov ax, 0
.forward8:
    mov bx, word [bp + 0xc]
    mov word [bx + 8], ax
    mov word [bp - 0xe], 0
    mov word [bp - 2], 0
.back4:
    mov ax, word [bp - 2]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0xc]
    cmp word [bx + si], byte 0
    jne short .forward9
    jmp near .forward12
.forward9:
    mov ax, 0x3a
    imul word [bp - 0xe]
    add ax, strict word 4
    mov word [bp - 6], ax
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 6]
    call draw_bevel_frame
    add sp, byte 0xa
    mov ax, 0xc0
    push ax
    mov ax, 1
    mov cx, word [bp - 2]
    cmp cx, word [bp + 6]
    jne short .forward10
    mov ax, 0x1a
.forward10:
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    imul word [bp - 2]
    add ax, slot_label
    push ax
    call aztec_strlen
    pop cx
    mov cx, ax
    mov ax, 9
    sub ax, cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    add ax, word [bp - 6]
    inc ax
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 2]
    add ax, slot_label
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 6]
    mov ax, word [bp + 8]
    add ax, word [bp - 0xe]
    inc ax
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, word [bp - 2]
    mov cx, word [bp - 0xe]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x26], ax
    cmp ax, word [bp + 6]
    jne short .forward11
    mov ax, word [bp - 0xe]
    mov word [bp - 0x32], ax
    cmp word [mouse_active], byte 0
    jne short .forward11
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 6]
    call loc_MNNG
    add sp, byte 0xa
.forward11:
    inc word [bp - 0xe]
.forward12:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jg short .forward13
    jmp near .back4
.forward13:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 8]
    add ax, word [bp - 0xe]
    inc ax
    push ax
    call set_hotspot
    add sp, byte 0xe
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call call_show_area
    add sp, byte 8
    cmp word [mouse_active], byte 0
    je short .forward14
.back5:
    mov ax, hotspot_rects
    push ax
    call poll_hotspots
    pop cx
    dec ax
    mov word [bp - 8], ax
    cmp word [hotspot_hit], byte 0
    je short .back5
    jmp near .forward18
.forward14:
    mov word [bp - 8], 0xffff
    mov ax, word [bp - 0x32]
    mov word [bp - 2], ax
.back6:
    mov ax, 0x3a
    imul word [bp - 2]
    add ax, strict word 4
    mov word [bp - 6], ax
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 6]
    call loc_MNNG
    add sp, byte 0xa
    mov ax, 0xc7
    push ax
    mov ax, 0x13d
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call call_show_area
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 6]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 6]
    call loc_MNNG
    add sp, byte 0xa
.back7:
    mov ax, 1
    push ax
    call poll_filtered_key
    pop cx
    test ax, ax
    jne short .forward15
    jmp short .back7
.forward15:
    mov ax, 1
    push ax
    call get_filtered_key
    pop cx
    sub ah, ah
    mov word [bp - 0x30], ax
    jmp short .forward16
.back8:
    mov ax, word [bp - 2]
    add ax, word [bp - 0xe]
    dec ax
    cwd
    idiv word [bp - 0xe]
    mov word [bp - 2], dx
    jmp short .forward17
.back9:
    mov ax, word [bp - 2]
    inc ax
    cwd
    idiv word [bp - 0xe]
    mov word [bp - 2], dx
    jmp short .forward17
.back10:
    mov ax, word [bp + 8]
    add ax, word [bp - 2]
    inc ax
    mov word [bp - 8], ax
    jmp short .forward17
.back11:
    mov ax, word [bp - 0xa]
    mov word [bp - 8], ax
    jmp short .forward17
.back12:
    mov ax, word [bp + 8]
    mov word [bp - 8], ax
    jmp short .forward17
.back13:
    mov ax, word [bp - 0xa]
    inc ax
    cwd
    idiv word [bp + 8]
    mov word [bp - 8], dx
    jmp short .forward17
.forward16:
    cmp ax, strict word 8
    je short .back8
    cmp ax, strict word 0xa
    je short .back9
    cmp ax, strict word 0xd
    je short .back10
    cmp ax, strict word 0x20
    je short .back13
    cmp ax, strict word 0x2b
    je short .back12
    cmp ax, strict word 0x2d
    je short .back11
    cmp ax, strict word 0x3d
    je short .back12
.forward17:
    cmp word [bp - 8], byte -1
    jne short .forward18
    jmp near .back6
.forward18:
    mov ax, word [bp - 8]
    cmp ax, word [bp + 8]
    jge short .forward19
    cmp ax, word [bp - 0xa]
    je short .forward19
    mov word [bp - 0xa], ax
    jmp near .forward26
.forward19:
    mov ax, word [bp - 8]
    cmp ax, word [bp - 0xa]
    jne short .forward22
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 0xa]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.flag]
    sub ah, ah
    shl cx, 1
    mov bx, cx
    mov cx, word [bx + slot_limit]
    cmp ax, cx
    jle short .forward20
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    dec byte [bx + party_records + pc_rec.flag]
    inc word [bp - 0xc]
    jmp short .forward21
.forward20:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
.forward21:
    jmp short .forward26
.forward22:
    mov ax, word [bp - 8]
    cmp ax, word [bp + 8]
    jne short .forward25
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 0xa]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.flag], 0x64
    jae short .forward23
    cmp word [bp - 0xc], byte 0
    jle short .forward23
    inc byte [bx + party_records + pc_rec.flag]
    dec word [bp - 0xc]
    jmp short .forward24
.forward23:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
.forward24:
    jmp short .forward26
.forward25:
    mov ax, word [bp - 8]
    sub ax, word [bp + 8]
    dec ax
    mov word [bp - 0x28], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x26]
    mov word [bp - 0x2a], ax
.forward26:
    cmp word [bp - 0x28], byte -1
    jne short .forward27
    jmp near .back1
.forward27:
    mov ax, word [bp - 0xc]
    mov cx, word [bp + 6]
    shl cx, 1
    mov bx, cx
    mov word [bx + slot_value], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x3a
    imul word [bp - 0x28]
    add ax, strict word 4
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x3a
    imul word [bp - 0x28]
    add ax, strict word 4
    push ax
    call flash_button
    add sp, byte 0xa
    mov ax, 1
    push ax
    push word [bp - 0x2c]
    push word [bp - 0x2e]
    call call_restore_area
    add sp, byte 6
    mov ax, word [bp - 0x2a]
    ret
