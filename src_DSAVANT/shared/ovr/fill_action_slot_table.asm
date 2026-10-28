; auto-generated
fill_action_slot_table:
    mov ax, 0xfff6
    call aztec_csav
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + member_rec.slot], 0xff
    jne short .forward1
    ret
.forward1:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 2], ax
    mov word [bp - 0xa], 0
    cmp word [bp + 0xa], byte -1
    jne short .forward2
    mov word [bp + 0xa], 0
    mov cx, 0x15e
    imul cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.forced]
    sub ah, ah
    cmp ax, 0xfe
    je short .forward2
    mov word [bp - 0xa], 1
.forward2:
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + slot_recs]
    sub ah, ah
    mov word [bp - 4], ax
    jmp near .forward7
.back1:
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp - 4]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.action]
    sub ah, ah
    mov word [bp - 6], ax
    cmp word [bp + 0xa], byte 0
    jne short .forward5
    mov ax, 0x15e
    imul word [bp - 2]
    mov bx, ax
    cmp byte [bx + slot_recs + slot_rec.forced], 0
    jbe short .forward5
    mov al, byte [bx + slot_recs + slot_rec.forced]
    sub ah, ah
    cmp ax, 0xfe
    jge short .forward5
    cmp ax, 0xfd
    jne short .forward3
    mov word [bp - 6], 0
    mov word [bp - 8], 0
    jmp short .forward4
.forward3:
    mov word [bp - 8], ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char_ext]
    cmp byte [bx + member_ext.kind], 0x47
    jne short .forward4
    cmp word [bp - 0xa], byte 0
    jne short .forward4
    mov word [bp - 6], 1
    mov word [bp - 8], 0xb
.forward4:
    jmp short .forward6
.forward5:
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp - 4]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.action_rand]
    sub ah, ah
    push ax
    call random_below
    pop cx
    add word [bp - 6], ax
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp - 6]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.target]
    sub ah, ah
    mov word [bp - 8], ax
    cmp word [bp - 0xa], byte 0
    je short .forward6
    mov al, byte [bx + slot_recs + slot_rec.target_rand]
    sub ah, ah
    push ax
    call random_below
    pop cx
    add word [bp - 8], ax
.forward6:
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 3
    imul word [bp + 6]
    mov cx, ax
    add ax, word [bp + 8]
    mov bx, ax
    pop ax
    mov byte [bx + action_slot_mode], al
    mov al, byte [bp - 6]
    push ax
    mov ax, 0x5a
    imul word [bp + 6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 4]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table], al
    mov al, byte [bp - 8]
    mov byte [bx + action_slot_table + action_slot.target], al
    mov ax, 0x15e
    imul word [bp - 2]
    mov cx, word [bp - 8]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.range + 0x2]
    inc al
    push ax
    mov ax, 0x5a
    imul word [bp + 6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 4]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table + action_slot.roll], al
    mov al, byte [bx + action_slot_table + action_slot.roll]
    sub ah, ah
    mov cx, ax
    push cx
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
    pop cx
    add ax, cx
    push ax
    mov ax, 0x5a
    imul word [bp + 6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 4]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table + action_slot.roll], al
    inc word [bp - 4]
.forward7:
    mov ax, 0x15e
    imul word [bp - 2]
    add ax, word [bp + 0xa]
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
    jle short .return1
    jmp near .back1
.return1:
    ret
