; auto-generated
read_cell_kind_direction:
    mov ax, 0
    call aztec_csav
    mov ax, 6
    push ax
    push word [bp + 0x4]
    mov ax, word [maze_data]
    add ax, 0x4b0
    push ax
    call read_packed_field
    add sp, byte 6
    mov bx, word [bp + 0x6]
    mov word [bx], ax
    mov ax, 2
    push ax
    push word [bp + 0x4]
    mov ax, word [maze_data]
    add ax, 0x7b0
    push ax
    call read_packed_field
    add sp, byte 6
    mov bx, word [bp + 0x8]
    mov word [bx], ax
    ret
