; auto-generated
get_relative_cell_wall:
    mov ax, 0xfff8
    call aztec_csav
    cmp word [bp + 0x10], byte 0
    je short .forward3
    mov ax, 0
    push ax
    push word [bp + 0x10]
    lea ax, word [bp + 0xe]
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 8]
    push ax
    lea ax, word [bp + 6]
    push ax
    call offset_relative_map_position
    add sp, byte 0xe
    test ax, ax
    je short .forward3
    mov ax, word [boundary_wall_variant]
    jmp short .forward2
jumptable_340d_case_0:
    mov ax, 2
    ret
jumptable_340d_case_3:
    cmp word [boundary_wall_open], byte 0
    je short jumptable_340d_case_1
    mov ax, 0
    ret
jumptable_340d_case_1:
    mov ax, 4
    ret
jumptable_340d_case_5:
    mov ax, 0
    ret
jumptable_340d:
    dw jumptable_340d_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_340d_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_340d_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_340d_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_340d_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_340d_case_5 - IMAGE_BASE + __zres_end
get_relative_cell_wall.forward2:
    cmp ax, strict word 6
    jae short get_relative_cell_wall.forward3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_340d - IMAGE_BASE + __zres_end]
get_relative_cell_wall.forward3:
    mov ax, word [bp + 0xe]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 2], ax
    push ax
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short get_relative_cell_wall.forward5
    mov ax, word [boundary_wall_variant]
    jmp short get_relative_cell_wall.forward4
get_relative_cell_wall.back1:
    mov ax, 0
    ret
get_relative_cell_wall.forward4:
    cmp ax, strict word 0
    je short get_relative_cell_wall.back1
    cmp ax, strict word 3
    je short get_relative_cell_wall.back1
get_relative_cell_wall.forward5:
    mov ax, word [party_facing]
    add ax, word [bp + 4]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    jmp short get_relative_cell_wall.forward6
get_relative_cell_wall.back2:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    call get_west_cell_wall
    add sp, byte 0xa
    mov word [bp - 4], ax
    jmp short get_relative_cell_wall.forward7
get_relative_cell_wall.back3:
    mov ax, 4
    push ax
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 4], ax
    jmp short get_relative_cell_wall.forward7
get_relative_cell_wall.back4:
    mov ax, 4
    push ax
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 4], ax
    jmp short get_relative_cell_wall.forward7
get_relative_cell_wall.back5:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    call get_north_cell_wall
    add sp, byte 0xa
    mov word [bp - 4], ax
    jmp short get_relative_cell_wall.forward7
get_relative_cell_wall.forward6:
    cmp ax, strict word 0
    je short get_relative_cell_wall.back2
    cmp ax, strict word 1
    je short get_relative_cell_wall.back3
    cmp ax, strict word 2
    je short get_relative_cell_wall.back4
    cmp ax, strict word 3
    je short get_relative_cell_wall.back5
get_relative_cell_wall.forward7:
    lea ax, word [bp - 8]
    push ax
    lea ax, word [bp - 6]
    push ax
    push word [bp - 2]
    call read_cell_kind_direction
    add sp, byte 6
    mov ax, word [bp - 8]
    add ax, word [bp + 4]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 8], dx
    cmp dx, word [party_facing]
    je short get_relative_cell_wall.forward8
    jmp near jumptable_3563_case_0
get_relative_cell_wall.forward8:
    mov ax, word [bp - 6]
    jmp short get_relative_cell_wall.forward11
jumptable_3563_case_1:
    mov word [bp - 4], 8
    jmp short jumptable_3563_case_0
jumptable_3563_case_2:
    mov word [bp - 4], 9
    jmp short jumptable_3563_case_0
jumptable_3563_case_3:
    mov word [bp - 4], 0xa
    jmp short jumptable_3563_case_0
jumptable_3563_case_4:
    mov word [bp - 4], 0xb
    jmp short jumptable_3563_case_0
jumptable_3563_case_5:
    cmp word [view_scan_depth], byte 0
    jne short get_relative_cell_wall.forward9
    mov word [bp - 4], 0xc
get_relative_cell_wall.forward9:
    jmp short jumptable_3563_case_0
jumptable_3563_case_6:
    cmp word [view_scan_depth], byte 0
    jne short get_relative_cell_wall.forward10
    mov word [bp - 4], 0xd
get_relative_cell_wall.forward10:
    jmp short jumptable_3563_case_0
jumptable_3563_case_10:
    mov word [bp - 4], 0xe
    jmp short jumptable_3563_case_0
jumptable_3563_case_11:
    mov word [bp - 4], 0xf
    jmp short jumptable_3563_case_0
jumptable_3563:
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_6 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_10 - IMAGE_BASE + __zres_end
    dw jumptable_3563_case_11 - IMAGE_BASE + __zres_end
get_relative_cell_wall.forward11:
    cmp ax, strict word 0xc
    jae short jumptable_3563_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3563 - IMAGE_BASE + __zres_end]
jumptable_3563_case_0:
    mov ax, word [bp - 4]
    ret
