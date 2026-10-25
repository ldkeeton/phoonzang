; auto-generated
api_idx_0004_RMVO:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0004_RMVO.bss1]
    push word [api_idx_0004_RMVO.bss2]
    call gfx_restore_screen
    add sp, byte 8
    mov word [bp - 0x0002], 0
@..api_idx_0004_RMVO.l1:
    mov word [bp - 0x0004], 0
@..api_idx_0004_RMVO.l2:
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [word bx + 0x6]
    call gfx_set_text_color
    add sp, byte 4
    mov ax, word [bp - 0x0002]
    shl ax, 1
    shl ax, 1
    shl ax, 1
    mov cx, word [bp - 0x0004]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x15e]
    push word [bx + 0x15c]
    call gfx_set_text_pos
    add sp, byte 4
    mov ax, 3
    push ax
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, word [bp - 0x0002]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0004]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + party_records + pc_rec.realm_points]
    call draw_number_field
    add sp, byte 6
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 2
    jl short @..api_idx_0004_RMVO.l2
    inc word [bp - 0x0002]
    mov ax, word [bp - 0x0002]
    cmp ax, strict word 6
    jge short @..api_idx_0004_RMVO.l3
    jmp near @..api_idx_0004_RMVO.l1
@..api_idx_0004_RMVO.l3:
    mov ax, 0
    push ax
    push ax
    push ax
    call draw_party_slot_letters
    add sp, byte 6
    ret
