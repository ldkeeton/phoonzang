; auto-generated
loc_MPHO:
    mov ax, 0
    call aztec_csav
    mov bx, word [maze_data]
    mov si, word [bp + 0x4]
    mov al, byte [bx + si + 0x490]
    sub ah, ah
    cmp ax, word [bp + 0x6]
    jg short @..loc_MPHO.l1
    add ax, strict word 7
    cmp ax, word [bp + 0x6]
    jl short @..loc_MPHO.l1
    mov al, byte [bx + si + 0x4a0]
    sub ah, ah
    cmp ax, word [bp + 0x8]
    jg short @..loc_MPHO.l1
    add ax, strict word 7
    cmp ax, word [bp + 0x8]
    jl short @..loc_MPHO.l1
    mov ax, si
    ret
@..loc_MPHO.l1:
    mov ax, 0xffff
    ret
