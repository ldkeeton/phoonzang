; auto-generated
api_idx_002e_ILPL:
    mov ax, 0xffd2
    call aztec_csav
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0xae
    push ax
    mov ax, 6
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, slot_prompt_text
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov word [bp - 4], 0
    mov word [bp - 6], 0
    mov word [bp - 2], 0
@..api_idx_002e_ILPL.l1:
    mov ax, 0xa
    imul word [bp - 2]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x2e], 0
    mov ax, word [bp - 2]
    cmp ax, word [bp + 4]
    je short @..api_idx_002e_ILPL.l4
    shl ax, 1
    mov bx, ax
    cmp word [bx + slot_value], byte 0
    jg short @..api_idx_002e_ILPL.l2
    mov ax, word [bp - 2]
    cmp ax, strict word 2
    je short @..api_idx_002e_ILPL.l4
@..api_idx_002e_ILPL.l2:
    cmp word [bp - 6], byte 0
    je short @..api_idx_002e_ILPL.l3
    inc word [bp - 4]
@..api_idx_002e_ILPL.l3:
    mov ax, 0xa
    imul word [bp - 2]
    lea cx, word [bp - 0x2e]
    add ax, cx
    push ax
    push word [bx + slot_value]
    call format_int_decimal
    add sp, byte 4
    mov word [bp - 6], 1
    jmp short @..api_idx_002e_ILPL.l6
@..api_idx_002e_ILPL.l4:
    mov ax, word [bp - 2]
    cmp ax, word [bp + 4]
    jne short @..api_idx_002e_ILPL.l6
    cmp word [bp - 6], byte 0
    je short @..api_idx_002e_ILPL.l5
    inc word [bp - 4]
@..api_idx_002e_ILPL.l5:
    mov cx, 0xa
    imul cx
    lea cx, word [bp - 0x2e]
    add ax, cx
    push ax
    push word [bp + 6]
    call format_int_decimal
    add sp, byte 4
    mov word [bp - 6], 1
@..api_idx_002e_ILPL.l6:
    mov ax, 0xa
    imul word [bp - 2]
    lea cx, word [bp - 0x2e]
    add ax, cx
    push ax
    call aztec_strlen
    pop cx
    add word [bp - 4], ax
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jge short @..api_idx_002e_ILPL.l7
    jmp near @..api_idx_002e_ILPL.l1
@..api_idx_002e_ILPL.l7:
    mov ax, 0xae
    push ax
    mov ax, 0x1a
    sub ax, word [bp - 4]
    mov cx, 6
    imul cx
    add ax, strict word 0xfffb
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov word [bp - 6], 0
    mov word [bp - 2], 0
@..api_idx_002e_ILPL.l8:
    mov ax, 0xa
    imul word [bp - 2]
    lea cx, word [bp - 0x2e]
    add ax, cx
    push ax
    call aztec_strlen
    pop cx
    cmp ax, strict word 0
    jle short @..api_idx_002e_ILPL.l10
    cmp word [bp - 6], byte 0
    je short @..api_idx_002e_ILPL.l9
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x2f
    push ax
    call draw_font_glyph
    add sp, byte 4
@..api_idx_002e_ILPL.l9:
    mov ax, 0
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    push word [word bx + 0x30]
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 2]
    lea cx, word [bp - 0x2e]
    add ax, cx
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov word [bp - 6], 1
@..api_idx_002e_ILPL.l10:
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 4
    jl short @..api_idx_002e_ILPL.l8
    ret
