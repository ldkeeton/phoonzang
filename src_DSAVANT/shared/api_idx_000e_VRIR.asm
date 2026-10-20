; auto-generated
api_idx_000e_VRIR:
    mov ax, 0xfff2
    call aztec_csav
    mov bx, word [bp + 0xe]
    mov byte [bx], 0
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + 0x19f], 0xff
    jne short @..api_idx_000e_VRIR.l1
    ret
@..api_idx_000e_VRIR.l1:
    mov al, byte [bx + 0x19f]
    cbw
    mov word [bp - 0x0002], ax
    mov word [bp - 0x000e], 0
    mov cx, 0x15e
    imul cx
    push ax
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + action_slot_mode]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_rec_first]
    sub ah, ah
    mov word [bp - 0x0004], ax
    jmp near @..api_idx_000e_VRIR.l15
@..api_idx_000e_VRIR.l2:
    mov ax, 0x2c
    imul word [bp + 0x6]
    mov si, ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + si + 0x22], 2
    je short @..api_idx_000e_VRIR.l3
    cmp byte [bx + si + 0x11], 0
    ja short @..api_idx_000e_VRIR.l3
    cmp byte [bx + si + 0x10], 0
    jbe short @..api_idx_000e_VRIR.l4
@..api_idx_000e_VRIR.l3:
    mov ax, 0x5a
    imul word [bp + 0x8]
    push ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + action_slot_table]
    sub ah, ah
    mov word [bp - 0x0006], ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + slot_rec_target]
    sub ah, ah
    mov word [bp - 0x0008], ax
    jmp near @..api_idx_000e_VRIR.l11
@..api_idx_000e_VRIR.l4:
    mov ax, 0x5a
    imul word [bp + 0x8]
    push ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov cx, ax
    pop ax
    add ax, cx
    push ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx - 0x7cdd]
    sub ah, ah
    mov word [bp - 0x0008], ax
    mov al, byte [bx - 0x7cdc]
    sub ah, ah
    mov word [bp - 0x000a], ax
    cmp word [bp + 0xc], byte 0
    je short @..api_idx_000e_VRIR.l5
    dec word [bp - 0x000a]
@..api_idx_000e_VRIR.l5:
    cmp word [bp - 0x000a], byte 0
    jle short @..api_idx_000e_VRIR.l6
    jmp near @..api_idx_000e_VRIR.l10
@..api_idx_000e_VRIR.l6:
    mov al, byte [bx + action_slot_table]
    sub ah, ah
    mov word [bp - 0x0006], ax
    inc word [bp - 0x0008]
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, ax
    mov ax, word [bp - 0x0006]
    add cx, ax
    mov bx, cx
    mov al, byte [bx + slot_rec_target]
    sub ah, ah
    push ax
    mov al, byte [bx + slot_rec_target_rand]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    cmp ax, word [bp - 0x0008]
    jl short @..api_idx_000e_VRIR.l7
    jmp near @..api_idx_000e_VRIR.l9
@..api_idx_000e_VRIR.l7:
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    cmp byte [bx + action_slot_mode], 0
    je short @..api_idx_000e_VRIR.l8
    mov byte [bx + action_slot_mode], 0
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x4]
    call api_idx_000e_VRIR.api_idx1
    add sp, byte 8
    push word [bp + 0xe]
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call api_idx_000e_VRIR
    add sp, byte 0x0c
    ret
@..api_idx_000e_VRIR.l8:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + slot_rec_action_rand]
    sub ah, ah
    push ax
    call ds_app_PUNN
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0004]
    mov bx, ax
    mov al, byte [bx + slot_rec_action]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x0006], ax
    mov al, byte [bp - 0x0006]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + action_slot_table], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    add ax, word [bp - 0x0006]
    mov bx, ax
    mov al, byte [bx + slot_rec_target]
    sub ah, ah
    mov word [bp - 0x0008], ax
@..api_idx_000e_VRIR.l9:
    mov al, byte [bp - 0x0008]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdd], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac2]
    sub ah, ah
    push ax
    call ds_app_PUNN
    pop cx
    push ax
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + slot_rec_ranges]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
    mov word [bp - 0x000a], ax
@..api_idx_000e_VRIR.l10:
    mov al, byte [bp - 0x000a]
    push ax
    mov ax, 0x5a
    imul word [bp + 0x8]
    mov cx, ax
    mov ax, 0x1e
    imul word [bp + 0xa]
    mov dx, ax
    add cx, ax
    mov ax, 3
    imul word [bp - 0x0004]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx - 0x7cdc], al
@..api_idx_000e_VRIR.l11:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov cx, word [bp - 0x0008]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov al, byte [bx + 0x6ac0]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si], al
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + party_char]
    cmp byte [bx + 0x19e], 0x79
    je short @..api_idx_000e_VRIR.l12
    mov al, byte [bx + 0x19e]
    sub ah, ah
    cmp ax, 0x8d
    jne short @..api_idx_000e_VRIR.l13
@..api_idx_000e_VRIR.l12:
    inc word [bp - 0x000e]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov al, byte [bx + si - 0x0001]
    mov byte [bx + si], al
    mov ax, 0x15e
    imul word [bp - 0x0002]
    mov bx, ax
    mov al, byte [bx + 0x6b76]
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si - 0x0001], al
@..api_idx_000e_VRIR.l13:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    cmp byte [bx + si], 0
    je short @..api_idx_000e_VRIR.l14
    inc word [bp - 0x000e]
@..api_idx_000e_VRIR.l14:
    inc word [bp - 0x0004]
@..api_idx_000e_VRIR.l15:
    mov ax, 0x15e
    imul word [bp - 0x0002]
    push ax
    mov ax, 3
    imul word [bp + 0x8]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + action_slot_mode]
    sub ah, ah
    mov cx, ax
    pop ax
    add ax, cx
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
    jle short @..api_idx_000e_VRIR.l16
    jmp near @..api_idx_000e_VRIR.l2
@..api_idx_000e_VRIR.l16:
    mov bx, word [bp + 0xe]
    mov si, word [bp - 0x000e]
    mov byte [bx + si], 0
    ret
