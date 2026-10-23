; auto-generated
api_idx_0032_HGIM:
    mov ax, 0xffce
    call aztec_csav
    mov ax, word [bp + 0x6]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + slot_value]
    mov word [bp - 0x000c], ax
    mov word [bp - 0x000a], 0
    mov word [bp - 0x0028], 0xffff
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call gfx_save_area
    add sp, byte 8
    mov word [bp - 0x002c], dx
    mov word [bp - 0x002e], ax
@..api_idx_0032_HGIM.l1:
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_0002_OGRO
    add sp, byte 8
    push word [bp - 0x000c]
    push word [bp + 0x6]
    call api_idx_0032_HGIM.api_idx1
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x7f
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 5
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x72
    push ax
    mov ax, 0x97
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 6
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov word [bp - 0x0002], 0
    jmp near @..api_idx_0032_HGIM.l7
@..api_idx_0032_HGIM.l2:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp - 0x000a]
    jne short @..api_idx_0032_HGIM.l3
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x76
    push ax
    mov ax, 0x84
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x71
    push ax
    mov ax, 0x7f
    push ax
    push word [bp - 0x0002]
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0x3d
    push ax
    mov ax, 0x2b
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x000a]
    add ax, strict word 0x71
    push ax
    mov ax, 0x97
    push ax
    push word [bp + 0x8]
    call set_hotspot
    add sp, byte 0x0e
    jmp short @..api_idx_0032_HGIM.l6
@..api_idx_0032_HGIM.l3:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov ax, dx
    cmp ax, word [bp - 0x0002]
    jne short @..api_idx_0032_HGIM.l4
    mov al, 0x20
    jmp short @..api_idx_0032_HGIM.l5
@..api_idx_0032_HGIM.l4:
    mov al, 0
@..api_idx_0032_HGIM.l5:
    cbw
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x76
    push ax
    mov ax, 0x9c
    push ax
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x71
    push ax
    mov ax, 6
    push ax
    push word [bp - 0x0002]
    call set_hotspot
    add sp, byte 0x0e
@..api_idx_0032_HGIM.l6:
    inc word [bp - 0x0002]
@..api_idx_0032_HGIM.l7:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x8]
    jge short @..api_idx_0032_HGIM.l8
    jmp near @..api_idx_0032_HGIM.l2
@..api_idx_0032_HGIM.l8:
    mov ax, 0
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    call gfx_restore_area
    add sp, byte 6
    mov ax, word [bp - 0x000c]
    mov word [bp - 0x0004], ax
    mov word [bp - 0x0002], 0
@..api_idx_0032_HGIM.l9:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x6]
    je short @..api_idx_0032_HGIM.l10
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + slot_value]
    add word [bp - 0x0004], ax
@..api_idx_0032_HGIM.l10:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_0032_HGIM.l9
    mov ax, 1
    cmp word [bp - 0x0004], byte 0
    jle short @..api_idx_0032_HGIM.l11
    mov ax, 0
@..api_idx_0032_HGIM.l11:
    mov bx, word [bp + 0xc]
    mov word [bx + 0x8], ax
    mov word [bp - 0x000e], 0
    mov word [bp - 0x0002], 0
@..api_idx_0032_HGIM.l12:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov si, ax
    mov bx, word [bp + 0xc]
    cmp word [bx + si], byte 0
    jne short @..api_idx_0032_HGIM.l13
    jmp near @..api_idx_0032_HGIM.l16
@..api_idx_0032_HGIM.l13:
    mov ax, 0x3a
    imul word [bp - 0x000e]
    add ax, strict word 4
    mov word [bp - 0x0006], ax
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call draw_bevel_frame
    add sp, byte 0x0a
    mov ax, 0xc0
    push ax
    mov ax, 1
    mov cx, word [bp - 0x0002]
    cmp cx, word [bp + 0x6]
    jne short @..api_idx_0032_HGIM.l14
    mov ax, 0x1a
@..api_idx_0032_HGIM.l14:
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0xbe
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
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
    add ax, word [bp - 0x0006]
    inc ax
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x14
    imul word [bp - 0x0002]
    add ax, slot_label
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000e]
    inc ax
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, word [bp - 0x0002]
    mov cx, word [bp - 0x000e]
    shl cx, 1
    mov bx, cx
    add bx, bp
    mov word [bx - 0x0026], ax
    cmp ax, word [bp + 0x6]
    jne short @..api_idx_0032_HGIM.l15
    mov ax, word [bp - 0x000e]
    mov word [bp - 0x0032], ax
    cmp word [mouse_active], byte 0
    jne short @..api_idx_0032_HGIM.l15
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_MNNG
    add sp, byte 0x0a
@..api_idx_0032_HGIM.l15:
    inc word [bp - 0x000e]
@..api_idx_0032_HGIM.l16:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jg short @..api_idx_0032_HGIM.l17
    jmp near @..api_idx_0032_HGIM.l12
@..api_idx_0032_HGIM.l17:
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x000e]
    inc ax
    push ax
    call set_hotspot
    add sp, byte 0x0e
    mov ax, 0xc6
    push ax
    mov ax, 0x13c
    push ax
    mov ax, 0x70
    push ax
    mov ax, 1
    push ax
    call gfx_show_area
    add sp, byte 8
    cmp word [mouse_active], byte 0
    je short @..api_idx_0032_HGIM.l19
@..api_idx_0032_HGIM.l18:
    mov ax, 0x59fe
    push ax
    call poll_hotspots
    pop cx
    dec ax
    mov word [bp - 0x0008], ax
    cmp word [hotspot_hit], byte 0
    je short @..api_idx_0032_HGIM.l18
    jmp near @..api_idx_0032_HGIM.l31
@..api_idx_0032_HGIM.l19:
    mov word [bp - 0x0008], 0xffff
    mov ax, word [bp - 0x0032]
    mov word [bp - 0x0002], ax
@..api_idx_0032_HGIM.l20:
    mov ax, 0x3a
    imul word [bp - 0x0002]
    add ax, strict word 4
    mov word [bp - 0x0006], ax
    mov ax, 0x16
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_MNNG
    add sp, byte 0x0a
    mov ax, 0xc7
    push ax
    mov ax, 0x13d
    push ax
    mov ax, 0xbb
    push ax
    mov ax, 3
    push ax
    call gfx_show_area
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    mov ax, word [bp - 0x0006]
    add ax, strict word 0x36
    push ax
    mov ax, 0xbc
    push ax
    push word [bp - 0x0006]
    call loc_MNNG
    add sp, byte 0x0a
@..api_idx_0032_HGIM.l21:
    mov ax, 1
    push ax
    call poll_filtered_key
    pop cx
    test ax, ax
    jne short @..api_idx_0032_HGIM.l22
    jmp short @..api_idx_0032_HGIM.l21
@..api_idx_0032_HGIM.l22:
    mov ax, 1
    push ax
    call get_filtered_key
    pop cx
    sub ah, ah
    mov word [bp - 0x0030], ax
    jmp short @..api_idx_0032_HGIM.l29
@..api_idx_0032_HGIM.l23:
    mov ax, word [bp - 0x0002]
    add ax, word [bp - 0x000e]
    dec ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short @..api_idx_0032_HGIM.l30
@..api_idx_0032_HGIM.l24:
    mov ax, word [bp - 0x0002]
    inc ax
    cwd
    idiv word [bp - 0x000e]
    mov word [bp - 0x0002], dx
    jmp short @..api_idx_0032_HGIM.l30
@..api_idx_0032_HGIM.l25:
    mov ax, word [bp + 0x8]
    add ax, word [bp - 0x0002]
    inc ax
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0032_HGIM.l30
@..api_idx_0032_HGIM.l26:
    mov ax, word [bp - 0x000a]
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0032_HGIM.l30
@..api_idx_0032_HGIM.l27:
    mov ax, word [bp + 0x8]
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0032_HGIM.l30
@..api_idx_0032_HGIM.l28:
    mov ax, word [bp - 0x000a]
    inc ax
    cwd
    idiv word [bp + 0x8]
    mov word [bp - 0x0008], dx
    jmp short @..api_idx_0032_HGIM.l30
@..api_idx_0032_HGIM.l29:
    cmp ax, strict word 8
    je short @..api_idx_0032_HGIM.l23
    cmp ax, strict word 0xa
    je short @..api_idx_0032_HGIM.l24
    cmp ax, strict word 0xd
    je short @..api_idx_0032_HGIM.l25
    cmp ax, strict word 0x20
    je short @..api_idx_0032_HGIM.l28
    cmp ax, strict word 0x2b
    je short @..api_idx_0032_HGIM.l27
    cmp ax, strict word 0x2d
    je short @..api_idx_0032_HGIM.l26
    cmp ax, strict word 0x3d
    je short @..api_idx_0032_HGIM.l27
@..api_idx_0032_HGIM.l30:
    cmp word [bp - 0x0008], byte 0xff
    jne short @..api_idx_0032_HGIM.l31
    jmp near @..api_idx_0032_HGIM.l20
@..api_idx_0032_HGIM.l31:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jge short @..api_idx_0032_HGIM.l32
    cmp ax, word [bp - 0x000a]
    je short @..api_idx_0032_HGIM.l32
    mov word [bp - 0x000a], ax
    jmp near @..api_idx_0032_HGIM.l39
@..api_idx_0032_HGIM.l32:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp - 0x000a]
    jne short @..api_idx_0032_HGIM.l35
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x000a]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    mov al, byte [bx + cell_key_grid + 0x138]
    sub ah, ah
    shl cx, 1
    mov bx, cx
    mov cx, word [bx + slot_limit]
    cmp ax, cx
    jle short @..api_idx_0032_HGIM.l33
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    dec byte [bx + cell_key_grid + 0x138]
    inc word [bp - 0x000c]
    jmp short @..api_idx_0032_HGIM.l34
@..api_idx_0032_HGIM.l33:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
@..api_idx_0032_HGIM.l34:
    jmp short @..api_idx_0032_HGIM.l39
@..api_idx_0032_HGIM.l35:
    mov ax, word [bp - 0x0008]
    cmp ax, word [bp + 0x8]
    jne short @..api_idx_0032_HGIM.l38
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x000a]
    shl cx, 1
    mov si, cx
    mov bx, word [bp + 0xa]
    mov cx, word [bx + si]
    add ax, cx
    mov bx, ax
    cmp byte [bx + cell_key_grid + 0x138], 0x64
    jae short @..api_idx_0032_HGIM.l36
    cmp word [bp - 0x000c], byte 0
    jle short @..api_idx_0032_HGIM.l36
    inc byte [bx + cell_key_grid + 0x138]
    dec word [bp - 0x000c]
    jmp short @..api_idx_0032_HGIM.l37
@..api_idx_0032_HGIM.l36:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
@..api_idx_0032_HGIM.l37:
    jmp short @..api_idx_0032_HGIM.l39
@..api_idx_0032_HGIM.l38:
    mov ax, word [bp - 0x0008]
    sub ax, word [bp + 0x8]
    dec ax
    mov word [bp - 0x0028], ax
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x0026]
    mov word [bp - 0x002a], ax
@..api_idx_0032_HGIM.l39:
    cmp word [bp - 0x0028], byte 0xff
    jne short @..api_idx_0032_HGIM.l40
    jmp near @..api_idx_0032_HGIM.l1
@..api_idx_0032_HGIM.l40:
    mov ax, word [bp - 0x000c]
    mov cx, word [bp + 0x6]
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
    imul word [bp - 0x0028]
    add ax, strict word 4
    push ax
    call flash_button
    add sp, byte 0x0a
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 9
    push ax
    mov ax, 0xbc
    push ax
    mov ax, 0x3a
    imul word [bp - 0x0028]
    add ax, strict word 4
    push ax
    call flash_button
    add sp, byte 0x0a
    mov ax, 1
    push ax
    push word [bp - 0x002c]
    push word [bp - 0x002e]
    call gfx_restore_area
    add sp, byte 6
    mov ax, word [bp - 0x002a]
    ret
