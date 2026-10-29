; auto-generated
api_idx_0004_KGNP:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, word [bp + 6]
    cmp word [bp + 8], byte 0
    jne short .forward1
    mov ax, word [bp + 4]
.forward1:
    mov word [bp - 2], ax
    mov ax, word [bp + 4]
    cmp word [bp + 8], byte 0
    jne short .forward2
    mov ax, word [bp + 6]
.forward2:
    mov word [bp - 4], ax
    cmp word [bp - 2], byte 0
    je short .forward3
    mov ax, 0
    push ax
    push word [bp - 2]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, party_region + 0x2
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp - 2]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, scenario_header_data
    push ax
    call set_bitmap_bit
    add sp, byte 6
.forward3:
    cmp word [bp - 4], byte 0
    je short .return1
    mov ax, 1
    push ax
    push word [bp - 4]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, party_region + 0x2
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 4]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, scenario_header_data
    push ax
    call set_bitmap_bit
    add sp, byte 6
.return1:
    ret
