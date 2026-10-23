; auto-generated
api_idx_0004_KGNP:
    mov ax, 0xfffc
    call aztec_csav
    mov ax, word [bp + 0x6]
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0004_KGNP.l1
    mov ax, word [bp + 0x4]
@..api_idx_0004_KGNP.l1:
    mov word [bp - 0x0002], ax
    mov ax, word [bp + 0x4]
    cmp word [bp + 0x8], byte 0
    jne short @..api_idx_0004_KGNP.l2
    mov ax, word [bp + 0x6]
@..api_idx_0004_KGNP.l2:
    mov word [bp - 0x0004], ax
    cmp word [bp - 0x0002], byte 0
    je short @..api_idx_0004_KGNP.l3
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, party_region + 0x2
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 0
    push ax
    push word [bp - 0x0002]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, bss_5642
    push ax
    call set_bitmap_bit
    add sp, byte 6
@..api_idx_0004_KGNP.l3:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0004_KGNP.l4
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, party_region + 0x2
    push ax
    call set_bitmap_bit
    add sp, byte 6
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, word [game_state_arg]
    mov cx, 4
    shl ax, cl
    add ax, bss_5642
    push ax
    call set_bitmap_bit
    add sp, byte 6
@..api_idx_0004_KGNP.l4:
    ret
