; auto-generated
loc_MPHO:
    mov ax, 0
    call aztec_csav
    mov bx, word [maze_data]
    mov si, word [bp + 4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    cmp ax, word [bp + 6]
    jg short @..loc_MPHO.l1
    add ax, strict word 7
    cmp ax, word [bp + 6]
    jl short @..loc_MPHO.l1
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    cmp ax, word [bp + 8]
    jg short @..loc_MPHO.l1
    add ax, strict word 7
    cmp ax, word [bp + 8]
    jl short @..loc_MPHO.l1
    mov ax, si
    ret
@..loc_MPHO.l1:
    mov ax, 0xffff
    ret
