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
    mov word [bp - 0x0004], 0
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
@..api_idx_002e_ILPL.l1:
    mov ax, 0xa
    imul word [bp - 0x0002]
    mov bx, ax
    add bx, bp
    mov byte [bx - 0x002e], 0
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    je short @..api_idx_002e_ILPL.l4
    shl ax, 1
    mov bx, ax
    cmp word [bx + slot_value], byte 0
    jg short @..api_idx_002e_ILPL.l2
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 2
    je short @..api_idx_002e_ILPL.l4
@..api_idx_002e_ILPL.l2:
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_002e_ILPL.l3
    inc word [bp - 0x0004]
@..api_idx_002e_ILPL.l3:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bx + slot_value]
    call ds_app_OLKR
    add sp, byte 4
    mov word [bp - 0x0006], 1
    jmp short @..api_idx_002e_ILPL.l6
@..api_idx_002e_ILPL.l4:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bp + 0x4]
    jne short @..api_idx_002e_ILPL.l6
    cmp word [bp - 0x0006], byte 0
    je short @..api_idx_002e_ILPL.l5
    inc word [bp - 0x0004]
@..api_idx_002e_ILPL.l5:
    mov cx, 0xa
    imul cx
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    push word [bp + 0x6]
    call ds_app_OLKR
    add sp, byte 4
    mov word [bp - 0x0006], 1
@..api_idx_002e_ILPL.l6:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call aztec_strlen
    pop cx
    add word [bp - 0x0004], ax
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jge short @..api_idx_002e_ILPL.l7
    jmp near @..api_idx_002e_ILPL.l1
@..api_idx_002e_ILPL.l7:
    mov ax, 0xae
    push ax
    mov ax, 0x1a
    sub ax, word [bp - 0x0004]
    mov cx, 6
    imul cx
    add ax, strict word 0xfffb
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0002], 0
@..api_idx_002e_ILPL.l8:
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call aztec_strlen
    pop cx
    cmp ax, strict word 0
    jle short @..api_idx_002e_ILPL.l10
    cmp word [bp - 0x0006], byte 0
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
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    push word [word bx + 0x30]
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp - 0x0002]
    lea cx, word [bp - 0x002e]
    add ax, cx
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov word [bp - 0x0006], 1
@..api_idx_002e_ILPL.l10:
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 4
    jl short @..api_idx_002e_ILPL.l8
    ret
