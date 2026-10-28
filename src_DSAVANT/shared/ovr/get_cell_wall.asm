; auto-generated
get_cell_wall:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    jmp short .forward1
.back1:
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
.back2:
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
.back3:
    push word [bp + 6]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call get_north_cell_wall
    add sp, byte 0xa
    ret
.back4:
    push word [bp + 6]
    push word [bp + 0xa]
    push word [bp + 8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call get_west_cell_wall
    add sp, byte 0xa
    ret
.forward1:
    cmp ax, strict word 0
    jne short .forward2
    jmp near .back1
.forward2:
    cmp ax, strict word 1
    je short .back2
    cmp ax, strict word 2
    je short .back3
    cmp ax, strict word 3
    je short .back4
    ret
