; auto-generated
flush_glyph_buffer:
    mov ax, 0xfffc
    call aztec_csav
    cmp word [maze_message_row], byte 3
    jle short .forward1
    mov ax, 0
    push ax
    call flush_glyph_buffer.wait_for_maze_input_or_refresh1
    pop cx
.forward1:
    mov bx, word [bp + 4]
    cmp byte [bx], 0
    jne short .forward2
    inc word [maze_message_row]
    ret
.forward2:
    mov ax, 2
    push ax
    push bx
    call measure_text_width
    add sp, byte 4
    inc ax
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    mov word [bp - 2], ax
    push word [bp + 4]
    call aztec_strlen
    pop cx
    dec ax
    mov word [bp - 4], ax
    mov bx, word [bp + 4]
    mov si, ax
    mov al, byte [bx + si]
    sub ah, ah
    jmp short .forward3
.back1:
    mov bx, word [bp + 4]
    mov si, word [bp - 4]
    mov byte [bx + si], 0
    mov word [bp - 2], 0x44
    jmp short .forward4
.back2:
    mov bx, word [bp + 4]
    mov si, word [bp - 4]
    mov byte [bx + si], 0
    mov ax, word [maze_message_previous_x]
    mov word [bp - 2], ax
    jmp short .forward4
.forward3:
    cmp ax, strict word 0x24
    je short .back1
    cmp ax, strict word 0x5e
    je short .back2
.forward4:
    mov ax, 0xc
    imul word [maze_message_row]
    add ax, 0x92
    push ax
    push word [bp - 2]
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x55
    push ax
    call call_set_text_color
    add sp, byte 4
    mov ax, 2
    push ax
    push word [bp + 4]
    call draw_text_glyphs
    add sp, byte 4
    mov bx, word [bp + 4]
    mov byte [bx], 0
    mov ax, word [bp - 2]
    mov word [maze_message_previous_x], ax
    inc word [maze_message_row]
    ret
