; auto-generated
api_idx_0006_TMNI:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [runtime_near_buffer_1k]
    mov word [bp - 6], ax
    mov word [bp - 2], 0
    jmp short .forward2
.back1:
    mov bx, word [bp - 6]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [game_state_arg]
    jne short .forward1
    mov ax, word [party_map_piece]
    xchg al, ah
    sub al, al
    mov dx, word [party_cell_x]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [party_cell_y]
    mov word [bp - 4], ax
    cmp ax, word [bx + 2]
    jne short .forward1
    mov ax, bx
    ret
.forward1:
    add word [bp - 6], byte 8
    inc word [bp - 2]
.forward2:
    mov ax, word [bp - 2]
    cmp ax, word [runtime_eight_byte_count]
    jl short .back1
    mov ax, 0
    ret
