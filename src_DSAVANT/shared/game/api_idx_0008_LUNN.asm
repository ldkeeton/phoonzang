; auto-generated
api_idx_0008_LUNN:
    mov ax, 0xfff8
    call aztec_csav
    cmp word [bp + 0x10], byte 0
    je short @..api_idx_0008_LUNN.l2
    mov ax, 0
    push ax
    push word [bp + 0x10]
    lea ax, word [bp + 0xe]
    push ax
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0x6]
    push ax
    call loc_VOSO
    add sp, byte 0x0e
    test ax, ax
    je short @..api_idx_0008_LUNN.l2
    mov ax, word [api_idx_0008_LUNN.location_changed1]
    jmp short @..api_idx_0008_LUNN.l1
api_idx_0008_LUNN.jumptable_case1:
    mov ax, 2
    ret
api_idx_0008_LUNN.jumptable_case2:
    cmp word [api_idx_0008_LUNN.bss1], byte 0
    je short api_idx_0008_LUNN.jumptable_case3
    mov ax, 0
    ret
api_idx_0008_LUNN.jumptable_case3:
    mov ax, 4
    ret
api_idx_0008_LUNN.jumptable_case4:
    mov ax, 0
    ret
api_idx_0008_LUNN.jumptable1:
    dw api_idx_0008_LUNN.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case4 - IMAGE_BASE + __zres_end
@..api_idx_0008_LUNN.l1:
    cmp ax, strict word 6
    jae short @..api_idx_0008_LUNN.l2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LUNN.jumptable1 - IMAGE_BASE + __zres_end]
@..api_idx_0008_LUNN.l2:
    mov ax, word [bp + 0xe]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xc]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0xa]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0008_LUNN.l5
    mov ax, word [api_idx_0008_LUNN.location_changed1]
    jmp short @..api_idx_0008_LUNN.l4
@..api_idx_0008_LUNN.l3:
    mov ax, 0
    ret
@..api_idx_0008_LUNN.l4:
    cmp ax, strict word 0
    je short @..api_idx_0008_LUNN.l3
    cmp ax, strict word 3
    je short @..api_idx_0008_LUNN.l3
@..api_idx_0008_LUNN.l5:
    mov ax, word [party_tag]
    add ax, word [bp + 0x4]
    mov cx, 4
    cwd
    idiv cx
    mov ax, dx
    jmp short @..api_idx_0008_LUNN.l10
@..api_idx_0008_LUNN.l6:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call loc_MMMO
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LUNN.l11
@..api_idx_0008_LUNN.l7:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call ds_leaf_loc_NPSL
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LUNN.l11
@..api_idx_0008_LUNN.l8:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call ds_leaf_loc_NPSL
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LUNN.l11
@..api_idx_0008_LUNN.l9:
    push word [bp + 0xe]
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    call loc_GPIH
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LUNN.l11
@..api_idx_0008_LUNN.l10:
    cmp ax, strict word 0
    je short @..api_idx_0008_LUNN.l6
    cmp ax, strict word 1
    je short @..api_idx_0008_LUNN.l7
    cmp ax, strict word 2
    je short @..api_idx_0008_LUNN.l8
    cmp ax, strict word 3
    je short @..api_idx_0008_LUNN.l9
@..api_idx_0008_LUNN.l11:
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_RRJG
    add sp, byte 6
    mov ax, word [bp - 0x0008]
    add ax, word [bp + 0x4]
    inc ax
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0008], dx
    cmp dx, word [party_tag]
    je short @..api_idx_0008_LUNN.l12
    jmp near api_idx_0008_LUNN.jumptable_case5
@..api_idx_0008_LUNN.l12:
    mov ax, word [bp - 0x0006]
    jmp short @..api_idx_0008_LUNN.l15
api_idx_0008_LUNN.jumptable_case6:
    mov word [bp - 0x0004], 8
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable_case7:
    mov word [bp - 0x0004], 9
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable_case8:
    mov word [bp - 0x0004], 0xa
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable_case9:
    mov word [bp - 0x0004], 0xb
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable_case10:
    cmp word [api_idx_0008_LUNN.bss2], byte 0
    jne short @..api_idx_0008_LUNN.l13
    mov word [bp - 0x0004], 0xc
@..api_idx_0008_LUNN.l13:
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable_case11:
    cmp word [api_idx_0008_LUNN.bss2], byte 0
    jne short @..api_idx_0008_LUNN.l14
    mov word [bp - 0x0004], 0xd
@..api_idx_0008_LUNN.l14:
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable_case12:
    mov word [bp - 0x0004], 0xe
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable_case13:
    mov word [bp - 0x0004], 0xf
    jmp short api_idx_0008_LUNN.jumptable_case5
api_idx_0008_LUNN.jumptable2:
    dw api_idx_0008_LUNN.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case7 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case10 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case12 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LUNN.jumptable_case13 - IMAGE_BASE + __zres_end
@..api_idx_0008_LUNN.l15:
    cmp ax, strict word 0xc
    jae short api_idx_0008_LUNN.jumptable_case5
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LUNN.jumptable2 - IMAGE_BASE + __zres_end]
api_idx_0008_LUNN.jumptable_case5:
    mov ax, word [bp - 0x0004]
    ret
