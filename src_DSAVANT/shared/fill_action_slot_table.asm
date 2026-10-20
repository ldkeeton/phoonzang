; auto-generated
fill_action_slot_table:
    mov ax, 0xfff6
    call aztec_csav
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + 0x19f], 0xff
    jne short @..fill_action_slot_table.l1
    ret
@..fill_action_slot_table.l1:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0002], ax
    mov word [bp - 0x000a], 0
    cmp word [bp + 0xa], byte 0xff
    jne short @..fill_action_slot_table.l2
    mov word [bp + 0xa], 0
    mov cx, 0x15e
    imul cx
    mov bx, ax
    mov al, byte [bx + slot_rec_forced]
    sub ah, ah
    cmp ax, 0xfe
    je short @..fill_action_slot_table.l2
    mov word [bp - 0x000a], 1
@..fill_action_slot_table.l2:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + slot_rec_first]
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near @..fill_action_slot_table.l8
@..fill_action_slot_table.l3:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + slot_rec_action]
    sub ah, ah
    mov word [bp - 0x0006], ax
    cmp word [bp + 0xa], byte 0
    jne short @..fill_action_slot_table.l6
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    cmp byte [bx + slot_rec_forced], 0
    jbe short @..fill_action_slot_table.l6
    mov al, byte [bx + slot_rec_forced]
    sub ah, ah
    cmp ax, 0xfe
    jge short @..fill_action_slot_table.l6
    cmp ax, 0xfd
    jne short @..fill_action_slot_table.l4
    mov word [bp - 0x0006], 0
    mov word [bp - 0x0008], 0
    jmp short @..fill_action_slot_table.l5
@..fill_action_slot_table.l4:
    mov word [bp - 0x0008], ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char_ext]
    cmp byte [bx + 0xd7], 0x47
    jne short @..fill_action_slot_table.l5
    cmp word [bp - 0x000a], byte 0
    jne short @..fill_action_slot_table.l5
    mov word [bp - 0x0006], 1
    mov word [bp - 0x0008], 0xb
@..fill_action_slot_table.l5:
    jmp short @..fill_action_slot_table.l7
@..fill_action_slot_table.l6:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + slot_rec_action_rand]
    sub ah, ah
    push ax
    call random_below
    pop cx
    add word [bp - 0x0006], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + slot_rec_target]
    sub ah, ah
    mov word [bp - 0x0008], ax
    cmp word [bp - 0x000a], byte 0
    je short @..fill_action_slot_table.l7
    mov al, byte [bx + slot_rec_target_rand]
    sub ah, ah
    push ax
    call random_below
    pop cx
    add word [bp - 0x0008], ax
@..fill_action_slot_table.l7:
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 3
    imul word [bp + 0x6]
    mov cx, ax
    add ax, word [bp + 0x8]
    mov bx, ax
    pop ax
    mov byte [bx + action_slot_mode], al
    mov al, byte [bp - 0x0006]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table], al
    mov al, byte [bp - 0x0008]
    mov byte [bx + action_slot_table + 0x1], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_rec_ranges]
    inc al
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table + 0x2], al
    mov al, byte [bx + action_slot_table + 0x2]
    sub ah, ah
    mov cx, ax
    push cx
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_rec_ranges + 0x1]
    sub ah, ah
    push ax
    call random_below
    pop cx
    pop cx
    add ax, cx
    push ax
    mov ax, 0x5a
    imul word [bp + 0x6]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0x8]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table + 0x2], al
    inc word [bp - 0x0004]
@..fill_action_slot_table.l8:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + slot_rec_first]
    sub ah, ah
    push ax
    mov al, byte [bx + slot_rec_count]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    cmp ax, word [bp - 0x0004]
    jle short @..fill_action_slot_table.l9
    jmp near @..fill_action_slot_table.l3
@..fill_action_slot_table.l9:
    ret
