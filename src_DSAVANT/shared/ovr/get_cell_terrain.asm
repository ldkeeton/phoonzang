; auto-generated
get_cell_terrain:
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
    je short jumptable_1556_case_1
    mov ax, word [game_state_arg]
    jmp short .forward2
jumptable_1556_case_14:
    cmp word [party_map_piece], byte 0xc
    jle short get_cell_terrain.forward1
    mov word [bp - 4], 1
get_cell_terrain.forward1:
    jmp short jumptable_1556_case_1
jumptable_1556_case_0:
    mov word [bp - 4], 1
    jmp short jumptable_1556_case_1
jumptable_1556:
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_14 - IMAGE_BASE + __zres_end
    dw jumptable_1556_case_0 - IMAGE_BASE + __zres_end
get_cell_terrain.forward2:
    sub ax, strict word 0xf
    cmp ax, strict word 0x10
    jae short jumptable_1556_case_1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_1556 - IMAGE_BASE + __zres_end]
jumptable_1556_case_1:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short get_cell_terrain.forward5
    mov ax, word [game_state_arg]
    jmp short get_cell_terrain.forward4
get_cell_terrain.back1:
    mov word [bp - 4], 1
    jmp short get_cell_terrain.forward5
get_cell_terrain.back2:
    mov word [bp - 4], 2
    jmp short get_cell_terrain.forward5
get_cell_terrain.forward4:
    cmp ax, strict word 8
    je short get_cell_terrain.back1
    cmp ax, strict word 9
    je short get_cell_terrain.back1
    cmp ax, strict word 0xa
    je short get_cell_terrain.back1
    cmp ax, strict word 0xb
    je short get_cell_terrain.back1
    cmp ax, strict word 0xc
    je short get_cell_terrain.back1
    cmp ax, strict word 0x1b
    je short get_cell_terrain.back2
get_cell_terrain.forward5:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x930
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short get_cell_terrain.forward7
    mov ax, word [game_state_arg]
    jmp short get_cell_terrain.forward6
get_cell_terrain.back3:
    mov word [bp - 4], 3
    jmp short get_cell_terrain.forward7
get_cell_terrain.back4:
    jmp short get_cell_terrain.forward7
get_cell_terrain.back5:
    mov word [bp - 4], 1
    jmp short get_cell_terrain.forward7
get_cell_terrain.back6:
    mov word [bp - 4], 2
    jmp short get_cell_terrain.forward7
get_cell_terrain.back7:
    mov word [bp - 4], 4
    jmp short get_cell_terrain.forward7
get_cell_terrain.forward6:
    cmp ax, strict word 0
    je short get_cell_terrain.back3
    cmp ax, strict word 0xa
    je short get_cell_terrain.back4
    cmp ax, strict word 0xe
    je short get_cell_terrain.back5
    cmp ax, strict word 0x13
    je short get_cell_terrain.back5
    cmp ax, strict word 0x17
    je short get_cell_terrain.back6
    cmp ax, strict word 0x19
    je short get_cell_terrain.back4
    cmp ax, strict word 0x1f
    je short get_cell_terrain.back5
    jmp short get_cell_terrain.back7
get_cell_terrain.forward7:
    mov ax, word [bp - 4]
    ret
