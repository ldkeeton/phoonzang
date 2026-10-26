; auto-generated
get_cell_wall:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    jmp short @..get_cell_wall.l5
@..get_cell_wall.l1:
    mov ax, 4
    push ax
    mov ax, word [bp + 6]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 8]
    push ax
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call read_packed_field
    add sp, byte 6
    ret
@..get_cell_wall.l2:
    mov ax, 4
    push ax
    mov ax, word [bp + 6]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 8]
    push ax
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call read_packed_field
    add sp, byte 6
    ret
@..get_cell_wall.l3:
    push word [bp + 6]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call get_cell_wall.get_cell_wall_variant_a1
    add sp, byte 0xa
    ret
@..get_cell_wall.l4:
    push word [bp + 6]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call get_cell_wall.get_cell_wall_variant_b1
    add sp, byte 0xa
    ret
@..get_cell_wall.l5:
    cmp ax, strict word 0
    jne short @..get_cell_wall.l6
    jmp near @..get_cell_wall.l1
@..get_cell_wall.l6:
    cmp ax, strict word 1
    je short @..get_cell_wall.l2
    cmp ax, strict word 2
    je short @..get_cell_wall.l3
    cmp ax, strict word 3
    je short @..get_cell_wall.l4
    ret
