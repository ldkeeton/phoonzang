; auto-generated
api_idx_0004_UJRL:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, 0
    push ax
    call api_idx_0008_RQRL
    pop cx
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    jne short .forward3
    cmp word [bss_5910], byte 0x7f
    jl short .forward2
    mov ax, 1
    push ax
    call api_idx_0008_RQRL
    pop cx
    mov word [bp - 2], ax
    cmp ax, strict word 0xffff
    jne short .forward1
.back1:
    mov ax, 0
    push ax
    call play_sound_effect
    pop cx
    jmp short .back1
.forward1:
    jmp short .forward3
.forward2:
    mov ax, word [bss_5910]
    mov word [bp - 2], ax
    inc word [bss_5910]
.forward3:
    mov cx, word [bp - 2]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    mov ax, word [runtime_near_buffer_1k]
    add ax, cx
    mov word [bp - 4], ax
    mov al, byte [game_state_arg]
    mov bx, word [bp - 4]
    mov byte [bx], al
    mov bx, word [bp + 4]
    mov al, byte [bx + 7]
    mov bx, word [bp - 4]
    mov byte [bx + 1], al
    mov ax, word [party_map_piece]
    xchg al, ah
    sub al, al
    mov dx, word [party_cell_x]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [party_cell_y]
    mov bx, word [bp - 4]
    mov word [bx + 2], ax
    mov bx, word [bp + 4]
    mov ax, word [bx]
    mov bx, word [bp - 4]
    mov word [bx + 4], ax
    mov bx, word [bp + 4]
    mov al, byte [bx + 5]
    mov bx, word [bp - 4]
    mov byte [bx + 7], al
    mov bx, word [bp + 4]
    mov al, byte [bx + 6]
    mov bx, word [bp - 4]
    mov byte [bx + 6], al
    mov ax, 1
    push ax
    mov ax, word [party_map_piece]
    mov cx, 6
    shl ax, cl
    mov cx, word [party_cell_y]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [party_cell_x]
    push ax
    mov ax, bss_8bfe
    push ax
    call set_bitmap_bit
    add sp, byte 6
    ret
