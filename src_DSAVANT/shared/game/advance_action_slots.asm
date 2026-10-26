; auto-generated
advance_action_slots:
    mov ax, 0xfff2
    call aztec_csav
    mov bx, word [bp + 0xe]
    mov byte [bx], 0
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + member_rec.slot], 0xff
    jne short @..advance_action_slots.l1
    ret
@..advance_action_slots.l1:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 2], ax
    mov word [bp - 0xe], 0
    mov cx, 0x15e
    imul cx
    push ax
    mov ax, 3
    imul word [bp + 8]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + action_slot_mode]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs]
    sub ah, ah
    mov word [bp - 4], ax
    jmp near @..advance_action_slots.l15
@..advance_action_slots.l2:
    mov ax, 0x2c
    imul word [bp + 6]
    mov si, ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + si + member_rec.item_state], 2
    je short @..advance_action_slots.l3
    cmp byte [bx + si + 0x11], 0
    ja short @..advance_action_slots.l3
    cmp byte [bx + si + 0x10], 0
    jbe short @..advance_action_slots.l4
@..advance_action_slots.l3:
    mov ax, 0x5a
    imul word [bp + 8]
    push ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 4]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + action_slot_table]
    sub ah, ah
    mov word [bp - 6], ax
    mov ax, 0x15e
    imul word [bp - 2]
    mov cx, ax
    mov ax, word [bp - 6]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + slot_recs + slot_rec.target]
    sub ah, ah
    mov word [bp - 8], ax
    jmp near @..advance_action_slots.l11
@..advance_action_slots.l4:
    mov ax, 0x5a
    imul word [bp + 8]
    push ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 4]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + action_slot_table + action_slot.target]
    sub ah, ah
    mov word [bp - 8], ax
    mov al, byte [bx + action_slot_table + action_slot.roll]
    sub ah, ah
    mov word [bp - 0xa], ax
    cmp word [bp + 0xc], byte 0
    je short @..advance_action_slots.l5
    dec word [bp - 0xa]
@..advance_action_slots.l5:
    cmp word [bp - 0xa], byte 0
    jle short @..advance_action_slots.l6
    jmp near @..advance_action_slots.l10
@..advance_action_slots.l6:
    mov al, byte [bx + action_slot_table]
    sub ah, ah
    mov word [bp - 6], ax
    inc word [bp - 8]
    mov ax, 0x15e
    imul word [bp - 2]
    mov cx, ax
    mov ax, word [bp - 6]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + slot_recs + slot_rec.target]
    sub ah, ah
    push ax
    mov al, byte [bx + slot_recs + slot_rec.target_rand]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    cmp ax, word [bp - 8]
    jl short @..advance_action_slots.l7
    jmp near @..advance_action_slots.l9
@..advance_action_slots.l7:
    mov ax, 3
    imul word [bp + 8]
    add ax, word [bp + 0xa]
    mov bx, ax
    cmp byte [bx + action_slot_mode], 0
    je short @..advance_action_slots.l8
    mov byte [bx + action_slot_mode], 0
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 4]
    call advance_action_slots.fill_action_slot_table_vmnpc1
    add sp, byte 8
    push word [bp + 0xe]
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call advance_action_slots
    add sp, byte 0xc
    ret
@..advance_action_slots.l8:
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp - 4]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.action_rand]
    sub ah, ah
    push ax
    call random_below
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp - 4]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.action]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 6], ax
    mov al, byte [bp - 6]
    push ax
    mov ax, 0x5a
    imul word [bp + 8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 4]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table], al
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp - 6]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.target]
    sub ah, ah
    mov word [bp - 8], ax
@..advance_action_slots.l9:
    mov al, byte [bp - 8]
    push ax
    mov ax, 0x5a
    imul word [bp + 8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 4]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table + action_slot.target], al
    mov ax, 0x15e
    imul word [bp - 2]
    mov cx, word [bp - 8]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.range + 0x3]
    sub ah, ah
    push ax
    call random_below
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp - 2]
    mov cx, word [bp - 8]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.range + 0x2]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0xa], ax
@..advance_action_slots.l10:
    mov al, byte [bp - 0xa]
    push ax
    mov ax, 0x5a
    imul word [bp + 8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 4]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table + action_slot.roll], al
@..advance_action_slots.l11:
    mov ax, 0x15e
    imul word [bp - 2]
    mov cx, word [bp - 8]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.range + 0x1]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0xe]
    mov byte [bx + si], al
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + member_rec.kind], 0x79
    je short @..advance_action_slots.l12
    mov al, byte [bx + 0x19e]
    sub ah, ah
    cmp ax, 0x8d
    jne short @..advance_action_slots.l13
@..advance_action_slots.l12:
    inc word [bp - 0xe]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0xe]
    mov al, byte [bx + si - 1]
    mov byte [bx + si], al
    mov ax, 0x15e
    imul word [bp - 2]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.forced + 0x1]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0xe]
    mov byte [bx + si - 1], al
@..advance_action_slots.l13:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0xe]
    cmp byte [bx + si], 0
    je short @..advance_action_slots.l14
    inc word [bp - 0xe]
@..advance_action_slots.l14:
    inc word [bp - 4]
@..advance_action_slots.l15:
    mov ax, 0x15e
    imul word [bp - 2]
    push ax
    mov ax, 3
    imul word [bp + 8]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + action_slot_mode]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs]
    sub ah, ah
    push ax
    mov al, byte [bx + slot_recs + slot_rec.count]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, word [bp - 4]
    jle short @..advance_action_slots.l16
    jmp near @..advance_action_slots.l2
@..advance_action_slots.l16:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0xe]
    mov byte [bx + si], 0
    ret
