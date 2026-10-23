; auto-generated
api_idx_0008_LJTR:
    mov ax, 0xfff8
    call aztec_csav
    cmp word [bp + 0xe], byte 0
    jne short @..api_idx_0008_LJTR.l1
    jmp near @..api_idx_0008_LJTR.l4
@..api_idx_0008_LJTR.l1:
    mov ax, 0
    push ax
    push word [bp + 0xe]
    lea ax, word [bp + 0xc]
    push ax
    lea ax, word [bp + 0xa]
    push ax
    lea ax, word [bp + 0x8]
    push ax
    lea ax, word [bp + 0x6]
    push ax
    lea ax, word [bp + 0x4]
    push ax
    call loc_VOSO
    add sp, byte 0x0e
    test ax, ax
    je short @..api_idx_0008_LJTR.l4
    mov ax, word [api_idx_0008_LJTR.bss1]
    jmp short @..api_idx_0008_LJTR.l3
api_idx_0008_LJTR.jumptable_case1:
    mov ax, 2
    ret
api_idx_0008_LJTR.jumptable_case2:
    cmp word [api_idx_0008_LJTR.bss2], byte 0
    je short @..api_idx_0008_LJTR.l2
    mov ax, 0
    ret
api_idx_0008_LJTR.jumptable_case3:
@..api_idx_0008_LJTR.l2:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 1
    mov ax, 4
    ret
api_idx_0008_LJTR.jumptable_case4:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 3
    mov ax, 0
    ret
api_idx_0008_LJTR.jumptable1:
    dw api_idx_0008_LJTR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case4 - IMAGE_BASE + __zres_end
@..api_idx_0008_LJTR.l3:
    cmp ax, strict word 6
    jae short @..api_idx_0008_LJTR.l4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable1 - IMAGE_BASE + __zres_end]
@..api_idx_0008_LJTR.l4:
    mov ax, word [bp + 0xc]
    mov cx, 6
    shl ax, cl
    mov cx, word [bp + 0xa]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    add ax, word [bp + 0x8]
    mov word [bp - 0x0002], ax
    push ax
    mov ax, word [maze_data]
    add ax, 0x9b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0008_LJTR.l6
    mov ax, word [api_idx_0008_LJTR.bss1]
    jmp short @..api_idx_0008_LJTR.l5
api_idx_0008_LJTR.jumptable_case5:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 3
    jmp short @..api_idx_0008_LJTR.l6
api_idx_0008_LJTR.jumptable_case6:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 1
    jmp short @..api_idx_0008_LJTR.l6
api_idx_0008_LJTR.jumptable_case7:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 2
    jmp short @..api_idx_0008_LJTR.l6
api_idx_0008_LJTR.jumptable2:
    dw api_idx_0008_LJTR.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case7 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case6 - IMAGE_BASE + __zres_end
@..api_idx_0008_LJTR.l5:
    cmp ax, strict word 6
    jae short @..api_idx_0008_LJTR.l6
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable2 - IMAGE_BASE + __zres_end]
@..api_idx_0008_LJTR.l6:
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x8b0
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    jne short @..api_idx_0008_LJTR.l7
    jmp near @..api_idx_0008_LJTR.l10
@..api_idx_0008_LJTR.l7:
    mov ax, word [api_idx_0008_LJTR.bss1]
    jmp short @..api_idx_0008_LJTR.l9
api_idx_0008_LJTR.jumptable_case8:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 2
    jmp short @..api_idx_0008_LJTR.l10
api_idx_0008_LJTR.jumptable_case9:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss5], 1
    jmp short @..api_idx_0008_LJTR.l10
api_idx_0008_LJTR.jumptable_case10:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 3
    jmp short @..api_idx_0008_LJTR.l10
api_idx_0008_LJTR.jumptable_case11:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss6], 1
    cmp word [api_idx_0008_LJTR.bss3], byte 4
    jge short @..api_idx_0008_LJTR.l8
    mov byte [bx + api_idx_0008_LJTR.bss7], 1
@..api_idx_0008_LJTR.l8:
    mov ax, 0
    ret
api_idx_0008_LJTR.jumptable3:
    dw api_idx_0008_LJTR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case10 - IMAGE_BASE + __zres_end
@..api_idx_0008_LJTR.l9:
    cmp ax, strict word 6
    jae short @..api_idx_0008_LJTR.l10
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable3 - IMAGE_BASE + __zres_end]
@..api_idx_0008_LJTR.l10:
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x930
    push ax
    call test_bit
    add sp, byte 4
    test ax, ax
    je short @..api_idx_0008_LJTR.l15
    mov ax, word [game_state_arg]
    jmp short @..api_idx_0008_LJTR.l14
@..api_idx_0008_LJTR.l11:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 3
    jmp short @..api_idx_0008_LJTR.l15
@..api_idx_0008_LJTR.l12:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss6], 2
    cmp word [api_idx_0008_LJTR.bss3], byte 4
    jge short @..api_idx_0008_LJTR.l13
    mov byte [bx + api_idx_0008_LJTR.bss7], 2
@..api_idx_0008_LJTR.l13:
    jmp short @..api_idx_0008_LJTR.l15
@..api_idx_0008_LJTR.l14:
    cmp ax, strict word 0xa
    je short @..api_idx_0008_LJTR.l12
    cmp ax, strict word 0xe
    je short @..api_idx_0008_LJTR.l11
    cmp ax, strict word 0x13
    je short @..api_idx_0008_LJTR.l11
    cmp ax, strict word 0x19
    je short @..api_idx_0008_LJTR.l12
    cmp ax, strict word 0x1f
    je short @..api_idx_0008_LJTR.l11
@..api_idx_0008_LJTR.l15:
    mov ax, word [party_tag]
    jmp short @..api_idx_0008_LJTR.l20
@..api_idx_0008_LJTR.l16:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x90
    push ax
    call ds_leaf_loc_NPSL
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LJTR.l21
@..api_idx_0008_LJTR.l17:
    mov ax, 4
    push ax
    push word [bp - 0x0002]
    mov ax, word [maze_data]
    add ax, 0x290
    push ax
    call ds_leaf_loc_NPSL
    add sp, byte 6
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LJTR.l21
@..api_idx_0008_LJTR.l18:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_GPIH
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LJTR.l21
@..api_idx_0008_LJTR.l19:
    push word [bp + 0xc]
    push word [bp + 0xa]
    push word [bp + 0x8]
    push word [bp + 0x6]
    push word [bp + 0x4]
    call loc_MMMO
    add sp, byte 0x0a
    mov word [bp - 0x0004], ax
    jmp short @..api_idx_0008_LJTR.l21
@..api_idx_0008_LJTR.l20:
    cmp ax, strict word 0
    je short @..api_idx_0008_LJTR.l16
    cmp ax, strict word 1
    je short @..api_idx_0008_LJTR.l17
    cmp ax, strict word 2
    je short @..api_idx_0008_LJTR.l18
    cmp ax, strict word 3
    je short @..api_idx_0008_LJTR.l19
@..api_idx_0008_LJTR.l21:
    lea ax, word [bp - 0x0008]
    push ax
    lea ax, word [bp - 0x0006]
    push ax
    push word [bp - 0x0002]
    call loc_RRJG
    add sp, byte 6
    mov ax, word [party_tag]
    cmp ax, word [bp - 0x0008]
    je short @..api_idx_0008_LJTR.l23
    mov ax, word [bp - 0x0006]
    cmp ax, strict word 7
    jl short @..api_idx_0008_LJTR.l22
    cmp ax, strict word 9
    jle short @..api_idx_0008_LJTR.l23
@..api_idx_0008_LJTR.l22:
    cmp ax, strict word 0xb
    jg short @..api_idx_0008_LJTR.l23
    jmp near @..api_idx_0008_LJTR.l28
@..api_idx_0008_LJTR.l23:
    mov ax, word [bp - 0x0006]
    jmp near @..api_idx_0008_LJTR.l27
api_idx_0008_LJTR.jumptable_case12:
    mov word [bp - 0x0004], 8
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case13:
    mov word [bp - 0x0004], 9
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case14:
    mov word [bp - 0x0004], 0xa
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case15:
    mov word [bp - 0x0004], 0xb
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case16:
    cmp word [api_idx_0008_LJTR.bss3], byte 0
    jne short @..api_idx_0008_LJTR.l24
    mov word [bp - 0x0004], 0xc
@..api_idx_0008_LJTR.l24:
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case17:
    cmp word [api_idx_0008_LJTR.bss3], byte 0
    jne short @..api_idx_0008_LJTR.l25
    mov word [bp - 0x0004], 0xd
@..api_idx_0008_LJTR.l25:
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case18:
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    mov cx, ax
    add ax, word [bp + 0xe]
    mov bx, ax
    pop ax
    mov byte [bx + api_idx_0008_LJTR.bss8], al
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case19:
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, 0xa
    imul word [api_idx_0008_LJTR.bss3]
    mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0008_LJTR.bss9], ax
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case20:
    mov ax, word [bp - 0x0008]
    inc ax
    push ax
    mov ax, 0xa
    imul word [api_idx_0008_LJTR.bss3]
    mov cx, ax
    mov dx, word [bp + 0xe]
    shl dx, 1
    add ax, dx
    mov bx, ax
    pop ax
    mov word [bx + api_idx_0008_LJTR.bss10], ax
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case21:
    mov word [bp - 0x0004], 0xe
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case22:
    mov word [bp - 0x0004], 0xf
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case23:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss11], 1
    jmp near @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case24:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss4], 3
    jmp short @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case25:
    mov ax, 0xa
    imul word [api_idx_0008_LJTR.bss3]
    mov cx, word [bp + 0xe]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx + api_idx_0008_LJTR.bss12], 1
api_idx_0008_LJTR.jumptable_case26:
    cmp word [bp - 0x0006], byte 0x0e
    je short @..api_idx_0008_LJTR.l26
    mov ax, 0xa
    imul word [api_idx_0008_LJTR.bss3]
    mov cx, word [bp + 0xe]
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov word [bx + api_idx_0008_LJTR.bss13], 1
@..api_idx_0008_LJTR.l26:
    jmp short @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable_case27:
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss11], 2
    jmp short @..api_idx_0008_LJTR.l28
api_idx_0008_LJTR.jumptable4:
    dw api_idx_0008_LJTR.jumptable_case28 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case12 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case13 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case14 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case15 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case16 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case17 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case18 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case19 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case20 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case21 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case22 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case23 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case24 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case25 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case26 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case27 - IMAGE_BASE + __zres_end
    dw api_idx_0008_LJTR.jumptable_case25 - IMAGE_BASE + __zres_end
@..api_idx_0008_LJTR.l27:
    cmp ax, strict word 0x12
    jae short @..api_idx_0008_LJTR.l28
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0008_LJTR.jumptable4 - IMAGE_BASE + __zres_end]
api_idx_0008_LJTR.jumptable_case28:
@..api_idx_0008_LJTR.l28:
    mov ax, word [game_state_arg]
    cmp ax, word [saved_level]
    jne short @..api_idx_0008_LJTR.l29
    mov ax, word [bp + 0xc]
    cmp ax, word [saved_map_piece]
    jne short @..api_idx_0008_LJTR.l29
    mov ax, word [bp + 0x8]
    cmp ax, word [saved_cell_x]
    jne short @..api_idx_0008_LJTR.l29
    mov ax, word [bp + 0xa]
    cmp ax, word [saved_cell_y]
    jne short @..api_idx_0008_LJTR.l29
    mov ax, 5
    imul word [api_idx_0008_LJTR.bss3]
    add ax, word [bp + 0xe]
    mov bx, ax
    mov byte [bx + api_idx_0008_LJTR.bss11], 3
@..api_idx_0008_LJTR.l29:
    mov ax, word [bp - 0x0004]
    ret
