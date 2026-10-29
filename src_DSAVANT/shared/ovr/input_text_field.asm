; auto-generated
input_text_field:
    mov ax, 0xfff8
    call aztec_csav
    push word [bp + 0xe]
    push word [bp + 0xc]
    call call_set_text_color
    add sp, byte 4
    push word [bp + 4]
    call aztec_strlen
    pop cx
    mov word [bp - 4], ax
    mov cx, 6
    imul cx
    add word [bp + 6], ax
.back1:
    mov word [bp - 6], 0
    mov word [bp - 8], 0
.back2:
    mov ax, 1
    push ax
    call poll_filtered_key
    pop cx
    test ax, ax
    je short .forward1
    jmp near .forward5
.forward1:
    cmp word [bp - 8], byte 0
    jne short .forward3
    push word [bp + 0xe]
    mov ax, word [bp + 8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 5
    push ax
    push word [bp + 8]
    push word [bp + 6]
    call call_fill_area
    add sp, byte 0xa
    cmp word [bp - 6], byte 0
    je short .forward2
    push word [bp + 8]
    push word [bp + 6]
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 3
    push ax
    call draw_font_glyph
    add sp, byte 4
.forward2:
    mov ax, word [bp + 8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 5
    push ax
    push word [bp + 8]
    push word [bp + 6]
    call call_show_area
    add sp, byte 8
    mov ax, word [bp - 6]
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 6], dx
    mov word [bp - 8], 0xa
    jmp short .forward4
.forward3:
    mov ax, 0xa
    push ax
    call delay_ms
    pop cx
    dec word [bp - 8]
.forward4:
    jmp near .back2
.forward5:
    mov ax, 1
    push ax
    call get_filtered_key
    pop cx
    sub ah, ah
    mov word [bp - 2], ax
    push word [bp + 0xe]
    mov ax, word [bp + 8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 5
    push ax
    push word [bp + 8]
    push word [bp + 6]
    call call_fill_area
    add sp, byte 0xa
    mov ax, word [bp + 8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 5
    push ax
    push word [bp + 8]
    push word [bp + 6]
    call call_show_area
    add sp, byte 8
    cmp word [bp - 2], byte 0xd
    jne short .forward6
    mov bx, word [bp + 4]
    mov si, word [bp - 4]
    mov byte [bx + si], 0
    call flush_keyboard
    ret
.forward6:
    cmp word [bp - 2], byte 8
    jne short .forward9
    cmp word [bp - 4], byte 0
    jle short .forward7
    dec word [bp - 4]
    add word [bp + 6], byte -6
    jmp short .forward8
.forward7:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
.forward8:
    jmp near .forward13
.forward9:
    mov ax, word [bp - 4]
    cmp ax, word [bp + 0xa]
    jl short .forward10
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp near .forward13
.forward10:
    cmp word [bp + 0x10], byte 0
    jne short .forward11
    mov ax, word [bp - 2]
    cmp ax, strict word 0x20
    jl short .forward11
    cmp ax, strict word 0x7f
    jle short .forward12
.forward11:
    cmp word [bp + 0x10], byte 1
    jne short .forward13
    mov ax, word [bp - 2]
    cmp ax, strict word 0x30
    jl short .forward13
    cmp ax, strict word 0x39
    jg short .forward13
.forward12:
    mov al, byte [bp - 2]
    mov bx, word [bp + 4]
    mov si, word [bp - 4]
    mov byte [bx + si], al
    inc word [bp - 4]
    push word [bp + 8]
    push word [bp + 6]
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov al, byte [bp - 2]
    sub ah, ah
    push ax
    call draw_font_glyph
    add sp, byte 4
    mov ax, word [bp + 8]
    add ax, strict word 5
    push ax
    mov ax, word [bp + 6]
    add ax, strict word 5
    push ax
    push word [bp + 8]
    push word [bp + 6]
    call call_show_area
    add sp, byte 8
    add word [bp + 6], byte 6
.forward13:
    jmp near .back1
    db 0xc3
