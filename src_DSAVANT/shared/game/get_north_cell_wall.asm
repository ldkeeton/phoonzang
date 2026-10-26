; auto-generated
get_north_cell_wall:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    call find_map_piece
    add sp, byte 0x0a
    test ax, ax
    je short @..get_north_cell_wall.l5
    mov ax, word [maze_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..get_north_cell_wall.l1
    mov ax, cx
    jmp short @..get_north_cell_wall.l4
@..get_north_cell_wall.l1:
    mov ax, word [maze_variant]
    cmp ax, strict word 6
    je short @..get_north_cell_wall.l2
    cmp word [boundary_wall_open], byte 0
    je short @..get_north_cell_wall.l3
@..get_north_cell_wall.l2:
    mov ax, 0
    jmp short @..get_north_cell_wall.l4
@..get_north_cell_wall.l3:
    mov ax, 4
@..get_north_cell_wall.l4:
    ret
@..get_north_cell_wall.l5:
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call read_packed_field
    add sp, byte 6
    ret
