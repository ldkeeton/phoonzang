; auto-generated
api_idx_0002_KQIK:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    push ax
    mov al, byte [bx + party_records + pc_rec.f_0247]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short @..api_idx_0002_KQIK.l1
    mov ax, cx
    jmp short @..api_idx_0002_KQIK.l2
@..api_idx_0002_KQIK.l1:
    mov ax, word [bx + party_records + pc_rec.power_cap]
@..api_idx_0002_KQIK.l2:
    mov word [bp - 0x0002], ax
    push ax
    cmp ax, strict word 0x14
    pop ax
    jle short @..api_idx_0002_KQIK.l3
    mov ax, 0x14
@..api_idx_0002_KQIK.l3:
    mov word [bp - 0x0002], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 0x6]
    call clamp_between
    add sp, byte 6
    mov word [bp + 0x6], ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat + 0x4]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0x8]
    sub ax, word [bp + 0xa]
    cwd
    idiv word [bp + 0x8]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + party_records + pc_rec.f_0243], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + party_records + pc_rec.f_0243]
    sub ah, ah
    push ax
    call clamp_between
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + party_records + pc_rec.f_0243], al
    mov al, byte [bx + party_records + pc_rec.stat + 0x5]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 0x0002]
    add ax, word [bp + 0xc]
    sub ax, word [bp + 0xe]
    cwd
    idiv word [bp + 0xc]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + party_records + pc_rec.f_0244], al
    push word [bp + 0x6]
    mov ax, 1
    push ax
    mov al, byte [bx + party_records + pc_rec.f_0244]
    sub ah, ah
    push ax
    call clamp_between
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    pop ax
    mov byte [bx + party_records + pc_rec.f_0244], al
    mov al, byte [bx + party_records + pc_rec.stat + 0x5]
    sub ah, ah
    add ax, word [bp - 0x0002]
    mov byte [bx + party_records + pc_rec.f_0245], al
    ret
