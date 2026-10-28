; auto-generated
api_idx_0012_PGSL:
    mov ax, 0xffee
    call aztec_csav
    mov word [bp - 0xe], 0
    mov word [bp - 0xc], 0
    mov word [bp - 0xa], 0
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.adjusted_stat4]
    sub ah, ah
    mov word [bp - 8], ax
    mov al, byte [bx + party_records + pc_rec.adjusted_stat5]
    sub ah, ah
    mov word [bp - 6], ax
    mov word [bp - 4], 0
    mov word [bp - 2], 9
    mov ax, word [bx + party_records + pc_rec.power_total]
    mov bx, 0x64
    imul bx
    push ax
    push dx
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.f_0022]
    cwd
    mov cx, ax
    mov bx, dx
    pop dx
    pop ax
    call aztec_ldv
    mov word [bp - 0x10], dx
    mov word [bp - 0x12], ax
    cmp dx, byte 0
    jg short .forward1
    jne short .forward2
    cmp ax, strict word 0x32
    jbe short .forward2
.forward1:
    jmp short .forward3
.forward2:
    jmp near .forward17
.forward3:
    cmp dx, byte 0
    jg short .forward4
    jne short .forward5
    cmp ax, strict word 0x42
    jbe short .forward5
.forward4:
    jmp short .forward8
.forward5:
    mov word [bp - 0xc], 5
    mov word [bp - 0xa], 0xa
    cmp word [bp - 8], byte 3
    jle short .forward6
    mov word [bp - 8], 3
.forward6:
    cmp word [bp - 6], byte 3
    jle short .forward7
    mov word [bp - 6], 3
.forward7:
    jmp near .forward17
.forward8:
    cmp dx, byte 0
    jg short .forward9
    jne short .forward10
    cmp ax, strict word 0x4b
    jbe short .forward10
.forward9:
    jmp short .forward13
.forward10:
    mov word [bp - 0xe], 1
    mov word [bp - 0xc], 0xa
    mov word [bp - 0xa], 0x14
    cmp word [bp - 8], byte 2
    jle short .forward11
    mov word [bp - 8], 2
.forward11:
    cmp word [bp - 6], byte 2
    jle short .forward12
    mov word [bp - 6], 2
.forward12:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2]
    mov cx, 0x64
    cwd
    idiv cx
    mov word [bp - 4], ax
    mov word [bp - 2], 0x83
    jmp short .forward17
.forward13:
    cmp word [bp - 0x10], byte 0
    jg short .forward14
    jne short .forward15
    cmp word [bp - 0x12], byte 0x5a
    jbe short .forward15
.forward14:
    jmp short .forward16
.forward15:
    mov word [bp - 0xe], 2
    mov word [bp - 0xc], 0x14
    mov word [bp - 0xa], 0x28
    mov word [bp - 8], 1
    mov word [bp - 6], 1
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2]
    mov cx, 0x32
    cwd
    idiv cx
    mov word [bp - 4], ax
    mov word [bp - 2], 0x54
    jmp short .forward17
.forward16:
    mov word [bp - 0xe], 4
    mov word [bp - 0xc], 0x28
    mov word [bp - 0xa], 0x50
    mov word [bp - 8], 1
    mov word [bp - 6], 1
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2]
    mov cx, 0x19
    cwd
    idiv cx
    mov word [bp - 4], ax
    mov word [bp - 2], 0x16
.forward17:
    lea si, word [bp - 0xe]
    mov di, window_record
    mov cx, ds
    mov es, cx
    mov cx, 7
    rep movsw
    mov ax, window_record
    ret
