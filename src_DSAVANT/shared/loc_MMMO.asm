; auto-generated
loc_MMMO:
    mov ax, 0
    call aztec_csav
    push word [bp + 0x6]
    mov ax, word [bp + 0x4]
    dec ax
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    call find_map_piece
    add sp, byte 0x0a
    test ax, ax
    je short @..loc_MMMO.l5
    mov ax, word [maze_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..loc_MMMO.l1
    mov ax, cx
    jmp short @..loc_MMMO.l4
@..loc_MMMO.l1:
    mov ax, word [maze_variant]
    cmp ax, strict word 6
    je short @..loc_MMMO.l2
    cmp word [loc_MMMO.bss1], byte 0
    je short @..loc_MMMO.l3
@..loc_MMMO.l2:
    mov ax, 0
    jmp short @..loc_MMMO.l4
@..loc_MMMO.l3:
    mov ax, 4
@..loc_MMMO.l4:
    ret
@..loc_MMMO.l5:
    mov ax, 4
    push ax
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    push ax
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call ds_leaf_loc_NPSL
    add sp, byte 6
    ret
