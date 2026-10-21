; auto-generated
loc_OUOJ:
    mov ax, 0
    call aztec_csav
    cmp word [bp + 0x4], byte 0
    jle short @..loc_OUOJ.l1
    mov bx, word [bss_0e12]
    mov si, word [bss_8d12]
    cmp byte [bx + si + 0x960], 0
    jbe short @..loc_OUOJ.l1
    mov ax, 1
    push ax
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, 0x8d14
    push ax
    call set_bitmap_bit
    add sp, byte 6
    cmp word [bp + 0x4], byte 1
    jle short @..loc_OUOJ.l1
    mov ax, 1
    push ax
    mov bx, word [bss_0e12]
    mov si, word [bss_8d12]
    mov al, byte [bx + si + 0x960]
    sub ah, ah
    push ax
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, bss_5642
    push ax
    call set_bitmap_bit
    add sp, byte 6
@..loc_OUOJ.l1:
    ret
