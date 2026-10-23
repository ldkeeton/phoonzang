; auto-generated
api_idx_0012_RMOL:
    mov ax, 0xffee
    call aztec_csav
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_RMOL.l1
    cmp word [bp + 0x6], byte 0
    jle short @..api_idx_0012_RMOL.l1
    cmp word [bp + 0x6], byte 4
    jge short @..api_idx_0012_RMOL.l1
    mov ax, 1
    jmp short @..api_idx_0012_RMOL.l2
@..api_idx_0012_RMOL.l1:
    mov ax, 0
@..api_idx_0012_RMOL.l2:
    mov word [bp - 0x0012], ax
    cmp word [bp - 0x0012], byte 0
    jne short @..api_idx_0012_RMOL.l3
    jmp near @..api_idx_0012_RMOL.l20
@..api_idx_0012_RMOL.l3:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + api_idx_0012_RMOL.bss1], byte 0
    jne short @..api_idx_0012_RMOL.l4
    cmp word [bx + api_idx_0012_RMOL.bss2], byte 0
    jne short @..api_idx_0012_RMOL.l4
    jmp near @..api_idx_0012_RMOL.l20
@..api_idx_0012_RMOL.l4:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_RMOL.l5
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
    jmp short @..api_idx_0012_RMOL.l9
@..api_idx_0012_RMOL.l5:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_RMOL.l9
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_RMOL.l6
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
@..api_idx_0012_RMOL.l6:
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_RMOL.l7
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 0x4]
    jmp short @..api_idx_0012_RMOL.l8
@..api_idx_0012_RMOL.l7:
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
@..api_idx_0012_RMOL.l8:
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_RMOL.l9:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + api_idx_0012_RMOL.bss1], byte 0
    jne short @..api_idx_0012_RMOL.l10
    jmp near @..api_idx_0012_RMOL.l20
@..api_idx_0012_RMOL.l10:
    mov cx, word [bx + api_idx_0012_RMOL.bss1]
    dec cx
    mov ax, word [party_tag]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], 0
    mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..api_idx_0012_RMOL.l11
    cmp word [bp + 0x4], byte 0
    jg short @..api_idx_0012_RMOL.l12
@..api_idx_0012_RMOL.l11:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_RMOL.l15
@..api_idx_0012_RMOL.l12:
    test ax, ax
    je short @..api_idx_0012_RMOL.l13
    mov ax, 3
    jmp short @..api_idx_0012_RMOL.l14
@..api_idx_0012_RMOL.l13:
    mov ax, 0
@..api_idx_0012_RMOL.l14:
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    inc ax
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [api_idx_0012_RMOL.bss3]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0012_RMOL.l17
@..api_idx_0012_RMOL.l15:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_RMOL.l17
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_RMOL.l16
    mov ax, 1
@..api_idx_0012_RMOL.l16:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
@..api_idx_0012_RMOL.l17:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0012_RMOL.l20
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0006]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    push word [bp + 0x6]
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..api_idx_0012_RMOL.l18
    cmp dx, byte 1
    jne short @..api_idx_0012_RMOL.l18
    mov ax, 1
    jmp short @..api_idx_0012_RMOL.l19
@..api_idx_0012_RMOL.l18:
    mov ax, 0
@..api_idx_0012_RMOL.l19:
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0004]
    mov ax, 0
    push ax
    push word [bp - 0x0008]
    mov ax, 4
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_RMOL.l20:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + api_idx_0012_RMOL.bss4]
    sub ah, ah
    jmp near @..api_idx_0012_RMOL.l36
@..api_idx_0012_RMOL.l21:
    cmp word [api_idx_0012_RMOL.bss5], byte 2
    je short @..api_idx_0012_RMOL.l22
    jmp near @..api_idx_0012_RMOL.l32
@..api_idx_0012_RMOL.l22:
    cmp word [bp + 0x4], byte 5
    jl short @..api_idx_0012_RMOL.l23
    jmp near @..api_idx_0012_RMOL.l31
@..api_idx_0012_RMOL.l23:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
    mov word [bp - 0x000e], 0xffff
    mov word [bp - 0x000a], 0xffff
    mov word [bp - 0x0010], 0xffff
    mov word [bp - 0x000c], 0xffff
    cmp word [bp + 0x40], byte 0xff
    je short @..api_idx_0012_RMOL.l24
    mov ax, word [bp + 0x42]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    mov word [bp - 0x000e], ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    mov word [bp - 0x0010], ax
@..api_idx_0012_RMOL.l24:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_RMOL.l25
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call api_idx_0012_RMOL.loc3
    add sp, byte 4
    mov word [bp - 0x000a], ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    dec ax
    push ax
    call api_idx_0012_RMOL.loc4
    pop cx
    mov word [bp - 0x000c], ax
@..api_idx_0012_RMOL.l25:
    cmp word [bp - 0x000a], byte 0xff
    jne short @..api_idx_0012_RMOL.l26
    cmp word [bp - 0x000e], byte 0xff
    jne short @..api_idx_0012_RMOL.l26
    jmp near @..api_idx_0012_RMOL.l31
@..api_idx_0012_RMOL.l26:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    push word [bp - 0x000c]
    push word [bp - 0x0010]
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 0x000a]
    push word [bp - 0x000e]
    mov ax, 0xff
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
    cmp word [bp - 0x000a], byte 0xff
    jne short @..api_idx_0012_RMOL.l27
    jmp near @..api_idx_0012_RMOL.l31
@..api_idx_0012_RMOL.l27:
    cmp word [api_idx_0012_RMOL.bss5], byte 0
    jne short @..api_idx_0012_RMOL.l28
    jmp near @..api_idx_0012_RMOL.l31
@..api_idx_0012_RMOL.l28:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 4
    je short @..api_idx_0012_RMOL.l29
    jmp near @..api_idx_0012_RMOL.l31
@..api_idx_0012_RMOL.l29:
    cmp word [bp + 0x6], byte 0
    jne short @..api_idx_0012_RMOL.l30
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    call api_idx_0012_RMOL.loc4
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    mov ax, 0xc2
    push ax
    call api_idx_0012_RMOL.loc3
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
    jmp short @..api_idx_0012_RMOL.l31
@..api_idx_0012_RMOL.l30:
    cmp word [bp + 0x6], byte 4
    jne short @..api_idx_0012_RMOL.l31
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, 0xc3
    push ax
    call api_idx_0012_RMOL.loc4
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, 0xc2
    push ax
    mov ax, 0xc3
    push ax
    call api_idx_0012_RMOL.loc3
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_RMOL.l31:
    jmp near @..api_idx_0012_RMOL.l35
@..api_idx_0012_RMOL.l32:
    cmp word [api_idx_0012_RMOL.bss5], byte 4
    je short @..api_idx_0012_RMOL.l33
    jmp near @..api_idx_0012_RMOL.l35
@..api_idx_0012_RMOL.l33:
    cmp word [bp + 0x4], byte 4
    jl short @..api_idx_0012_RMOL.l34
    jmp near @..api_idx_0012_RMOL.l35
@..api_idx_0012_RMOL.l34:
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    push ax
    push word [bp + 0x10]
    call gfx_draw_maze_piece
    add sp, byte 8
    mov ax, word [bp + 0x4]
    cmp ax, strict word 2
    jge short @..api_idx_0012_RMOL.l35
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_RMOL.l35
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x10]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x19
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4]
    add ax, strict word 0x19
    push ax
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfe
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_RMOL.l35:
    jmp short @..api_idx_0012_RMOL.l37
@..api_idx_0012_RMOL.l36:
    cmp ax, strict word 1
    jne short @..api_idx_0012_RMOL.l37
    jmp near @..api_idx_0012_RMOL.l21
@..api_idx_0012_RMOL.l37:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + api_idx_0012_RMOL.bss6]
    sub ah, ah
    jmp near @..api_idx_0012_RMOL.l45
api_idx_0012_RMOL.jumptable_case1:
    cmp word [bp + 0x4], byte 5
    jge short @..api_idx_0012_RMOL.l38
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    push ax
    push word [bp + 0xa]
    call gfx_draw_maze_piece
    add sp, byte 8
@..api_idx_0012_RMOL.l38:
    jmp near @..api_idx_0012_RMOL.l46
api_idx_0012_RMOL.jumptable_case2:
    cmp word [bp + 0x4], byte 5
    jge short @..api_idx_0012_RMOL.l39
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    push ax
    push word [bp + 0x16]
    call gfx_draw_maze_piece
    add sp, byte 8
@..api_idx_0012_RMOL.l39:
    jmp short @..api_idx_0012_RMOL.l46
api_idx_0012_RMOL.jumptable_case3:
    cmp word [bp + 0x4], byte 5
    jge short @..api_idx_0012_RMOL.l44
    mov ax, word [api_idx_0012_RMOL.bss7]
    add ax, word [bss_82e8]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    je short @..api_idx_0012_RMOL.l40
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    jmp short @..api_idx_0012_RMOL.l41
@..api_idx_0012_RMOL.l40:
    mov ax, 0xffff
@..api_idx_0012_RMOL.l41:
    push ax
    push cx
    test dx, dx
    je short @..api_idx_0012_RMOL.l42
    mov ax, word [bp + 0x36]
    add ax, word [bp + 0x4]
    jmp short @..api_idx_0012_RMOL.l43
@..api_idx_0012_RMOL.l42:
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
@..api_idx_0012_RMOL.l43:
    push ax
    push word [bp + 0x14]
    call gfx_draw_maze_piece
    add sp, byte 8
@..api_idx_0012_RMOL.l44:
    jmp short @..api_idx_0012_RMOL.l46
api_idx_0012_RMOL.jumptable_case4:
    jmp short @..api_idx_0012_RMOL.l46
api_idx_0012_RMOL.jumptable_case5:
    jmp short @..api_idx_0012_RMOL.l46
api_idx_0012_RMOL.jumptable1:
    dw api_idx_0012_RMOL.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0012_RMOL.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0012_RMOL.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0012_RMOL.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0012_RMOL.jumptable_case4 - IMAGE_BASE + __zres_end
@..api_idx_0012_RMOL.l45:
    cmp ax, strict word 5
    jae short @..api_idx_0012_RMOL.l46
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0012_RMOL.jumptable1 - IMAGE_BASE + __zres_end]
@..api_idx_0012_RMOL.l46:
    cmp word [bp - 0x0012], byte 0
    jne short @..api_idx_0012_RMOL.l47
    jmp near @..api_idx_0012_RMOL.l60
@..api_idx_0012_RMOL.l47:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + api_idx_0012_RMOL.bss8], byte 0
    jne short @..api_idx_0012_RMOL.l48
    cmp word [bx + api_idx_0012_RMOL.bss9], byte 0
    jne short @..api_idx_0012_RMOL.l48
    jmp near @..api_idx_0012_RMOL.l60
@..api_idx_0012_RMOL.l48:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_RMOL.l49
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc1
    pop cx
    push ax
    mov ax, 2
    push ax
    mov ax, word [bp + 0x26]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_RMOL.loc2
    add sp, byte 4
    push ax
    mov ax, 3
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
    jmp short @..api_idx_0012_RMOL.l53
@..api_idx_0012_RMOL.l49:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_RMOL.l53
    mov ax, 0xffff
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_RMOL.l50
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
@..api_idx_0012_RMOL.l50:
    push ax
    mov ax, 2
    push ax
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_RMOL.l51
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    jmp short @..api_idx_0012_RMOL.l52
@..api_idx_0012_RMOL.l51:
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
@..api_idx_0012_RMOL.l52:
    push ax
    mov ax, 3
    push ax
    call gfx_draw_maze_piece
    add sp, byte 8
@..api_idx_0012_RMOL.l53:
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    cmp word [bx + api_idx_0012_RMOL.bss8], byte 0
    jne short @..api_idx_0012_RMOL.l54
    jmp near @..api_idx_0012_RMOL.l60
@..api_idx_0012_RMOL.l54:
    mov cx, word [bx + api_idx_0012_RMOL.bss8]
    dec cx
    mov ax, word [party_tag]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov word [bp - 0x0004], 0
    mov ax, dx
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    test ax, ax
    jne short @..api_idx_0012_RMOL.l55
    cmp word [bp + 0x4], byte 0
    jg short @..api_idx_0012_RMOL.l56
@..api_idx_0012_RMOL.l55:
    cmp word [bp + 0x6], byte 2
    jne short @..api_idx_0012_RMOL.l57
@..api_idx_0012_RMOL.l56:
    mov cx, word [bp + 0x4]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    inc ax
    mov word [bp - 0x0004], ax
    mov ax, word [api_idx_0012_RMOL.bss3]
    mov word [bp - 0x0006], ax
    mov ax, word [bx + 0x260]
    mov word [bp - 0x0008], ax
    jmp short @..api_idx_0012_RMOL.l59
@..api_idx_0012_RMOL.l57:
    cmp word [bp + 0x4], byte 0
    jle short @..api_idx_0012_RMOL.l59
    mov ax, word [bp + 0x4]
    add ax, strict word 0x20
    mov word [bp - 0x0004], ax
    mov ax, 0
    cmp word [bp + 0x6], byte 3
    jne short @..api_idx_0012_RMOL.l58
    mov ax, 1
@..api_idx_0012_RMOL.l58:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x0008], 0
@..api_idx_0012_RMOL.l59:
    cmp word [bp - 0x0004], byte 0
    je short @..api_idx_0012_RMOL.l60
    mov ax, 0
    push ax
    push ax
    push word [bp - 0x0006]
    push ax
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 0x0004]
    push ax
    push word [bp - 0x0008]
    mov ax, 4
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_RMOL.l60:
    cmp word [bp + 0x4], byte 4
    jl short @..api_idx_0012_RMOL.l61
    jmp near @..api_idx_0012_RMOL.l82
@..api_idx_0012_RMOL.l61:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + api_idx_0012_RMOL.bss10], 3
    je short @..api_idx_0012_RMOL.l62
    jmp near @..api_idx_0012_RMOL.l68
@..api_idx_0012_RMOL.l62:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..api_idx_0012_RMOL.l63
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..api_idx_0012_RMOL.l63
    jmp near @..api_idx_0012_RMOL.l68
@..api_idx_0012_RMOL.l63:
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_0012_RMOL.l64
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..api_idx_0012_RMOL.l64
    cmp word [bss_8f22], byte 0
    je short @..api_idx_0012_RMOL.l64
    mov word [marker_mode], 0xffff
@..api_idx_0012_RMOL.l64:
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_0012_RMOL.l65
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..api_idx_0012_RMOL.l65
    mov ax, 2
    jmp short @..api_idx_0012_RMOL.l66
@..api_idx_0012_RMOL.l65:
    mov ax, 1
@..api_idx_0012_RMOL.l66:
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x4]
    cmp word [bp - 0x0004], byte 2
    je short @..api_idx_0012_RMOL.l67
    dec ax
@..api_idx_0012_RMOL.l67:
    mov word [bp - 0x0008], ax
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp - 0x0008]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp - 0x0004]
    push word [bx + dseg_03dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xc
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_RMOL.l68:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + api_idx_0012_RMOL.bss10], 1
    je short @..api_idx_0012_RMOL.l69
    cmp byte [bx + api_idx_0012_RMOL.bss10], 2
    jne short @..api_idx_0012_RMOL.l71
@..api_idx_0012_RMOL.l69:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..api_idx_0012_RMOL.l70
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..api_idx_0012_RMOL.l71
@..api_idx_0012_RMOL.l70:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    mov al, byte [bx + api_idx_0012_RMOL.bss10]
    sub ah, ah
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + dseg_03dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 0xb
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_RMOL.l71:
    mov ax, 5
    imul word [bp + 0x4]
    add ax, word [bp + 0x6]
    mov bx, ax
    cmp byte [bx + api_idx_0012_RMOL.bss11], 0
    jne short @..api_idx_0012_RMOL.l72
    jmp near @..api_idx_0012_RMOL.l82
@..api_idx_0012_RMOL.l72:
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_0012_RMOL.l73
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    jne short @..api_idx_0012_RMOL.l73
    cmp word [bss_8f22], byte 0
    je short @..api_idx_0012_RMOL.l73
    mov al, byte [bx + api_idx_0012_RMOL.bss11]
    sub ah, ah
    mov word [marker_mode], ax
    jmp near @..api_idx_0012_RMOL.l82
@..api_idx_0012_RMOL.l73:
    mov ax, word [bp + 0x4]
    cmp ax, strict word 0
    jg short @..api_idx_0012_RMOL.l74
    mov ax, word [bp + 0x6]
    cmp ax, strict word 2
    je short @..api_idx_0012_RMOL.l74
    jmp near @..api_idx_0012_RMOL.l82
@..api_idx_0012_RMOL.l74:
    mov al, byte [bx + api_idx_0012_RMOL.bss11]
    sub ah, ah
    mov cx, ax
    dec ax
    mov cx, ax
    mov ax, word [party_tag]
    sub ax, cx
    add ax, strict word 6
    mov cx, 4
    cwd
    idiv cx
    mov word [bp - 0x0002], dx
    mov ax, dx
    jmp near @..api_idx_0012_RMOL.l79
@..api_idx_0012_RMOL.l75:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    mov ax, 5
    cmp word [bp - 0x0002], byte 0
    jne short @..api_idx_0012_RMOL.l76
    mov ax, 4
@..api_idx_0012_RMOL.l76:
    push ax
    mov ax, 2
    push ax
    mov ax, 1
    push ax
    push word [bx + dseg_03dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
    jmp short @..api_idx_0012_RMOL.l82
@..api_idx_0012_RMOL.l77:
    mov ax, 1
    push ax
    push ax
    mov ax, 0
    cmp word [bp - 0x0002], byte 3
    jne short @..api_idx_0012_RMOL.l78
    mov ax, 1
@..api_idx_0012_RMOL.l78:
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 0x4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 3
    push ax
    push word [bx + dseg_03dc]
    mov ax, 0xa
    imul word [bp + 0x4]
    mov cx, word [bp + 0x6]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x3aa]
    mov ax, 3
    push ax
    call api_idx_0012_RMOL.api_idx1
    add sp, byte 0x1c
    jmp short @..api_idx_0012_RMOL.l82
@..api_idx_0012_RMOL.l79:
    cmp ax, strict word 0
    jne short @..api_idx_0012_RMOL.l80
    jmp near @..api_idx_0012_RMOL.l75
@..api_idx_0012_RMOL.l80:
    cmp ax, strict word 1
    je short @..api_idx_0012_RMOL.l77
    cmp ax, strict word 2
    jne short @..api_idx_0012_RMOL.l81
    jmp near @..api_idx_0012_RMOL.l75
@..api_idx_0012_RMOL.l81:
    cmp ax, strict word 3
    je short @..api_idx_0012_RMOL.l77
@..api_idx_0012_RMOL.l82:
    ret
