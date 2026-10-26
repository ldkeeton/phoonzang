; auto-generated
queue_cell_action_overlay:
    mov ax, 0xffe4
    call aztec_csav
    mov byte [bp - 0x1c], 0
    mov ax, 6
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + cell_slot_ref]
    mov cx, 0xa
    cwd
    idiv cx
    mov word [bp - 2], ax
    mov word [bp - 4], dx
    cmp ax, strict word 1
    jl short .return1
    cmp ax, strict word 3
    jg short .return1
    mov ax, word [bp + 4]
    cmp ax, word [row_limit]
    jle short .forward1
.return1:
    ret
.forward1:
    mov ax, word [bp - 2]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + member_rec.slot], 0xff
    jne short .forward2
    ret
.forward2:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 6], ax
    lea ax, word [bp - 0x1c]
    push ax
    push word [bp + 0x10]
    push word [bp + 6]
    push word [bp + 4]
    push dx
    push word [bp - 2]
    call advance_action_slots
    add sp, byte 0xc
    cmp byte [bp - 0x1c], 0
    jne short .forward3
    ret
.forward3:
    mov ax, word [bp + 6]
    mov cx, 2
    cwd
    idiv cx
    mov word [bp - 8], dx
    mov al, byte [bp - 0x1c]
    sub ah, ah
    mov word [bp - 0xa], ax
    mov ax, 0x15e
    imul word [bp - 6]
    mov bx, ax
    cmp byte [bx + slot_recs + slot_rec.forced], 0
    je short .forward4
    mov word [bp + 8], 0
.forward4:
    mov cx, word [bp - 0xa]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.range]
    sub ah, ah
    mov word [bp - 0xc], ax
    cmp word [bp - 0xc], byte 0
    jne short .forward5
    mov ax, 6
    imul word [bp + 4]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + cell_overlay_code]
    sub ax, word [bp - 2]
    mov word [bp - 0xc], ax
    jmp short .forward7
.forward5:
    mov ax, 0x64
    push ax
    mov ax, 5
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0
    cmp word [bp + 6], byte 0
    jne short .forward6
    mov ax, 5
.forward6:
    add cx, ax
    mov ax, word [bp - 0xc]
    sub ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0xc], ax
.forward7:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0x15e
    imul word [bp - 6]
    push ax
    mov ax, word [bp - 8]
    mov cx, 2
    cwd
    idiv cx
    mov cx, dx
    pop ax
    add ax, cx
    mov cx, word [bp - 0xa]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 6]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.cell_ofs]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0xe], ax
    mov ax, 0x15e
    imul word [bp - 6]
    add ax, word [bp - 0xa]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_y]
    sub ah, ah
    push ax
    mov ax, 0x15e
    imul word [bp - 6]
    mov cx, word [bp + 6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.cell_ofs + 0x1]
    cbw
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x10], ax
    cmp word [party_member_count], byte 1
    jne short .forward8
    mov bx, word [party_char_hi]
    cmp byte [bx + party_char_hi_rec.f_01a1], 1
    jne short .forward8
    cmp word [bp + 4], byte 0
    jne short .forward8
    mov word [bp + 0xa], 0
.forward8:
    mov ax, 0xa0
    sub ax, word [bp - 0xe]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0xe], ax
    mov ax, word [bp - 8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short .forward9
    mov ax, 0x15e
    imul word [bp - 6]
    mov cx, ax
    mov ax, word [bp - 8]
    mov bx, 2
    cwd
    idiv bx
    mov ax, dx
    add cx, ax
    mov ax, cx
    mov cx, word [bp - 0xa]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bp - 0xe], ax
.forward9:
    mov ax, word [bp + 0xe]
    dec ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0xe]
    add ax, word [bp + 8]
    push ax
    call clamp_between
    add sp, byte 6
    mov word [bp - 0xe], ax
    mov ax, 0x3d
    sub ax, word [bp - 0x10]
    imul word [bp + 0xa]
    mov cx, 0x64
    cwd
    idiv cx
    add word [bp - 0x10], ax
    lea ax, word [bp - 0x1c]
    push ax
    push word [bp + 0xa]
    push word [bp - 8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 6]
    push word [bp - 0xc]
    call add_overlay_item
    add sp, byte 0x12
    ret
