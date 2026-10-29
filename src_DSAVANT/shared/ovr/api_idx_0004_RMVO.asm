; auto-generated
api_idx_0004_RMVO:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0004_RMVO.bss1]
    push word [api_idx_0004_RMVO.bss2]
    call call_restore_screen
    add sp, byte 8
    mov word [bp - 2], 0
.back1:
    mov word [bp - 4], 0
.back2:
    mov ax, 0
    push ax
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 4]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [word bx + 6]
    call call_set_text_color
    add sp, byte 4
    mov ax, word [bp - 2]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 4]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x15e]
    push word [bx + 0x15c]
    call call_set_text_pos
    add sp, byte 4
    mov ax, 3
    push ax
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 4]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + party_records + pc_rec.realm_points]
    call draw_number_field
    add sp, byte 6
    inc word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, strict word 2
    jl short .back2
    inc word [bp - 2]
    mov ax, word [bp - 2]
    cmp ax, strict word 6
    jge short .forward1
    jmp near .back1
.forward1:
    mov ax, 0
    push ax
    push ax
    push ax
    call draw_party_slot_letters
    add sp, byte 6
    ret
