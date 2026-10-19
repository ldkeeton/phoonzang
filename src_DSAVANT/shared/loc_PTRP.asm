; auto-generated
loc_PTRP:
    mov ax, 0
    call aztec_csav
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call gfx_entry_13
    add sp, byte 4
    mov ax, 7
    push ax
    mov ax, 0
    cmp word [bp + 0xa], byte 0
    je short @..loc_PTRP.l1
    mov ax, 1
@..loc_PTRP.l1:
    add ax, strict word 0x10
    sub ah, ah
    push ax
    call ds_loc_TJTV
    add sp, byte 4
    push word [bp + 0x6]
    mov ax, 0xa
    imul word [bp + 0x8]
    add ax, word [bp + 0x4]
    push ax
    call gfx_entry_13
    add sp, byte 4
    mov ax, 0
    push ax
    push ax
    call gfx_entry_12
    add sp, byte 4
    mov ax, 2
    push ax
    mov ax, word [bp + 0x8]
    inc ax
    sub ah, ah
    push ax
    call ds_loc_TJTV
    add sp, byte 4
    cmp word [bp + 0x8], byte 0
    jne short @..loc_PTRP.l2
    cmp word [bp + 0xa], byte 0
    jne short @..loc_PTRP.l2
    mov ax, 0xc2
    push ax
    mov ax, word [bp + 0x6]
    add ax, strict word 8
    push ax
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    push word [bp + 0x6]
    push ax
    call gfx_entry_18
    add sp, byte 0x0a
@..loc_PTRP.l2:
    ret
