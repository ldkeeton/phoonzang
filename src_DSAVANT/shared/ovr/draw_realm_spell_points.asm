; auto-generated
draw_realm_spell_points:
    mov ax, 0xfff4
    call aztec_csav
    mov word [bp - 2], 0
.back1:
    lea ax, word [bp - 0xc]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + party_records + pc_rec.realm_points]
    call format_int_decimal
    add sp, byte 4
    mov ax, 0
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [word bx + 6]
    call call_set_text_color
    add sp, byte 4
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    push word [bx + 0x18e]
    lea ax, word [bp - 0xc]
    push ax
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    mov bx, ax
    mov ax, word [bx + 0x18c]
    add ax, strict word 9
    sub ax, cx
    push ax
    call call_set_text_pos
    add sp, byte 4
    mov ax, 0
    push ax
    lea ax, word [bp - 0xc]
    push ax
    call draw_text_glyphs
    add sp, byte 4
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 6
    jge short .return1
    jmp near .back1
.return1:
    ret
