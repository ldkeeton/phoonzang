; auto-generated
api_idx_0004_OVUO:
    mov ax, 0xfffc
    call aztec_csav
    mov al, byte [bp + 4]
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    pop ax
    mov byte [bx + api_idx_0004_OVUO.bss2], al
    mov al, byte [bp + 0x18]
    mov byte [bx + api_idx_0004_OVUO.bss3], al
    cmp word [bp + 4], strict word 0xfa
    jl short @..api_idx_0004_OVUO.l1
    jmp near @..api_idx_0004_OVUO.l13
@..api_idx_0004_OVUO.l1:
    mov ax, 0x15e
    imul word [bp + 4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    mov word [bp - 2], ax
    mov ax, 0x15e
    imul word [bp + 4]
    add ax, word [bp + 0xa]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_y]
    sub ah, ah
    mov word [bp - 4], ax
    cmp word [bp + 0x18], byte 0
    jg short @..api_idx_0004_OVUO.l2
    jmp near @..api_idx_0004_OVUO.l11
@..api_idx_0004_OVUO.l2:
    cmp word [bp + 0x1e], byte 0
    jg short @..api_idx_0004_OVUO.l3
    jmp near @..api_idx_0004_OVUO.l11
@..api_idx_0004_OVUO.l3:
    mov ax, 0x64
    sub ax, word [bp + 0x18]
    mov cx, 0x64
    cwd
    idiv cx
    mov ax, dx
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    pop ax
    mov byte [bx + api_idx_0004_OVUO.bss3], al
    cmp word [bp + 0x1e], byte 1
    je short @..api_idx_0004_OVUO.l4
    jmp near @..api_idx_0004_OVUO.l6
@..api_idx_0004_OVUO.l4:
    mov ax, word [dseg_03ae]
    sub ax, word [bp - 2]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 6]
    sub ax, cx
    mov word [bx + api_idx_0004_OVUO.bss4], ax
    cmp word [bp + 0x1a], byte 0
    je short @..api_idx_0004_OVUO.l5
    mov ax, 0x15e
    imul word [bp + 4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    mov al, byte [bx + api_idx_0004_OVUO.bss3]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx + api_idx_0004_OVUO.bss4], ax
@..api_idx_0004_OVUO.l5:
    mov ax, word [dseg_03dc]
    sub ax, word [bp - 4]
    imul word [bp + 0x18]
    add ax, strict word 0xffce
    mov cx, 0x64
    cwd
    idiv cx
    mov cx, ax
    mov ax, word [bp + 8]
    sub ax, cx
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0004_OVUO.bss5], ax
    jmp near @..api_idx_0004_OVUO.l10
@..api_idx_0004_OVUO.l6:
    cmp word [bp + 0x1e], byte 2
    je short @..api_idx_0004_OVUO.l7
    jmp near @..api_idx_0004_OVUO.l9
@..api_idx_0004_OVUO.l7:
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    mov al, byte [bx + api_idx_0004_OVUO.bss3]
    sub ah, ah
    mov cx, 0xa0
    sub cx, word [bp - 2]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 2]
    add ax, word [bp + 6]
    mov word [bx + api_idx_0004_OVUO.bss4], ax
    cmp word [bp + 0x1a], byte 0
    je short @..api_idx_0004_OVUO.l8
    mov ax, 0x15e
    imul word [bp + 4]
    mov cx, word [bp + 0xa]
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x1a]
    mov bx, ax
    mov al, byte [bx + slot_recs + slot_rec.glyph_x]
    sub ah, ah
    mov cx, ax
    mov ax, 0xa0
    sub ax, cx
    shl ax, 1
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    mov al, byte [bx + api_idx_0004_OVUO.bss3]
    sub ah, ah
    mov cx, ax
    pop ax
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    sub word [bx + api_idx_0004_OVUO.bss4], ax
@..api_idx_0004_OVUO.l8:
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    mov al, byte [bx + api_idx_0004_OVUO.bss3]
    sub ah, ah
    mov cx, 0x42
    sub cx, word [bp - 4]
    imul cx
    mov cx, 0x64
    cwd
    idiv cx
    add ax, word [bp - 4]
    add ax, word [bp + 8]
    mov word [bx + api_idx_0004_OVUO.bss5], ax
    jmp short @..api_idx_0004_OVUO.l10
@..api_idx_0004_OVUO.l9:
    cmp word [bp + 0x1e], byte 3
    jne short @..api_idx_0004_OVUO.l10
    mov ax, word [bp + 6]
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0004_OVUO.bss4], ax
    mov ax, word [bp + 8]
    mov word [bx + api_idx_0004_OVUO.bss5], ax
@..api_idx_0004_OVUO.l10:
    jmp short @..api_idx_0004_OVUO.l12
@..api_idx_0004_OVUO.l11:
    mov ax, word [bp - 2]
    add ax, word [bp + 6]
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0004_OVUO.bss4], ax
    mov ax, word [bp - 4]
    add ax, word [bp + 8]
    mov word [bx + api_idx_0004_OVUO.bss5], ax
@..api_idx_0004_OVUO.l12:
    jmp short @..api_idx_0004_OVUO.l14
@..api_idx_0004_OVUO.l13:
    mov ax, word [bp + 6]
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0004_OVUO.bss4], ax
    mov ax, word [bp + 8]
    mov word [bx + api_idx_0004_OVUO.bss5], ax
@..api_idx_0004_OVUO.l14:
    mov al, byte [bp + 0xa]
    push ax
    mov ax, 0x11
    imul word [api_idx_0004_OVUO.bss1]
    mov bx, ax
    pop ax
    mov byte [bx + api_idx_0004_OVUO.bss6], al
    mov al, byte [bp + 0xc]
    mov byte [bx + api_idx_0004_OVUO.bss7], al
    mov al, byte [bp + 0xe]
    mov byte [bx + api_idx_0004_OVUO.bss8], al
    mov al, byte [bp + 0x10]
    mov byte [bx + api_idx_0004_OVUO.bss9], al
    mov ax, word [bp + 0x12]
    mov word [bx + api_idx_0004_OVUO.bss10], ax
    mov ax, word [bp + 0x14]
    mov word [bx + api_idx_0004_OVUO.bss11], ax
    mov al, byte [bp + 0x16]
    mov byte [bx + api_idx_0004_OVUO.bss12], al
    mov al, byte [bp + 0x1a]
    mov byte [bx + api_idx_0004_OVUO.bss13], al
    mov al, byte [bp + 0x1c]
    mov byte [bx + api_idx_0004_OVUO.bss14], al
    inc word [api_idx_0004_OVUO.bss1]
    mov ax, word [api_idx_0004_OVUO.bss1]
    cmp ax, strict word 0x78
    jl short @..api_idx_0004_OVUO.l16
@..api_idx_0004_OVUO.l15:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp short @..api_idx_0004_OVUO.l15
@..api_idx_0004_OVUO.l16:
    ret
