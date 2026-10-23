; auto-generated
input_text_field:
    mov ax, 0xfff8
    call aztec_csav
    push word [bp + 0xe]
    push word [bp + 0xc]
    call gfx_set_text_color
    add sp, byte 4
    push word [bp + 0x4]
    call aztec_strlen
    pop cx
    mov word [bp - 0x0004], ax
    mov cx, 6
    imul cx
    add word [bp + 0x6], ax
@..input_text_field.l1:
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
@..input_text_field.l2:
    mov ax, 1
    push ax
    call poll_filtered_key
    pop cx
    test ax, ax
    je short @..input_text_field.l3
    jmp near @..input_text_field.l7
@..input_text_field.l3:
    cmp word [bp - 0x0008], byte 0
    jne short @..input_text_field.l5
    push word [bp + 0xe]
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_fill_area
    add sp, byte 0x0a
    cmp word [bp - 0x0006], byte 0
    je short @..input_text_field.l4
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call draw_font_glyph
    add sp, byte 4
@..input_text_field.l4:
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_show_area
    add sp, byte 8
    mov ax, word [bp - 0x0006]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], 0xa
    jmp short @..input_text_field.l6
@..input_text_field.l5:
    mov ax, 0xa
    push ax
    call delay_ms
    pop cx
    dec word [bp - 0x0008]
@..input_text_field.l6:
    jmp near @..input_text_field.l2
@..input_text_field.l7:
    mov ax, 1
    push ax
    call get_filtered_key
    pop cx
    sub ah, ah
    mov word [bp - 0x0002], ax
    push word [bp + 0xe]
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_fill_area
    add sp, byte 0x0a
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_show_area
    add sp, byte 8
    cmp word [bp - 0x0002], byte 0x0d
    jne short @..input_text_field.l8
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], 0
    call flush_keyboard
    ret
@..input_text_field.l8:
    cmp word [bp - 0x0002], byte 8
    jne short @..input_text_field.l11
    cmp word [bp - 0x0004], byte 0
    jle short @..input_text_field.l9
    dec word [bp - 0x0004]
    add word [bp + 0x6], byte 0xfa
    jmp short @..input_text_field.l10
@..input_text_field.l9:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
@..input_text_field.l10:
    jmp near @..input_text_field.l15
@..input_text_field.l11:
    mov ax, word [bp - 0x0004]
    cmp ax, word [bp + 0xa]
    jl short @..input_text_field.l12
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp near @..input_text_field.l15
@..input_text_field.l12:
    cmp word [bp + 0x10], byte 0
    jne short @..input_text_field.l13
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x20
    jl short @..input_text_field.l13
    cmp ax, strict word 0x7f
    jle short @..input_text_field.l14
@..input_text_field.l13:
    cmp word [bp + 0x10], byte 1
    jne short @..input_text_field.l15
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 0x30
    jl short @..input_text_field.l15
    cmp ax, strict word 0x39
    jg short @..input_text_field.l15
@..input_text_field.l14:
    mov al, byte [bp - 0x0002]
    mov bx, word [bp + 0x4]
    mov si, word [bp - 0x0004]
    mov byte [bx + si], al
    inc word [bp - 0x0004]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 0x0002]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, word [bp + 0x8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 5
    push ax
    push word [bp + 0x8]
    push word [bp + 0x6]
    call gfx_show_area
    add sp, byte 8
    add word [bp + 0x6], byte 6
@..input_text_field.l15:
    jmp near @..input_text_field.l1
    db 0xc3
