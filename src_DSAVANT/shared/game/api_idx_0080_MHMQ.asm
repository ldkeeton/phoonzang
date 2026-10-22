; auto-generated
api_idx_0080_MHMQ:
    mov ax, 0xff80
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0080_MHMQ.bss1]
    push word [api_idx_0080_MHMQ.bss2]
    call gfx_restore_screen
    add sp, byte 8
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0080_MHMQ.bss3]
    push word [api_idx_0080_MHMQ.bss4]
    call gfx_restore_screen
    add sp, byte 8
    push word [bp + 0x4]
    call api_idx_0080_MHMQ.api_idx1
    pop cx
    mov si, ax
    lea di, word [bp - 0x0018]
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + 0x5dab]
    cbw
    add ax, word [bp - 0x0018]
    mov word [bp - 0x000a], ax
    mov al, byte [bx + 0x5dac]
    cbw
    mov cx, ax
    mov ax, word [bp - 0x000a]
    add cx, ax
    mov word [bp - 0x0008], cx
    mov al, byte [bx + 0x5daa]
    cbw
    add ax, cx
    mov word [bp - 0x0006], ax
    lea ax, word [bp - 0x0068]
    push ax
    mov ax, 0xd8
    push ax
    call load_message_string
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call aztec_strlen
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x20
    cmp word [bp - 0x0006], byte 0
    jle short @..api_idx_0080_MHMQ.l1
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
@..api_idx_0080_MHMQ.l1:
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0006]
    call ds_app_OLKR
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call aztec_strlen
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x20
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x28
    cmp word [bp - 0x0008], byte 0
    jl short @..api_idx_0080_MHMQ.l2
    mov bx, word [bp - 0x0004]
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x2b
@..api_idx_0080_MHMQ.l2:
    mov ax, word [bp - 0x0004]
    lea cx, word [bp - 0x0068]
    add ax, cx
    push ax
    push word [bp - 0x0008]
    call ds_app_OLKR
    add sp, byte 4
    lea ax, word [bp - 0x0068]
    push ax
    call aztec_strlen
    pop cx
    mov word [bp - 0x0004], ax
    mov bx, ax
    inc word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0x29
    mov bx, word [bp - 0x0004]
    add bx, bp
    mov byte [bx - 0x0068], 0
    mov ax, 0
    push ax
    mov ax, 0xeb
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0x1e
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0x10e
    sub ax, cx
    push ax
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    mov word [bp - 0x0074], 0x114
    mov word [bp - 0x0080], 0x2e
    mov word [bp - 0x0072], 0x114
    mov word [bp - 0x007e], 0x44
    mov word [bp - 0x0070], 0x114
    mov word [bp - 0x007c], 0x5a
    mov word [bp - 0x006e], 0x126
    mov word [bp - 0x007a], 0x4f
    mov word [bp - 0x006c], 0x114
    mov word [bp - 0x0078], 0x70
    mov word [bp - 0x0002], 0
@..api_idx_0080_MHMQ.l3:
    mov ax, word [bp - 0x0002]
    shl ax, 1
    mov bx, ax
    add bx, bp
    push word [bx - 0x0080]
    mov bx, ax
    add bx, bp
    push word [bx - 0x0074]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5d4b]
    sub ah, ah
    cmp ax, 0xff
    je short @..api_idx_0080_MHMQ.l4
    mov ax, 0x5f
    jmp short @..api_idx_0080_MHMQ.l5
@..api_idx_0080_MHMQ.l4:
    mov ax, 0xeb
@..api_idx_0080_MHMQ.l5:
    push ax
    call gfx_set_text_color
    add sp, byte 4
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x5dad]
    cbw
    add ax, word [bp - 0x0008]
    mov word [bp - 0x0006], ax
    cmp ax, strict word 0
    jl short @..api_idx_0080_MHMQ.l6
    mov ax, 0
    push ax
    mov ax, 0x2b
    push ax
    call draw_font_glyph
    add sp, byte 4
@..api_idx_0080_MHMQ.l6:
    lea ax, word [bp - 0x0068]
    push ax
    push word [bp - 0x0006]
    call ds_app_OLKR
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0x0068]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 5
    jge short @..api_idx_0080_MHMQ.l7
    jmp near @..api_idx_0080_MHMQ.l3
@..api_idx_0080_MHMQ.l7:
    ret
