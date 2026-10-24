; auto-generated
api_idx_0004_MMTP:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov al, byte [bx + cell_key_grid + 0x133]
    sub ah, ah
    push ax
    mov al, byte [bx + cell_key_grid + 0x132]
    sub ah, ah
    mov cx, ax
    shl ax, 1
    mov cx, ax
    pop ax
    add ax, cx
    mov cx, 3
    cwd
    idiv cx
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    cmp ax, strict word 0xd
    jle short @..api_idx_0004_MMTP.l1
    inc word [bp - 0x0004]
@..api_idx_0004_MMTP.l1:
    cmp ax, strict word 0x10
    jle short @..api_idx_0004_MMTP.l2
    inc word [bp - 0x0004]
@..api_idx_0004_MMTP.l2:
    cmp byte [bx + member_state + 0x1], 5
    jne short @..api_idx_0004_MMTP.l3
    inc word [bp - 0x0004]
@..api_idx_0004_MMTP.l3:
    cmp byte [bx + member_state + 0x1], 6
    jne short @..api_idx_0004_MMTP.l4
    dec word [bp - 0x0004]
@..api_idx_0004_MMTP.l4:
    mov al, byte [bx + member_state + 0x3]
    sub ah, ah
    jmp near @..api_idx_0004_MMTP.l5
api_idx_0004_MMTP.jumptable_case1:
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case2:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + cell_key_grid + 0x11c], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case3:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + cell_key_grid + 0x11d], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case4:
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case5:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + cell_key_grid + 0x11e], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case6:
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case7:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + cell_key_grid + 0x11f], 2
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    add ax, strict word 4
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case8:
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case9:
    mov ax, 0x248
    imul word [bp + 0x4]
    mov bx, ax
    mov byte [bx + cell_key_grid + 0x11c], 1
    mov byte [bx + cell_key_grid + 0x11d], 1
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push ax
    push ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case10:
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp near @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case11:
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp short @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case12:
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp short @..api_idx_0004_MMTP.l6
api_idx_0004_MMTP.jumptable_case13:
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    push ax
    mov ax, word [bp - 0x0004]
    inc ax
    inc ax
    push ax
    push word [bp + 0x4]
    call loc_OIOJ
    add sp, byte 0x0e
    jmp short @..api_idx_0004_MMTP.l6
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
@..api_idx_0004_MMTP.l5:
    cmp ax, strict word 0xe
    jae short @..api_idx_0004_MMTP.l6
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0004_MMTP.jumptable1 - IMAGE_BASE + __zres_end]
@..api_idx_0004_MMTP.l6:
    ret
