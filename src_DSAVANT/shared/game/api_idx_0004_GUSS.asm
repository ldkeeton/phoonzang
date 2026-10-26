; auto-generated
api_idx_0004_GUSS:
    mov ax, 0xfffc
    call aztec_csav
    mov bx, word [bp + 8]
    mov al, byte [bx + 0x44]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xd], al
    mov word [bp - 4], 0
.back1:
    mov bx, word [bp + 8]
    mov si, word [bp - 4]
    mov al, byte [bx + si + 0x2a]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 6]
    mov dx, ax
    add cx, ax
    add cx, si
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0x4], al
    inc word [bp - 4]
    mov ax, word [bp - 4]
    cmp ax, strict word 8
    jl short .back1
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.flag + 0x21]
    sub ah, ah
    mov cx, 5
    cwd
    idiv cx
    mov word [bp - 4], ax
    cmp byte [bx + party_records + pc_rec.profession], 0xc
    je short .forward1
    cmp byte [bx + party_records + pc_rec.profession], 0xd
    jne short .forward2
.forward1:
    mov ax, 0x12
    imul word [bp + 6]
    add bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xa]
    sub ah, ah
    mov cx, ax
    mov ax, word [bp - 4]
    add cx, ax
    mov ax, cx
    add ax, strict word 5
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al
    jmp short .forward3
.forward2:
    cmp word [bp - 4], byte 0
    jle short .forward3
    mov ax, 0x248
    imul word [bp + 4]
    push ax
    mov ax, 0x12
    imul word [bp + 6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xa]
    sub ah, ah
    add ax, word [bp - 4]
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al
.forward3:
    mov bx, word [bp + 8]
    mov al, byte [bx + 0x45]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xc], al
    mov bx, word [bp + 8]
    cmp byte [bx + 0x38], 4
    jne short .forward5
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    mov ax, 0
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.profession], 4
    jne short .forward4
    mov bx, cx
    add byte [bx + party_records + pc_rec.slot_info + 0xe], 0xf1
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xa]
    sub ah, ah
    shl ax, 1
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al
.forward4:
    jmp near .forward11
.forward5:
    mov ax, 0x248
    imul word [bp + 4]
    push ax
    mov ax, 0x12
    imul word [bp + 6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], 0
    cmp word [bp + 6], byte 0
    jne short .forward8
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xe]
    cbw
    mov cx, 0
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0xf
    jbe short .forward6
    mov cx, 5
.forward6:
    sub ax, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
    cbw
    mov cx, 0
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0x11
    jbe short .forward7
    mov cx, 5
.forward7:
    sub ax, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
    jmp short .forward10
.forward8:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0x20]
    cbw
    mov cx, 0
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0x11
    jbe short .forward9
    mov cx, 5
.forward9:
    sub ax, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0x20], al
.forward10:
    mov ax, 0x248
    imul word [bp + 4]
    push ax
    mov ax, 0x12
    imul word [bp + 6]
    mov cx, ax
    pop ax
    add ax, cx
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xe]
    cbw
    push ax
    mov bx, word [bp + 8]
    mov al, byte [bx + 0x41]
    cbw
    mov cx, 5
    imul cx
    mov cx, ax
    pop ax
    sub ax, cx
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al
.forward11:
    mov si, word [bp + 8]
    add si, byte 0x1e
    mov ax, 0x248
    imul word [bp + 4]
    push ax
    mov ax, 0x12
    imul word [bp + 6]
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
    cmp word [bp + 6], byte 0
    jne short .forward15
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.stat], 0xf
    jbe short .forward12
    mov ax, 1
    jmp short .forward13
.forward12:
    mov ax, 0
.forward13:
    add word [bx + party_records + pc_rec.slot_info], ax
    mov ax, 0
    cmp byte [bx + party_records + pc_rec.stat], 0x11
    jbe short .forward14
    mov ax, 1
.forward14:
    add word [bx + party_records + pc_rec.slot_info], ax
.forward15:
    mov bx, word [bp + 8]
    mov al, byte [bx + 0x46]
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov cx, ax
    mov ax, 0x12
    imul word [bp + 6]
    mov dx, ax
    add cx, ax
    mov bx, cx
    pop ax
    mov byte [bx + party_records + pc_rec.slot_info + 0xf], al
    mov bx, word [bp + 8]
    mov al, byte [bx + 0x42]
    mov bx, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0x10], al
    mov bx, word [bp + 8]
    mov al, byte [bx + 0x43]
    mov bx, cx
    mov byte [bx + party_records + pc_rec.slot_info + 0x11], al
    ret
