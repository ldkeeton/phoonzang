; auto-generated
api_idx_0004_SMLK:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, word [party_map_piece]
    mov cx, 6
    shl ax, cl
    mov cx, word [party_cell_y]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [party_cell_x]
    mov word [bp - 2], ax
    mov word [bp - 4], 0
    push ax
    mov ax, word [maze_data]
    add ax, 0x9b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short api_idx_0004_SMLK.jumptable_case1
    mov ax, word [game_state_arg]
    jmp short .forward2
api_idx_0004_SMLK.jumptable_case2:
    cmp word [party_map_piece], byte 0xc
    jle short api_idx_0004_SMLK.forward1
    mov word [bp - 4], 1
api_idx_0004_SMLK.forward1:
    jmp short api_idx_0004_SMLK.jumptable_case1
api_idx_0004_SMLK.jumptable_case3:
    mov word [bp - 4], 1
    jmp short api_idx_0004_SMLK.jumptable_case1
api_idx_0004_SMLK.jumptable1:
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_SMLK.jumptable_case3 - IMAGE_BASE + __zres_end
api_idx_0004_SMLK.forward2:
    sub ax, strict word 0xf
    cmp ax, strict word 0x10
    jae short api_idx_0004_SMLK.jumptable_case1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0004_SMLK.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0004_SMLK.jumptable_case1:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short api_idx_0004_SMLK.forward5
    mov ax, word [game_state_arg]
    jmp short api_idx_0004_SMLK.forward4
api_idx_0004_SMLK.back1:
    mov word [bp - 4], 1
    jmp short api_idx_0004_SMLK.forward5
api_idx_0004_SMLK.back2:
    mov word [bp - 4], 2
    jmp short api_idx_0004_SMLK.forward5
api_idx_0004_SMLK.forward4:
    cmp ax, strict word 8
    je short api_idx_0004_SMLK.back1
    cmp ax, strict word 9
    je short api_idx_0004_SMLK.back1
    cmp ax, strict word 0xa
    je short api_idx_0004_SMLK.back1
    cmp ax, strict word 0xb
    je short api_idx_0004_SMLK.back1
    cmp ax, strict word 0xc
    je short api_idx_0004_SMLK.back1
    cmp ax, strict word 0x1b
    je short api_idx_0004_SMLK.back2
api_idx_0004_SMLK.forward5:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x930
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short api_idx_0004_SMLK.forward7
    mov ax, word [game_state_arg]
    jmp short api_idx_0004_SMLK.forward6
api_idx_0004_SMLK.back3:
    mov word [bp - 4], 3
    jmp short api_idx_0004_SMLK.forward7
api_idx_0004_SMLK.back4:
    jmp short api_idx_0004_SMLK.forward7
api_idx_0004_SMLK.back5:
    mov word [bp - 4], 1
    jmp short api_idx_0004_SMLK.forward7
api_idx_0004_SMLK.back6:
    mov word [bp - 4], 2
    jmp short api_idx_0004_SMLK.forward7
api_idx_0004_SMLK.back7:
    mov word [bp - 4], 4
    jmp short api_idx_0004_SMLK.forward7
api_idx_0004_SMLK.forward6:
    cmp ax, strict word 0
    je short api_idx_0004_SMLK.back3
    cmp ax, strict word 0xa
    je short api_idx_0004_SMLK.back4
    cmp ax, strict word 0xe
    je short api_idx_0004_SMLK.back5
    cmp ax, strict word 0x13
    je short api_idx_0004_SMLK.back5
    cmp ax, strict word 0x17
    je short api_idx_0004_SMLK.back6
    cmp ax, strict word 0x19
    je short api_idx_0004_SMLK.back4
    cmp ax, strict word 0x1f
    je short api_idx_0004_SMLK.back5
    jmp short api_idx_0004_SMLK.back7
api_idx_0004_SMLK.forward7:
    mov ax, word [bp - 4]
    ret
