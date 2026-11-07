; auto-generated
draw_member_panel_glyphs:
    mov ax, 0xfffc
    call $csav
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat + 0x3]
    sub ah, ah
    push ax
    mov al, byte [bx + party_records + pc_rec.stat + 0x2]
    sub ah, ah
    mov cx, ax
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 2], ax
    mov word [bp - 4], 0
    cmp ax, strict word 0xd
    jle short .forward1
    inc word [bp - 4]
.forward1:
    cmp ax, strict word 0x10
    jle short .forward2
    inc word [bp - 4]
.forward2:
    cmp byte [bx + party_records + pc_rec.race], 5
    jne short .forward3
    inc word [bp - 4]
.forward3:
    cmp byte [bx + party_records + pc_rec.race], 6
    jne short .forward4
    dec word [bp - 4]
.forward4:
    mov al, byte [bx + party_records + pc_rec.profession]
    sub ah, ah
    jmp near .forward5
jumptable_1ee4_case_0:
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_1:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.spells_to_learn], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_2:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.spells_to_learn + 0x1], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_4:
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_5:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.spells_to_learn + 0x2], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_6:
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_7:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.spells_to_learn + 0x3], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 4
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_8:
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_9:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.spells_to_learn], 1
    mov byte [bx + party_records + pc_rec.spells_to_learn + 0x1], 1
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_10:
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp near draw_member_panel_glyphs.return1
jumptable_1ee4_case_11:
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp short draw_member_panel_glyphs.return1
jumptable_1ee4_case_12:
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp short draw_member_panel_glyphs.return1
jumptable_1ee4_case_13:
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call draw_member_glyph_row
    add sp, byte 0xe
    jmp short draw_member_panel_glyphs.return1
jumptable_1ee4:
    dw jumptable_1ee4_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_6 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_7 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_9 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_10 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_11 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_12 - IMAGE_BASE + __zres_end
    dw jumptable_1ee4_case_13 - IMAGE_BASE + __zres_end
draw_member_panel_glyphs.forward5:
    cmp ax, strict word 0xe
    jae short draw_member_panel_glyphs.return1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_1ee4 - IMAGE_BASE + __zres_end]
draw_member_panel_glyphs.return1:
    ret
