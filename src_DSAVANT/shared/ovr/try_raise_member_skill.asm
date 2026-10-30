; auto-generated
try_raise_member_skill:
    mov ax, 0
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 4]
    add ax, word [bp + 6]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.flag], 0x64
    jae short .return1
    mov al, byte [bx + party_records + pc_rec.flag]
    sub ah, ah
    push ax
    call random_below
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.power_cap]
    imul word [bp + 8]
    mov cx, ax
    pop ax
    sub ax, cx
    jg short .return1
    add bx, word [bp + 6]
    inc byte [bx + party_records + pc_rec.flag]
.return1:
    ret
