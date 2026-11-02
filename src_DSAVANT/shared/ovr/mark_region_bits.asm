; auto-generated
mark_region_bits:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 4], byte 0
    jle short .return1
    mov bx, word [maze_tables]
    mov si, word [party_region]
    cmp byte [bx + si + 0x960], 0
    jbe short .return1
    mov ax, 1
    push ax
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [current_level]
    mov cx, 4
    shl ax, cl
    add ax, party_region + 0x2
    push ax
    call set_bitmap_bit
    add sp, byte 6
    cmp word [bp + 4], byte 1
    jle short .return1
    mov ax, 1
    push ax
    mov bx, word [maze_tables]
    mov si, word [party_region]
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [current_level]
    mov cx, 4
    shl ax, cl
    add ax, scenario_header_data
    push ax
    call set_bitmap_bit
    add sp, byte 6
.return1:
    ret
