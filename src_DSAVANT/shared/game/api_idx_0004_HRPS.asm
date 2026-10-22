; auto-generated
api_idx_0004_HRPS:
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
    mov word [bp - 0x0002], ax
    mov word [bp - 0x0004], 0
    push ax
    mov ax, word [maze_data]
    add ax, 0x9b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_HRPS.l3
    mov ax, word [game_state_arg]
    jmp short @..api_idx_0004_HRPS.l2
api_idx_0004_HRPS.jumptable_case1:
    cmp word [party_map_piece], byte 0x0c
    jle short @..api_idx_0004_HRPS.l1
    mov word [bp - 0x0004], 1
@..api_idx_0004_HRPS.l1:
    jmp short @..api_idx_0004_HRPS.l3
api_idx_0004_HRPS.jumptable_case2:
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_HRPS.l3
api_idx_0004_HRPS.jumptable1:
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0004_HRPS.jumptable_case2 - IMAGE_BASE + __zres_end
@..api_idx_0004_HRPS.l2:
    sub ax, strict word 0xf
    cmp ax, strict word 0x10
    jae short @..api_idx_0004_HRPS.l3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0004_HRPS.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0004_HRPS.jumptable_case3:
@..api_idx_0004_HRPS.l3:
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_HRPS.l7
    mov ax, word [game_state_arg]
    jmp short @..api_idx_0004_HRPS.l6
@..api_idx_0004_HRPS.l4:
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_HRPS.l7
@..api_idx_0004_HRPS.l5:
    mov word [bp - 0x0004], 2
    jmp short @..api_idx_0004_HRPS.l7
@..api_idx_0004_HRPS.l6:
    cmp ax, strict word 8
    je short @..api_idx_0004_HRPS.l4
    cmp ax, strict word 9
    je short @..api_idx_0004_HRPS.l4
    cmp ax, strict word 0xa
    je short @..api_idx_0004_HRPS.l4
    cmp ax, strict word 0xb
    je short @..api_idx_0004_HRPS.l4
    cmp ax, strict word 0xc
    je short @..api_idx_0004_HRPS.l4
    cmp ax, strict word 0x1b
    je short @..api_idx_0004_HRPS.l5
@..api_idx_0004_HRPS.l7:
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x930
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0004_HRPS.l14
    mov ax, word [game_state_arg]
    jmp short @..api_idx_0004_HRPS.l13
@..api_idx_0004_HRPS.l8:
    mov word [bp - 0x0004], 3
    jmp short @..api_idx_0004_HRPS.l14
@..api_idx_0004_HRPS.l9:
    jmp short @..api_idx_0004_HRPS.l14
@..api_idx_0004_HRPS.l10:
    mov word [bp - 0x0004], 1
    jmp short @..api_idx_0004_HRPS.l14
@..api_idx_0004_HRPS.l11:
    mov word [bp - 0x0004], 2
    jmp short @..api_idx_0004_HRPS.l14
@..api_idx_0004_HRPS.l12:
    mov word [bp - 0x0004], 4
    jmp short @..api_idx_0004_HRPS.l14
@..api_idx_0004_HRPS.l13:
    cmp ax, strict word 0
    je short @..api_idx_0004_HRPS.l8
    cmp ax, strict word 0xa
    je short @..api_idx_0004_HRPS.l9
    cmp ax, strict word 0xe
    je short @..api_idx_0004_HRPS.l10
    cmp ax, strict word 0x13
    je short @..api_idx_0004_HRPS.l10
    cmp ax, strict word 0x17
    je short @..api_idx_0004_HRPS.l11
    cmp ax, strict word 0x19
    je short @..api_idx_0004_HRPS.l9
    cmp ax, strict word 0x1f
    je short @..api_idx_0004_HRPS.l10
    jmp short @..api_idx_0004_HRPS.l12
@..api_idx_0004_HRPS.l14:
    mov ax, word [bp - 0x0004]
    ret
