; auto-generated
api_idx_0008_RQRL:
    mov ax, 0xfff8
    call aztec_csav
    mov word [bp - 6], 0xffff
    mov word [bp - 8], 0xffff
    mov ax, word [bss_0e0e]
    mov word [bp - 4], ax
    mov word [bp - 2], 0
    jmp short @..api_idx_0008_RQRL.l6
@..api_idx_0008_RQRL.l1:
    mov bx, word [bp - 4]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, 0xff
    jne short @..api_idx_0008_RQRL.l2
    mov ax, word [bp - 2]
    ret
@..api_idx_0008_RQRL.l2:
    mov al, byte [bx + 1]
    sub ah, ah
    test ax, 0x40
    jne short @..api_idx_0008_RQRL.l5
    cmp word [bp - 6], byte 0xff
    je short @..api_idx_0008_RQRL.l3
    mov ax, 7
    push ax
    call random_below
    pop cx
    test ax, ax
    jne short @..api_idx_0008_RQRL.l5
@..api_idx_0008_RQRL.l3:
    mov bx, word [bp - 4]
    mov al, byte [bx]
    sub ah, ah
    cmp ax, word [game_state_arg]
    jne short @..api_idx_0008_RQRL.l4
    mov ax, word [bp - 2]
    mov word [bp - 8], ax
    jmp short @..api_idx_0008_RQRL.l5
@..api_idx_0008_RQRL.l4:
    mov ax, word [bp - 2]
    mov word [bp - 6], ax
@..api_idx_0008_RQRL.l5:
    add word [bp - 4], byte 8
    inc word [bp - 2]
@..api_idx_0008_RQRL.l6:
    mov ax, word [bp - 2]
    cmp ax, word [bss_5910]
    jl short @..api_idx_0008_RQRL.l1
    cmp word [bp + 4], byte 0
    je short @..api_idx_0008_RQRL.l8
    cmp word [bp - 6], byte 0xff
    jne short @..api_idx_0008_RQRL.l7
    mov ax, word [bp - 8]
    ret
@..api_idx_0008_RQRL.l7:
    mov ax, word [bp - 6]
    ret
@..api_idx_0008_RQRL.l8:
    mov ax, 0xffff
    ret
