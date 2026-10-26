; auto-generated
get_relative_cell_wall:
    mov ax, 0xfff8
    call aztec_csav
    cmp word [bp + 0x10], byte 0
    je short @..get_relative_cell_wall.l3
    mov ax, 0
    push ax
    push word [bp + 0x10]
    lea ax, word [bp + 0xe]
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0x6]
    push ax
    call offset_relative_map_position
    add sp, byte 0x0e
    test ax, ax
    je short @..get_relative_cell_wall.l3
    mov ax, word [boundary_wall_variant]
    jmp short @..get_relative_cell_wall.l2
get_relative_cell_wall.jumptable_case1:
    mov ax, 2
    ret
get_relative_cell_wall.jumptable_case2:
    cmp word [boundary_wall_open], byte 0
    je short get_relative_cell_wall.jumptable_case3
    mov ax, 0
    ret
get_relative_cell_wall.jumptable_case3:
    mov ax, 4
    ret
get_relative_cell_wall.jumptable_case4:
    mov ax, 0
    ret
get_relative_cell_wall.jumptable1:
    dw get_relative_cell_wall.jumptable_case1 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case3 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case1 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case2 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case1 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case4 - IMAGE_BASE + __zres_end
@..get_relative_cell_wall.l2:
    cmp ax, strict word 6
    jae short @..get_relative_cell_wall.l3
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + get_relative_cell_wall.jumptable1 - IMAGE_BASE + __zres_end]
@..get_relative_cell_wall.l3:
    mov ax, word [bp + 0xe]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..get_relative_cell_wall.l6
    mov ax, word [boundary_wall_variant]
    jmp short @..get_relative_cell_wall.l5
@..get_relative_cell_wall.l4:
    mov ax, 0
    ret
@..get_relative_cell_wall.l5:
    cmp ax, strict word 0
    je short @..get_relative_cell_wall.l4
    cmp ax, strict word 3
    je short @..get_relative_cell_wall.l4
@..get_relative_cell_wall.l6:
    mov ax, word [party_tag]
    add ax, word [bp + 0x4]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    jmp short @..get_relative_cell_wall.l11
@..get_relative_cell_wall.l7:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call get_west_cell_wall
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..get_relative_cell_wall.l12
@..get_relative_cell_wall.l8:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..get_relative_cell_wall.l12
@..get_relative_cell_wall.l9:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call read_packed_field
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..get_relative_cell_wall.l12
@..get_relative_cell_wall.l10:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call get_north_cell_wall
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..get_relative_cell_wall.l12
@..get_relative_cell_wall.l11:
    cmp ax, strict word 0
    je short @..get_relative_cell_wall.l7
    cmp ax, strict word 1
    je short @..get_relative_cell_wall.l8
    cmp ax, strict word 2
    je short @..get_relative_cell_wall.l9
    cmp ax, strict word 3
    je short @..get_relative_cell_wall.l10
@..get_relative_cell_wall.l12:
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call read_cell_kind_direction
    add sp, byte 6
    mov ax, word [bp - 0x0008]
    add ax, word [bp + 0x4]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    cmp dx, word [party_tag]
    je short @..get_relative_cell_wall.l13
    jmp near get_relative_cell_wall.jumptable_case5
@..get_relative_cell_wall.l13:
    mov ax, word [bp - 0x0006]
    jmp short @..get_relative_cell_wall.l16
get_relative_cell_wall.jumptable_case6:
    mov word [bp - 0x0004], 8
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable_case7:
    mov word [bp - 0x0004], 9
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable_case8:
    mov word [bp - 0x0004], 0xa
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable_case9:
    mov word [bp - 0x0004], 0xb
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable_case10:
    cmp word [cell_wall_override_disabled], byte 0
    jne short @..get_relative_cell_wall.l14
    mov word [bp - 0x0004], 0xc
@..get_relative_cell_wall.l14:
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable_case11:
    cmp word [cell_wall_override_disabled], byte 0
    jne short @..get_relative_cell_wall.l15
    mov word [bp - 0x0004], 0xd
@..get_relative_cell_wall.l15:
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable_case12:
    mov word [bp - 0x0004], 0xe
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable_case13:
    mov word [bp - 0x0004], 0xf
    jmp short get_relative_cell_wall.jumptable_case5
get_relative_cell_wall.jumptable2:
    dw get_relative_cell_wall.jumptable_case5 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case6 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case7 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case8 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case9 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case10 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case11 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case5 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case5 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case5 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case12 - IMAGE_BASE + __zres_end
    dw get_relative_cell_wall.jumptable_case13 - IMAGE_BASE + __zres_end
@..get_relative_cell_wall.l16:
    cmp ax, strict word 0xc
    jae short get_relative_cell_wall.jumptable_case5
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + get_relative_cell_wall.jumptable2 - IMAGE_BASE + __zres_end]
get_relative_cell_wall.jumptable_case5:
    mov ax, word [bp - 0x0004]
    ret
