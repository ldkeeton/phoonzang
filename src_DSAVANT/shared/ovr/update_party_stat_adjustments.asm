; auto-generated
update_party_stat_adjustments:
    mov ax, 0xfffe
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    push ax
    mov al, byte [bx + party_records + pc_rec.power_floor]
    sub ah, ah
    mov cx, ax
    pop ax
    cmp ax, cx
    jge short .forward1
    mov ax, cx
    jmp short .forward2
.forward1:
    mov ax, word [bx + party_records + pc_rec.power_cap]
.forward2:
    mov word [bp - 2], ax
    push ax
    cmp ax, strict word 0x14
    pop ax
    jle short .forward3
    mov ax, 0x14
.forward3:
    mov word [bp - 2], ax
    mov cx, 3
    cwd
    idiv cx
    inc ax
    push ax
    mov ax, 1
    push ax
    push word [bp + 6]
    call clamp_between
    add sp, byte 6
    mov word [bp + 6], ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat + 0x4]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 2]
    add ax, word [bp + 8]
    sub ax, word [bp + 0xa]
    cwd
    idiv word [bp + 8]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + party_records + pc_rec.adjusted_stat4], al
    push word [bp + 6]
    mov ax, 1
    push ax
    mov al, byte [bx + party_records + pc_rec.adjusted_stat4]
    sub ah, ah
    push ax
    call clamp_between
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    pop ax
    mov byte [bx + party_records + pc_rec.adjusted_stat4], al
    mov al, byte [bx + party_records + pc_rec.stat + 0x5]
    sub ah, ah
    mov cx, 6
    cwd
    idiv cx
    push ax
    mov ax, word [bp - 2]
    add ax, word [bp + 0xc]
    sub ax, word [bp + 0xe]
    cwd
    idiv word [bp + 0xc]
    mov cx, ax
    pop ax
    add ax, cx
    dec ax
    mov byte [bx + party_records + pc_rec.adjusted_stat5], al
    push word [bp + 6]
    mov ax, 1
    push ax
    mov al, byte [bx + party_records + pc_rec.adjusted_stat5]
    sub ah, ah
    push ax
    call clamp_between
    add sp, byte 6
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    pop ax
    mov byte [bx + party_records + pc_rec.adjusted_stat5], al
    mov al, byte [bx + party_records + pc_rec.stat + 0x5]
    sub ah, ah
    add ax, word [bp - 2]
    mov byte [bx + party_records + pc_rec.stat5_plus_power], al
    ret
