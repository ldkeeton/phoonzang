; auto-generated
api_idx_0004_MMTP:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov al, byte [bx + party_records + pc_rec.stat + 0x3]
    sub ah, ah
    push ax
    mov al, byte [bx + party_records + pc_rec.stat + 0x2]
    sub ah, ah
    mov cx, ax
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 2], ax
    mov word [bp - 4], 0
    cmp ax, strict word 0xd
    jle short .forward1
    inc word [bp - 4]
.forward1:
    cmp ax, strict word 0x10
    jle short .forward2
    inc word [bp - 4]
.forward2:
    cmp byte [bx + party_records + pc_rec.glyph_set], 5
    jne short .forward3
    inc word [bp - 4]
.forward3:
    cmp byte [bx + party_records + pc_rec.glyph_set], 6
    jne short .forward4
    dec word [bp - 4]
.forward4:
    mov al, byte [bx + party_records + pc_rec.profession]
    sub ah, ah
    jmp near .forward5
api_idx_0004_MMTP.jumptable_case1:
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case2:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.f_015c], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case3:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.f_015d], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case4:
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case5:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.f_015e], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case6:
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case7:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.f_015f], 2
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    add ax, strict word 4
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case8:
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case9:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.f_015c], 1
    mov byte [bx + party_records + pc_rec.f_015d], 1
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case10:
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp near api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case11:
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp short api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case12:
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp short api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable_case13:
    mov ax, word [bp - 4]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    push ax
    mov ax, word [bp - 4]
    inc ax
    inc ax
    push ax
    push word [bp + 4]
    call loc_OIOJ
    add sp, byte 0xe
    jmp short api_idx_0004_MMTP.return1
api_idx_0004_MMTP.jumptable1:
    dw api_idx_0004_MMTP.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case7 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case10 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case12 - IMAGE_BASE + __zres_end
    dw api_idx_0004_MMTP.jumptable_case13 - IMAGE_BASE + __zres_end
api_idx_0004_MMTP.forward5:
    cmp ax, strict word 0xe
    jae short api_idx_0004_MMTP.return1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0004_MMTP.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0004_MMTP.return1:
    ret
