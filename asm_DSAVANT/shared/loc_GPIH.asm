; auto-generated
loc_GPIH:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x6]
    dec ax
    push ax
    push word [bp + 0x4]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    call api_idx_0004_QVPP
    add sp, byte 0x0a
    test ax, ax
    je short @..loc_GPIH.l5
    mov ax, word [bss_5b6e]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..loc_GPIH.l1
    mov ax, cx
    jmp short @..loc_GPIH.l4
@..loc_GPIH.l1:
    mov ax, word [bss_5b6e]
    cmp ax, strict word 6
    je short @..loc_GPIH.l2
    cmp word [loc_GPIH.bss1], byte 0
    je short @..loc_GPIH.l3
@..loc_GPIH.l2:
    mov ax, 0
    jmp short @..loc_GPIH.l4
@..loc_GPIH.l3:
    mov ax, 4
@..loc_GPIH.l4:
    ret
@..loc_GPIH.l5:
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
    mov ax, word [bss_0e14]
    add ax, 0x90
    push ax
    call ds_leaf_loc_NPSL
    add sp, byte 6
    ret
