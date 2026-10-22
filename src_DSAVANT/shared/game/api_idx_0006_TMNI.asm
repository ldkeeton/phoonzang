; auto-generated
api_idx_0006_TMNI:
    mov ax, 0xfffa
    call aztec_csav
    mov ax, word [bss_0e0e]
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0002], 0
    jmp short @..api_idx_0006_TMNI.l3
@..api_idx_0006_TMNI.l1:
    mov bx, word [bp - 0x0006]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [game_state_arg]
    jne short @..api_idx_0006_TMNI.l2
    mov ax, word [party_map_piece]
    xchg al, ah
    sub al, al
    mov dx, word [party_cell_x]
    mov cx, 4
    shl dx, cl
    mov cx, dx
    add ax, cx
    add ax, word [party_cell_y]
    mov word [bp - 0x0004], ax
    cmp ax, word [bx + 0x2]
    jne short @..api_idx_0006_TMNI.l2
    mov ax, bx
    ret
@..api_idx_0006_TMNI.l2:
    add word [bp - 0x0006], byte 8
    inc word [bp - 0x0002]
@..api_idx_0006_TMNI.l3:
    mov ax, word [bp - 0x0002]
    cmp ax, word [bss_5910]
    jl short @..api_idx_0006_TMNI.l1
    mov ax, 0
    ret
