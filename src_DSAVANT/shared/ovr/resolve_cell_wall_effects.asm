; auto-generated
resolve_cell_wall_effects:
    mov ax, 0xfff8
    call $csav
    cmp word [bp + 0xe], byte 0
    jne short .forward1
    jmp near .forward4
.forward1:
    mov ax, 0
    push ax
    push word [bp + 0xe]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 8]
    push ax
    lea ax, word [bp + 6]
    push ax
    lea ax, word [bp + 4]
    push ax
    call offset_relative_map_position
    add sp, byte 0xe
    test ax, ax
    je short .forward4
    mov ax, word [boundary_wall_variant]
    jmp short .forward3
jumptable_3000_case_0:
    mov ax, 2
    ret
jumptable_3000_case_3:
    cmp word [boundary_wall_open], byte 0
    je short jumptable_3000_case_1
    mov ax, 0
    ret
jumptable_3000_case_1:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 1
    mov ax, 4
    ret
jumptable_3000_case_5:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 3
    mov ax, 0
    ret
jumptable_3000:
    dw jumptable_3000_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3000_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3000_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3000_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_3000_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3000_case_5 - IMAGE_BASE + __zres_end
resolve_cell_wall_effects.forward3:
    cmp ax, strict word 6
    jae short resolve_cell_wall_effects.forward4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3000 - IMAGE_BASE + __zres_end]
resolve_cell_wall_effects.forward4:
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 8]
    mov word [bp - 2], ax
    push ax
    mov ax, word [maze_data]
    add ax, 0x9b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short resolve_cell_wall_effects.forward6
    mov ax, word [boundary_wall_variant]
    jmp short resolve_cell_wall_effects.forward5
jumptable_3082_case_0:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 3
    jmp short resolve_cell_wall_effects.forward6
jumptable_3082_case_1:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 1
    jmp short resolve_cell_wall_effects.forward6
jumptable_3082_case_2:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 2
    jmp short resolve_cell_wall_effects.forward6
jumptable_3082:
    dw jumptable_3082_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3082_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3082_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3082_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3082_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3082_case_1 - IMAGE_BASE + __zres_end
resolve_cell_wall_effects.forward5:
    cmp ax, strict word 6
    jae short resolve_cell_wall_effects.forward6
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3082 - IMAGE_BASE + __zres_end]
resolve_cell_wall_effects.forward6:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    jne short resolve_cell_wall_effects.forward7
    jmp near resolve_cell_wall_effects.forward10
resolve_cell_wall_effects.forward7:
    mov ax, word [boundary_wall_variant]
    jmp short resolve_cell_wall_effects.forward9
jumptable_3111_case_1:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 2
    jmp short resolve_cell_wall_effects.forward10
jumptable_3111_case_2:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + resolve_cell_wall_effects_bss703], 1
    jmp short resolve_cell_wall_effects.forward10
jumptable_3111_case_5:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 3
    jmp short resolve_cell_wall_effects.forward10
jumptable_3111_case_0:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + resolve_cell_wall_effects_bss777], 1
    cmp word [view_scan_depth], byte 4
    jge short resolve_cell_wall_effects.forward8
    mov byte [bx + resolve_cell_wall_effects_bss798], 1
resolve_cell_wall_effects.forward8:
    mov ax, 0
    ret
jumptable_3111:
    dw jumptable_3111_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3111_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3111_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3111_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3111_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3111_case_5 - IMAGE_BASE + __zres_end
resolve_cell_wall_effects.forward9:
    cmp ax, strict word 6
    jae short resolve_cell_wall_effects.forward10
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3111 - IMAGE_BASE + __zres_end]
resolve_cell_wall_effects.forward10:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x930
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short resolve_cell_wall_effects.forward13
    mov ax, word [current_level]
    jmp short resolve_cell_wall_effects.forward12
resolve_cell_wall_effects.back1:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 3
    jmp short resolve_cell_wall_effects.forward13
resolve_cell_wall_effects.back2:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + resolve_cell_wall_effects_bss777], 2
    cmp word [view_scan_depth], byte 4
    jge short resolve_cell_wall_effects.forward11
    mov byte [bx + resolve_cell_wall_effects_bss798], 2
resolve_cell_wall_effects.forward11:
    jmp short resolve_cell_wall_effects.forward13
resolve_cell_wall_effects.forward12:
    cmp ax, strict word 0xa
    je short resolve_cell_wall_effects.back2
    cmp ax, strict word 0xe
    je short resolve_cell_wall_effects.back1
    cmp ax, strict word 0x13
    je short resolve_cell_wall_effects.back1
    cmp ax, strict word 0x19
    je short resolve_cell_wall_effects.back2
    cmp ax, strict word 0x1f
    je short resolve_cell_wall_effects.back1
resolve_cell_wall_effects.forward13:
    mov ax, word [party_facing]
    jmp short resolve_cell_wall_effects.forward14
resolve_cell_wall_effects.back3:
    mov ax, 4
    push ax
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 4], ax
    jmp short resolve_cell_wall_effects.forward15
resolve_cell_wall_effects.back4:
    mov ax, 4
    push ax
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 4], ax
    jmp short resolve_cell_wall_effects.forward15
resolve_cell_wall_effects.back5:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call get_north_cell_wall
    add sp, byte 0xa
    mov word [bp - 4], ax
    jmp short resolve_cell_wall_effects.forward15
resolve_cell_wall_effects.back6:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call get_west_cell_wall
    add sp, byte 0xa
    mov word [bp - 4], ax
    jmp short resolve_cell_wall_effects.forward15
resolve_cell_wall_effects.forward14:
    cmp ax, strict word 0
    je short resolve_cell_wall_effects.back3
    cmp ax, strict word 1
    je short resolve_cell_wall_effects.back4
    cmp ax, strict word 2
    je short resolve_cell_wall_effects.back5
    cmp ax, strict word 3
    je short resolve_cell_wall_effects.back6
resolve_cell_wall_effects.forward15:
    lea ax, word [bp - 8]
    push ax
    lea ax, word [bp - 6]
    push ax
    push word [bp - 2]
    call read_cell_kind_direction
    add sp, byte 6
    mov ax, word [party_facing]
    cmp ax, word [bp - 8]
    je short resolve_cell_wall_effects.forward17
    mov ax, word [bp - 6]
    cmp ax, strict word 7
    jl short resolve_cell_wall_effects.forward16
    cmp ax, strict word 9
    jle short resolve_cell_wall_effects.forward17
resolve_cell_wall_effects.forward16:
    cmp ax, strict word 0xb
    jg short resolve_cell_wall_effects.forward17
    jmp near jumptable_3356_case_0
resolve_cell_wall_effects.forward17:
    mov ax, word [bp - 6]
    jmp near resolve_cell_wall_effects.forward21
jumptable_3356_case_1:
    mov word [bp - 4], 8
    jmp near jumptable_3356_case_0
jumptable_3356_case_2:
    mov word [bp - 4], 9
    jmp near jumptable_3356_case_0
jumptable_3356_case_3:
    mov word [bp - 4], 0xa
    jmp near jumptable_3356_case_0
jumptable_3356_case_4:
    mov word [bp - 4], 0xb
    jmp near jumptable_3356_case_0
jumptable_3356_case_5:
    cmp word [view_scan_depth], byte 0
    jne short resolve_cell_wall_effects.forward18
    mov word [bp - 4], 0xc
resolve_cell_wall_effects.forward18:
    jmp near jumptable_3356_case_0
jumptable_3356_case_6:
    cmp word [view_scan_depth], byte 0
    jne short resolve_cell_wall_effects.forward19
    mov word [bp - 4], 0xd
resolve_cell_wall_effects.forward19:
    jmp near jumptable_3356_case_0
jumptable_3356_case_7:
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, 5
    imul word [view_scan_depth]
    mov cx, ax
    add ax, word [bp + 0xe]
    mov bx, ax
    pop ax
    mov byte [bx + resolve_cell_wall_effects_bss1636], al
    jmp near jumptable_3356_case_0
jumptable_3356_case_8:
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, 0xa
    imul word [view_scan_depth]
    mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + resolve_cell_wall_effects_bss1699], ax
    jmp near jumptable_3356_case_0
jumptable_3356_case_9:
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, 0xa
    imul word [view_scan_depth]
    mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + resolve_cell_wall_effects_bss1762], ax
    jmp near jumptable_3356_case_0
jumptable_3356_case_10:
    mov word [bp - 4], 0xe
    jmp near jumptable_3356_case_0
jumptable_3356_case_11:
    mov word [bp - 4], 0xf
    jmp near jumptable_3356_case_0
jumptable_3356_case_12:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + resolve_cell_wall_effects_bss1826], 1
    jmp near jumptable_3356_case_0
jumptable_3356_case_13:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + draw_first_person_maze_view_bss2757], 3
    jmp short jumptable_3356_case_0
jumptable_3356_case_14:
    mov ax, 0xa
    imul word [view_scan_depth]
    mov cx, word [bp + 0xe]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx + resolve_cell_wall_effects_bss1906], 1
jumptable_3356_case_15:
    cmp word [bp - 6], byte 0xe
    je short resolve_cell_wall_effects.forward20
    mov ax, 0xa
    imul word [view_scan_depth]
    mov cx, word [bp + 0xe]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx + resolve_cell_wall_effects_bss1961], 1
resolve_cell_wall_effects.forward20:
    jmp short jumptable_3356_case_0
jumptable_3356_case_16:
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + resolve_cell_wall_effects_bss1826], 2
    jmp short jumptable_3356_case_0
jumptable_3356:
    dw jumptable_3356_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_3 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_6 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_7 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_9 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_10 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_11 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_12 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_13 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_14 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_15 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_16 - IMAGE_BASE + __zres_end
    dw jumptable_3356_case_14 - IMAGE_BASE + __zres_end
resolve_cell_wall_effects.forward21:
    cmp ax, strict word 0x12
    jae short jumptable_3356_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3356 - IMAGE_BASE + __zres_end]
jumptable_3356_case_0:
    mov ax, word [current_level]
    cmp ax, word [saved_level]
    jne short resolve_cell_wall_effects.forward23
    mov ax, word [bp + 0xc]
    cmp ax, word [saved_map_piece]
    jne short resolve_cell_wall_effects.forward23
    mov ax, word [bp + 8]
    cmp ax, word [saved_cell_x]
    jne short resolve_cell_wall_effects.forward23
    mov ax, word [bp + 0xa]
    cmp ax, word [saved_cell_y]
    jne short resolve_cell_wall_effects.forward23
    mov ax, 5
    imul word [view_scan_depth]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + resolve_cell_wall_effects_bss1826], 3
resolve_cell_wall_effects.forward23:
    mov ax, word [bp - 4]
    ret
