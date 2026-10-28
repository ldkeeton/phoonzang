; auto-generated
get_north_cell_wall:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 6]
    dec ax
    push ax
    push word [bp + 4]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 8]
    push ax
    call find_map_piece
    add sp, byte 0xa
    test ax, ax
    je short .forward4
    mov ax, word [maze_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short .forward1
    mov ax, cx
    jmp short .return1
.forward1:
    mov ax, word [maze_variant]
    cmp ax, strict word 6
    je short .forward2
    cmp word [boundary_wall_open], byte 0
    je short .forward3
.forward2:
    mov ax, 0
    jmp short .return1
.forward3:
    mov ax, 4
.return1:
    ret
.forward4:
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
    add ax, word [bp + 8]
    push ax
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call read_packed_field
    add sp, byte 6
    ret
