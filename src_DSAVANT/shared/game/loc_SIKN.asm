; auto-generated
loc_SIKN:
    mov ax, 0
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + cell_key_grid + 0x138], 0x64
    jae short @..loc_SIKN.l1
    mov al, byte [bx + cell_key_grid + 0x138]
    sub ah, ah
    push ax
    call random_below
    pop cx
    push ax
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov ax, word [bx + pc_spell_power_cap]
    imul word [bp + 0x8]
    mov cx, ax
    pop ax
    sub ax, cx
    jg short @..loc_SIKN.l1
    add bx, word [bp + 0x6]
    inc byte [bx + cell_key_grid + 0x138]
@..loc_SIKN.l1:
    ret
