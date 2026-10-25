; auto-generated
api_idx_0004_GUSS:
    mov ax, 0xfffc
    call aztec_csav
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x44]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xd], al
    mov word [bp - 0x0004], 0
@..api_idx_0004_GUSS.l1:
    mov bx, word [bp + 0x8]
    mov si, word [bp - 0x0004]
    mov al, byte [bx + si + 0x2a]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    add cx, si
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0x4], al
    inc word [bp - 0x0004]
    mov ax, word [bp - 0x0004]
    cmp ax, strict word 8
    jl short @..api_idx_0004_GUSS.l1
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.flag + 0x21]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    mov word [bp - 0x0004], ax
    cmp byte [bx + party_records + pc_rec.label], 0xc
    je short @..api_idx_0004_GUSS.l2
    cmp byte [bx + party_records + pc_rec.label], 0xd
    jne short @..api_idx_0004_GUSS.l3
@..api_idx_0004_GUSS.l2:
    mov ax, 0x12
    imul word [bp + 0x6]
    add bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xa]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 0x0004]
    add cx, ax
    mov ax, cx
    add ax, strict word 5
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al
    jmp short @..api_idx_0004_GUSS.l4
@..api_idx_0004_GUSS.l3:
    cmp word [bp - 0x0004], byte 0
    jle short @..api_idx_0004_GUSS.l4
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xa]
    sub ah, ah
    add ax, word [bp - 0x0004]
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al
@..api_idx_0004_GUSS.l4:
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x45]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xc], al
    mov bx, word [bp + 0x8]
    cmp byte [bx + 0x38], 4
    jne short @..api_idx_0004_GUSS.l6
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.label], 4
    jne short @..api_idx_0004_GUSS.l5
    mov bx, cx
    add byte [bx + party_records + pc_rec.slot_info + 0xe], 0xf1
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xa]
    sub ah, ah
    shl ax, 1
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al
@..api_idx_0004_GUSS.l5:
    jmp near @..api_idx_0004_GUSS.l12
@..api_idx_0004_GUSS.l6:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], 0
    cmp word [bp + 0x6], byte 0
    jne short @..api_idx_0004_GUSS.l9
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xe]
    cbw
    mov cx, 0
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0xf
    jbe short @..api_idx_0004_GUSS.l7
    mov cx, 5
@..api_idx_0004_GUSS.l7:
    sub ax, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
    cbw
    mov cx, 0
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0x11
    jbe short @..api_idx_0004_GUSS.l8
    mov cx, 5
@..api_idx_0004_GUSS.l8:
    sub ax, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
    jmp short @..api_idx_0004_GUSS.l11
@..api_idx_0004_GUSS.l9:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0x20]
    cbw
    mov cx, 0
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0x11
    jbe short @..api_idx_0004_GUSS.l10
    mov cx, 5
@..api_idx_0004_GUSS.l10:
    sub ax, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0x20], al
@..api_idx_0004_GUSS.l11:
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xe]
    cbw
    push ax
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
@..api_idx_0004_GUSS.l12:
    mov si, word [bp + 0x8]
    add si, byte 0x1e
    mov ax, 0x248
    imul word [bp + 0x4]
    push ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov cx, ax
    pop ax
    add ax, cx
    mov di, ax
    add ax, 0x5d24
    mov di, ax
    mov cx, ds
    mov es, cx
    movsw
    movsw
    cmp word [bp + 0x6], byte 0
    jne short @..api_idx_0004_GUSS.l16
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.stat], 0xf
    jbe short @..api_idx_0004_GUSS.l13
    mov ax, 1
    jmp short @..api_idx_0004_GUSS.l14
@..api_idx_0004_GUSS.l13:
    mov ax, 0
@..api_idx_0004_GUSS.l14:
    add word [bx + party_records + pc_rec.slot_info], ax
    mov ax, 0
    cmp byte [bx + party_records + pc_rec.stat], 0x11
    jbe short @..api_idx_0004_GUSS.l15
    mov ax, 1
@..api_idx_0004_GUSS.l15:
    add word [bx + party_records + pc_rec.slot_info], ax
@..api_idx_0004_GUSS.l16:
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x46]
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 0x6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xf], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x42]
    mov bx, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0x10], al
    mov bx, word [bp + 0x8]
    mov al, byte [bx + 0x43]
    mov bx, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0x11], al
    ret
