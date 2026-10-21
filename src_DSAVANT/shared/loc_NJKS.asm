; auto-generated
loc_NJKS:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x4]
    jmp short @..loc_NJKS.l5
@..loc_NJKS.l1:
    mov ax, 4
    push ax
    mov ax, word [bp + 0x6]
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
    add ax, 0x90
    push ax
    call ds_leaf_loc_NPSL
    add sp, byte 6
    ret
@..loc_NJKS.l2:
    mov ax, 4
    push ax
    mov ax, word [bp + 0x6]
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
@..loc_NJKS.l3:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call loc_NJKS.loc1
    add sp, byte 0x0a
    ret
@..loc_NJKS.l4:
    push word [bp + 0x6]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0xe]
    push word [bp + 0xc]
    call loc_NJKS.loc2
    add sp, byte 0x0a
    ret
@..loc_NJKS.l5:
    cmp ax, strict word 0
    jne short @..loc_NJKS.l6
    jmp near @..loc_NJKS.l1
@..loc_NJKS.l6:
    cmp ax, strict word 1
    je short @..loc_NJKS.l2
    cmp ax, strict word 2
    je short @..loc_NJKS.l3
    cmp ax, strict word 3
    je short @..loc_NJKS.l4
    ret
