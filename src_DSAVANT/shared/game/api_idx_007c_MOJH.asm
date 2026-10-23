; auto-generated
api_idx_007c_MOJH:
    mov ax, 0xff84
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [api_idx_007c_MOJH.bss1]
    push word [api_idx_007c_MOJH.bss2]
    call gfx_restore_screen
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [api_idx_007c_MOJH.bss3]
    push word [api_idx_007c_MOJH.bss4]
    call gfx_restore_screen
    add sp, byte 8
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 0x4]
    call api_idx_0010_STNH
    add sp, byte 6
    mov ax, 0
    push ax
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0x4c
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, bss_5bf4
    push ax
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x28
    sub ax, cx
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, bss_5bf4
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2c]
    sub ah, ah
    add ax, 0x8c
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0058]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2d
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2b]
    sub ah, ah
    add ax, strict word 0x64
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc8
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + pc_spell_power_cap]
    call ds_app_GUML
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5bfc]
    mov dx, word [bx + 0x5bfe]
    mov cx, 0x16d
    mov bx, 0
    call aztec_ldv
    add ax, strict word 0xffee
    adc dx, byte 0xff
    mov cx, 4
    mov bx, 0
    call aztec_ldv
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c1a]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    add ax, cx
    adc dx, bx
    mov cx, ax
    mov bx, dx
    add ax, strict word 0xffff
    adc dx, byte 0xff
    mov cx, ax
    mov bx, dx
    mov ax, 0x14
    mov dx, 0
    sub ax, cx
    sbb dx, bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5d67]
    sub ah, ah
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    push ax
    push dx
    mul bx
    mov bx, ax
    pop ax
    mul cx
    add bx, ax
    pop ax
    mul cx
    add dx, bx
    mov cx, 0x12
    mov bx, 0
    call aztec_ldv
    mov word [api_idx_007c_MOJH.bss5], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [api_idx_007c_MOJH.bss5]
    call clamp_between
    add sp, byte 6
    mov word [api_idx_007c_MOJH.bss5], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5e2f], 3
    jae short @..api_idx_007c_MOJH.l1
    mov ax, 0
    jmp short @..api_idx_007c_MOJH.l2
@..api_idx_007c_MOJH.l1:
    mov ax, 1
@..api_idx_007c_MOJH.l2:
    mov word [api_idx_007c_MOJH.bss6], ax
    mov word [api_idx_007c_MOJH.bss7], 0
    push word [api_idx_007c_MOJH.bss7]
    call api_idx_000a_TITQ
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov word [bp - 0x0002], 0
@..api_idx_007c_MOJH.l3:
    mov ax, 6
    imul word [bp - 0x0002]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, word [bp - 0x0002]
    add ax, 0xcc
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d64]
    sub ah, ah
    push ax
    call ds_app_GUML
    add sp, byte 6
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 8
    jl short @..api_idx_007c_MOJH.l3
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    call gfx_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xc9
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2d]
    sub ah, ah
    mov cx, 0xa
    imul cx
    push ax
    mov al, byte [bx + 0x5e2e]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, 0x320
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 6
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call aztec_strlen
    pop cx
    mov cx, 0x34
    sub cx, ax
    mov ax, 6
    imul cx
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    call gfx_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xca
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0xe4
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c02]
    push word [bx + 0x5c00]
    call ds_app_string_THKS
    add sp, byte 8
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xcb
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe4
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c06]
    push word [bx + 0x5c04]
    call ds_app_string_THKS
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call gfx_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd4
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call gfx_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0c]
    call ds_app_OLKR
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c0e]
    call ds_app_OLKR
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call gfx_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd5
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1b
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + pc_records]
    mov cx, 0x64
    imul cx
    mov cx, word [bx + 0x5c12]
    cwd
    idiv cx
    mov word [bp - 0x0008], ax
    cmp ax, strict word 1
    jge short @..api_idx_007c_MOJH.l4
    cmp word [bx + pc_records], byte 0
    jle short @..api_idx_007c_MOJH.l4
    mov ax, 1
    jmp short @..api_idx_007c_MOJH.l5
@..api_idx_007c_MOJH.l4:
    mov ax, word [bp - 0x0008]
@..api_idx_007c_MOJH.l5:
    mov word [bp - 0x0008], ax
    lea ax, word [bp - 0x0058]
    push ax
    push word [bp - 0x0008]
    call ds_app_OLKR
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, dseg_9098
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + 0x5c12]
    call ds_app_OLKR
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x29
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xc4
    push ax
    call gfx_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd6
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 0x5b
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    push word [bx + bss_5c0a]
    push word [bx + bss_5c08]
    call ds_app_SVGG
    add sp, byte 6
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    push word [bp + 0x4]
    call ds_app_OOUT
    pop cx
    push word [bp + 0x4]
    call api_idx_007c_MOJH.api_idx1
    pop cx
    mov si, ax
    lea di, word [bp - 0x007c]
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov al, byte [bp - 0x0072]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + 0x5e33], al
    mov ax, 0
    push ax
    push word [bp - 0x0070]
    call gfx_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0xd7
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c14]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call ds_app_OLKR
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x0058]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + 0x5c16]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call ds_app_OLKR
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0058]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    push word [bp + 0x4]
    call api_idx_0004_RMVO
    pop cx
    mov word [bp - 0x0004], 0
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5e2f]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x920]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    jne short @..api_idx_007c_MOJH.l6
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5c], 0
    jbe short @..api_idx_007c_MOJH.l6
    mov ax, 0
    jmp short @..api_idx_007c_MOJH.l7
@..api_idx_007c_MOJH.l6:
    mov ax, word [bp - 0x0006]
@..api_idx_007c_MOJH.l7:
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jg short @..api_idx_007c_MOJH.l8
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + 0x5d5d], 0
    jbe short @..api_idx_007c_MOJH.l8
    mov ax, 1
    jmp short @..api_idx_007c_MOJH.l9
@..api_idx_007c_MOJH.l8:
    mov ax, word [bp - 0x0006]
@..api_idx_007c_MOJH.l9:
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0xffff
    je short @..api_idx_007c_MOJH.l10
    mov ax, 0x2d
    push ax
    mov ax, 0x51
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 0x0006]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    inc word [bp - 0x0004]
@..api_idx_007c_MOJH.l10:
    mov word [bp - 0x006e], 6
    mov word [bp - 0x006c], 7
    mov word [bp - 0x006a], 5
    mov word [bp - 0x0068], 4
    mov word [bp - 0x0066], 8
    mov word [bp - 0x0064], 9
    mov word [bp - 0x0062], 1
    mov word [bp - 0x0006], 0xffff
    mov word [bp - 0x0002], 0
@..api_idx_007c_MOJH.l11:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x006e]
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x0004], byte 6
    jge short @..api_idx_007c_MOJH.l12
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    cmp ax, word [bp - 0x0006]
    je short @..api_idx_007c_MOJH.l12
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0008]
    mov bx, ax
    cmp byte [bx + 0x5d5a], 0
    jbe short @..api_idx_007c_MOJH.l12
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xb
    imul cx
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 0x0004]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x17
    imul cx
    add ax, strict word 0x51
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + 0x92c]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x92c]
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0004]
@..api_idx_007c_MOJH.l12:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 7
    jge short @..api_idx_007c_MOJH.l13
    jmp near @..api_idx_007c_MOJH.l11
@..api_idx_007c_MOJH.l13:
    ret
