; auto-generated
api_idx_007c_OKMO:
    mov ax, 0xff84
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [api_idx_007c_OKMO.bss1]
    push word [api_idx_007c_OKMO.bss2]
    call call_restore_screen
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [api_idx_007c_OKMO.bss3]
    push word [api_idx_007c_OKMO.bss4]
    call call_restore_screen
    add sp, byte 8
    mov ax, 0x12
    push ax
    mov ax, 0xe
    push ax
    push word [bp + 4]
    call api_idx_0010_STNH
    add sp, byte 6
    mov ax, 0
    push ax
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 0x4c
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    add ax, party_records
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
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    add ax, party_records
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0x5a
    push ax
    call call_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.gender]
    sub ah, ah
    add ax, MSG_MALE
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x58]
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
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.glyph_set]
    sub ah, ah
    add ax, strict word 0x64
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x84
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0x5a
    push ax
    call call_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.profession]
    sub ah, ah
    add ax, strict word 0x78
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0x5a
    push ax
    call call_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_LVL
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 4
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    push word [bx + party_records + pc_rec.power_cap]
    call draw_number_field
    add sp, byte 6
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.f_0008]
    mov dx, word [bx + party_records + pc_rec.f_000a]
    mov cx, 0x16d
    mov bx, 0
    call aztec_ldv
    add ax, strict word 0xffee
    adc dx, byte -1
    mov cx, 4
    mov bx, 0
    call aztec_ldv
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.f_0026]
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
    adc dx, byte -1
    mov cx, ax
    mov bx, dx
    mov ax, 0x14
    mov dx, 0
    sub ax, cx
    sbb dx, bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat + 0x3]
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
    mov word [banner_offset], ax
    mov ax, 0x14
    push ax
    mov ax, 0
    push ax
    push word [banner_offset]
    call clamp_between
    add sp, byte 6
    mov word [banner_offset], ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.state], 3
    jae short .forward1
    mov ax, 0
    jmp short .forward2
.forward1:
    mov ax, 1
.forward2:
    mov word [banner_plain_flag], ax
    mov word [api_idx_007c_OKMO.bss5], 0
    push word [api_idx_007c_OKMO.bss5]
    call draw_title_banner
    pop cx
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call call_set_text_color
    add sp, byte 4
    mov word [bp - 2], 0
.back1:
    mov ax, 6
    imul word [bp - 2]
    add ax, strict word 0x23
    push ax
    mov ax, 0x73
    push ax
    call call_set_text_pos
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, word [bp - 2]
    add ax, MSG_STR
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp - 2]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat]
    sub ah, ah
    push ax
    call draw_number_field
    add sp, byte 6
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 8
    jl short .back1
    mov ax, 0
    push ax
    mov ax, 0xfd
    push ax
    call call_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_RNK
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, 0xe4
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.profession]
    sub ah, ah
    mov cx, 0xa
    imul cx
    push ax
    mov al, byte [bx + party_records + pc_rec.f_023a]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    add ax, MSG_NONE_800
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 6
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call aztec_strlen
    pop cx
    mov cx, 0x34
    sub cx, ax
    mov ax, 6
    imul cx
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x47
    push ax
    call call_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_EXP
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0xc
    push ax
    mov ax, 0xe4
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
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
    imul word [bp + 4]
    mov bx, ax
    push word [bx + party_records + pc_rec.experience + 0x2]
    push word [bx + party_records + pc_rec.experience]
    call draw_padded_number
    add sp, byte 8
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_MKS
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x12
    push ax
    mov ax, 0xe4
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
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
    imul word [bp + 4]
    mov bx, ax
    push word [bx + party_records + pc_rec.f_0012]
    push word [bx + party_records + pc_rec.f_0010]
    call draw_padded_number
    add sp, byte 8
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call call_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_HP
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 6
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
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
    call call_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    push word [bx + party_records + pc_rec.pair_a]
    call format_int_decimal
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    push word [bx + party_records + pc_rec.pair_a + 0x2]
    call format_int_decimal
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x1d
    push ax
    call call_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_ST
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 6
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
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
    call call_set_text_color
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.pair_b]
    mov cx, 0x64
    imul cx
    mov cx, word [bx + party_records + pc_rec.pair_b + 0x2]
    cwd
    idiv cx
    mov word [bp - 8], ax
    cmp ax, strict word 1
    jge short .forward3
    cmp word [bx + party_records + pc_rec.pair_b], byte 0
    jle short .forward3
    mov ax, 1
    jmp short .forward4
.forward3:
    mov ax, word [bp - 8]
.forward4:
    mov word [bp - 8], ax
    lea ax, word [bp - 0x58]
    push ax
    push word [bp - 8]
    call format_int_decimal
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
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
    call call_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x28
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    push word [bx + party_records + pc_rec.pair_b + 0x2]
    call format_int_decimal
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
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
    call call_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_GP_214
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x5d
    push ax
    mov ax, 0x5b
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    push word [bx + party_records + pc_rec.f_0016]
    push word [bx + party_records + pc_rec.f_0014]
    call format_long_decimal
    add sp, byte 6
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    push word [bp + 4]
    call sum_member_item_power
    pop cx
    push word [bp + 4]
    call api_idx_007c_OKMO.api_idx1
    pop cx
    mov si, ax
    lea di, word [bp - 0x7c]
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov al, byte [bp - 0x72]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    pop ax
    mov byte [bx + party_records + pc_rec.f_023f], al
    mov ax, 0
    push ax
    push word [bp - 0x70]
    call call_set_text_color
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, MSG_CC
    push ax
    call load_message_string
    add sp, byte 4
    mov ax, 0x63
    push ax
    mov ax, 0x5b
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x20
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_total]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call format_int_decimal
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call draw_font_glyph
    add sp, byte 4
    lea ax, word [bp - 0x58]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.f_0022]
    mov cx, 0xa
    cwd
    idiv cx
    push ax
    call format_int_decimal
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x58]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    push word [bp + 4]
    call api_idx_0004_RMVO
    pop cx
    mov word [bp - 4], 0
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.state]
    sub ah, ah
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + spell_table + spell_table_rec_size*128]
    mov word [bp - 6], ax
    cmp ax, strict word 0xffff
    jne short .forward5
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.status + 0x2], 0
    jbe short .forward5
    mov ax, 0
    jmp short .forward6
.forward5:
    mov ax, word [bp - 6]
.forward6:
    mov word [bp - 6], ax
    cmp ax, strict word 0
    jg short .forward7
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.status + 0x3], 0
    jbe short .forward7
    mov ax, 1
    jmp short .forward8
.forward7:
    mov ax, word [bp - 6]
.forward8:
    mov word [bp - 6], ax
    cmp ax, strict word 0xffff
    je short .forward9
    mov ax, 0x2d
    push ax
    mov ax, 0x51
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 6
    push ax
    mov al, byte [bp - 6]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    inc word [bp - 4]
.forward9:
    mov word [bp - 0x6e], 6
    mov word [bp - 0x6c], 7
    mov word [bp - 0x6a], 5
    mov word [bp - 0x68], 4
    mov word [bp - 0x66], 8
    mov word [bp - 0x64], 9
    mov word [bp - 0x62], 1
    mov word [bp - 6], 0xffff
    mov word [bp - 2], 0
.back2:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    add bx, bp
    mov ax, word [bx - 0x6e]
    mov word [bp - 8], ax
    cmp word [bp - 4], byte 6
    jge short .forward10
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + spell_table + spell_table_rec_size*130]
    cmp ax, word [bp - 6]
    je short .forward10
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp - 8]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.status], 0
    jbe short .forward10
    mov ax, word [bp - 4]
    mov cx, 3
    cwd
    idiv cx
    mov ax, dx
    mov cx, 0xb
    imul cx
    add ax, strict word 0x2d
    push ax
    mov ax, word [bp - 4]
    mov cx, 3
    cwd
    idiv cx
    mov cx, 0x17
    imul cx
    add ax, strict word 0x51
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 6
    push ax
    mov ax, word [bp - 8]
    shl ax, 1
    mov bx, ax
    mov al, byte [bx + spell_table + spell_table_rec_size*130]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, word [bp - 8]
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + spell_table + spell_table_rec_size*130]
    mov word [bp - 6], ax
    inc word [bp - 4]
.forward10:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 7
    jge short .return1
    jmp near .back2
.return1:
    ret
