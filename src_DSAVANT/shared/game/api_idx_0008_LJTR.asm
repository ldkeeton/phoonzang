; auto-generated
api_idx_0008_LJTR:
    mov ax, 0xfff8
    call aztec_csav
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
api_idx_0008_LJTR.jumptable_case1:
    mov ax, 2
    ret
api_idx_0008_LJTR.jumptable_case2:
    cmp word [boundary_wall_open], byte 0
    je short api_idx_0008_LJTR.jumptable_case3
    mov ax, 0
    ret
api_idx_0008_LJTR.jumptable_case3:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 1
    mov ax, 4
    ret
api_idx_0008_LJTR.jumptable_case4:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 3
    mov ax, 0
    ret
api_idx_0008_LJTR.jumptable1:
    dw api_idx_0008_LJTR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case4 - IMAGE_BASE + __zres_end
api_idx_0008_LJTR.forward3:
    cmp ax, strict word 6
    jae short api_idx_0008_LJTR.forward4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0008_LJTR.forward4:
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
    je short api_idx_0008_LJTR.forward6
    mov ax, word [boundary_wall_variant]
    jmp short api_idx_0008_LJTR.forward5
api_idx_0008_LJTR.jumptable_case5:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 3
    jmp short api_idx_0008_LJTR.forward6
api_idx_0008_LJTR.jumptable_case6:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 1
    jmp short api_idx_0008_LJTR.forward6
api_idx_0008_LJTR.jumptable_case7:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 2
    jmp short api_idx_0008_LJTR.forward6
api_idx_0008_LJTR.jumptable2:
    dw api_idx_0008_LJTR.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case7 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case6 - IMAGE_BASE + __zres_end
api_idx_0008_LJTR.forward5:
    cmp ax, strict word 6
    jae short api_idx_0008_LJTR.forward6
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable2 - IMAGE_BASE + __zres_end]
api_idx_0008_LJTR.forward6:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    jne short api_idx_0008_LJTR.forward7
    jmp near api_idx_0008_LJTR.forward10
api_idx_0008_LJTR.forward7:
    mov ax, word [boundary_wall_variant]
    jmp short api_idx_0008_LJTR.forward9
api_idx_0008_LJTR.jumptable_case8:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 2
    jmp short api_idx_0008_LJTR.forward10
api_idx_0008_LJTR.jumptable_case9:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss2], 1
    jmp short api_idx_0008_LJTR.forward10
api_idx_0008_LJTR.jumptable_case10:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 3
    jmp short api_idx_0008_LJTR.forward10
api_idx_0008_LJTR.jumptable_case11:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss3], 1
    cmp word [cell_wall_override_disabled], byte 4
    jge short api_idx_0008_LJTR.forward8
    mov byte [bx + api_idx_0008_LJTR.bss4], 1
api_idx_0008_LJTR.forward8:
    mov ax, 0
    ret
api_idx_0008_LJTR.jumptable3:
    dw api_idx_0008_LJTR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case10 - IMAGE_BASE + __zres_end
api_idx_0008_LJTR.forward9:
    cmp ax, strict word 6
    jae short api_idx_0008_LJTR.forward10
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable3 - IMAGE_BASE + __zres_end]
api_idx_0008_LJTR.forward10:
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x930
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short api_idx_0008_LJTR.forward13
    mov ax, word [game_state_arg]
    jmp short api_idx_0008_LJTR.forward12
api_idx_0008_LJTR.back1:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 3
    jmp short api_idx_0008_LJTR.forward13
api_idx_0008_LJTR.back2:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss3], 2
    cmp word [cell_wall_override_disabled], byte 4
    jge short api_idx_0008_LJTR.forward11
    mov byte [bx + api_idx_0008_LJTR.bss4], 2
api_idx_0008_LJTR.forward11:
    jmp short api_idx_0008_LJTR.forward13
api_idx_0008_LJTR.forward12:
    cmp ax, strict word 0xa
    je short api_idx_0008_LJTR.back2
    cmp ax, strict word 0xe
    je short api_idx_0008_LJTR.back1
    cmp ax, strict word 0x13
    je short api_idx_0008_LJTR.back1
    cmp ax, strict word 0x19
    je short api_idx_0008_LJTR.back2
    cmp ax, strict word 0x1f
    je short api_idx_0008_LJTR.back1
api_idx_0008_LJTR.forward13:
    mov ax, word [party_tag]
    jmp short api_idx_0008_LJTR.forward14
api_idx_0008_LJTR.back3:
    mov ax, 4
    push ax
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 4], ax
    jmp short api_idx_0008_LJTR.forward15
api_idx_0008_LJTR.back4:
    mov ax, 4
    push ax
    push word [bp - 2]
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 4], ax
    jmp short api_idx_0008_LJTR.forward15
api_idx_0008_LJTR.back5:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call get_north_cell_wall
    add sp, byte 0xa
    mov word [bp - 4], ax
    jmp short api_idx_0008_LJTR.forward15
api_idx_0008_LJTR.back6:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 6]
    push word [bp + 4]
    call get_west_cell_wall
    add sp, byte 0xa
    mov word [bp - 4], ax
    jmp short api_idx_0008_LJTR.forward15
api_idx_0008_LJTR.forward14:
    cmp ax, strict word 0
    je short api_idx_0008_LJTR.back3
    cmp ax, strict word 1
    je short api_idx_0008_LJTR.back4
    cmp ax, strict word 2
    je short api_idx_0008_LJTR.back5
    cmp ax, strict word 3
    je short api_idx_0008_LJTR.back6
api_idx_0008_LJTR.forward15:
    lea ax, word [bp - 8]
    push ax
    lea ax, word [bp - 6]
    push ax
    push word [bp - 2]
    call read_cell_kind_direction
    add sp, byte 6
    mov ax, word [party_tag]
    cmp ax, word [bp - 8]
    je short api_idx_0008_LJTR.forward17
    mov ax, word [bp - 6]
    cmp ax, strict word 7
    jl short api_idx_0008_LJTR.forward16
    cmp ax, strict word 9
    jle short api_idx_0008_LJTR.forward17
api_idx_0008_LJTR.forward16:
    cmp ax, strict word 0xb
    jg short api_idx_0008_LJTR.forward17
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.forward17:
    mov ax, word [bp - 6]
    jmp near api_idx_0008_LJTR.forward21
api_idx_0008_LJTR.jumptable_case13:
    mov word [bp - 4], 8
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case14:
    mov word [bp - 4], 9
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case15:
    mov word [bp - 4], 0xa
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case16:
    mov word [bp - 4], 0xb
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case17:
    cmp word [cell_wall_override_disabled], byte 0
    jne short api_idx_0008_LJTR.forward18
    mov word [bp - 4], 0xc
api_idx_0008_LJTR.forward18:
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case18:
    cmp word [cell_wall_override_disabled], byte 0
    jne short api_idx_0008_LJTR.forward19
    mov word [bp - 4], 0xd
api_idx_0008_LJTR.forward19:
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case19:
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, 5
    imul word [cell_wall_override_disabled]
    mov cx, ax
    add ax, word [bp + 0xe]
    mov bx, ax
    pop ax
    mov byte [bx + api_idx_0008_LJTR.bss5], al
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case20:
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, 0xa
    imul word [cell_wall_override_disabled]
    mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0008_LJTR.bss6], ax
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case21:
    mov ax, word [bp - 8]
    inc ax
    push ax
    mov ax, 0xa
    imul word [cell_wall_override_disabled]
    mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0008_LJTR.bss7], ax
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case22:
    mov word [bp - 4], 0xe
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case23:
    mov word [bp - 4], 0xf
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case24:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss8], 1
    jmp near api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case25:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss1], 3
    jmp short api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case26:
    mov ax, 0xa
    imul word [cell_wall_override_disabled]
    mov cx, word [bp + 0xe]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx + api_idx_0008_LJTR.bss9], 1
api_idx_0008_LJTR.jumptable_case27:
    cmp word [bp - 6], byte 0xe
    je short api_idx_0008_LJTR.forward20
    mov ax, 0xa
    imul word [cell_wall_override_disabled]
    mov cx, word [bp + 0xe]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx + api_idx_0008_LJTR.bss10], 1
api_idx_0008_LJTR.forward20:
    jmp short api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable_case28:
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss8], 2
    jmp short api_idx_0008_LJTR.jumptable_case12
api_idx_0008_LJTR.jumptable4:
    dw api_idx_0008_LJTR.jumptable_case12 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case13 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case14 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case15 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case16 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case17 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case18 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case19 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case20 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case21 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case22 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case23 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case24 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case25 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case26 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case27 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case28 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case26 - IMAGE_BASE + __zres_end
api_idx_0008_LJTR.forward21:
    cmp ax, strict word 0x12
    jae short api_idx_0008_LJTR.jumptable_case12
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable4 - IMAGE_BASE + __zres_end]
api_idx_0008_LJTR.jumptable_case12:
    mov ax, word [game_state_arg]
    cmp ax, word [saved_level]
    jne short api_idx_0008_LJTR.forward23
    mov ax, word [bp + 0xc]
    cmp ax, word [saved_map_piece]
    jne short api_idx_0008_LJTR.forward23
    mov ax, word [bp + 8]
    cmp ax, word [saved_cell_x]
    jne short api_idx_0008_LJTR.forward23
    mov ax, word [bp + 0xa]
    cmp ax, word [saved_cell_y]
    jne short api_idx_0008_LJTR.forward23
    mov ax, 5
    imul word [cell_wall_override_disabled]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss8], 3
api_idx_0008_LJTR.forward23:
    mov ax, word [bp - 4]
    ret
