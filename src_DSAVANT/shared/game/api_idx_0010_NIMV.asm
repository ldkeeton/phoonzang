; auto-generated
api_idx_0010_NIMV:
    mov ax, 0xfff0
    call aztec_csav
    mov ax, 4
    cmp word [boundary_wall_variant], byte 0
    jne short @..api_idx_0010_NIMV.l1
    mov ax, 3
@..api_idx_0010_NIMV.l1:
    mov word [bp - 0xa], ax
    mov word [bp - 2], 0xffff
    mov word [bp - 4], 0xffff
    cmp word [boundary_wall_variant], byte 0
    jg short @..api_idx_0010_NIMV.l2
    jmp near @..api_idx_0010_NIMV.l11
@..api_idx_0010_NIMV.l2:
    cmp word [bp + 4], byte 3
    je short @..api_idx_0010_NIMV.l3
    jmp near @..api_idx_0010_NIMV.l11
@..api_idx_0010_NIMV.l3:
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 3
    jl short @..api_idx_0010_NIMV.l4
    cmp ax, strict word 5
    jne short @..api_idx_0010_NIMV.l5
@..api_idx_0010_NIMV.l4:
    mov ax, 0x15
    jmp short @..api_idx_0010_NIMV.l6
@..api_idx_0010_NIMV.l5:
    mov ax, 0x14
@..api_idx_0010_NIMV.l6:
    mov word [bp - 0xc], ax
    cmp word [boundary_wall_variant], byte 3
    jl short @..api_idx_0010_NIMV.l7
    cmp word [boundary_wall_variant], byte 5
    jne short @..api_idx_0010_NIMV.l8
@..api_idx_0010_NIMV.l7:
    mov ax, 0x16
    jmp short @..api_idx_0010_NIMV.l9
@..api_idx_0010_NIMV.l8:
    mov ax, 0x15
@..api_idx_0010_NIMV.l9:
    mov word [bp - 0xe], ax
    cmp word [bp + 8], byte 0
    jne short @..api_idx_0010_NIMV.l10
    push ax
    push word [bp - 0xc]
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    mov word [bp - 2], ax
    push word [bp - 0xc]
    call api_idx_0010_NIMV.loc2
    pop cx
    mov word [bp - 4], ax
    jmp short @..api_idx_0010_NIMV.l11
@..api_idx_0010_NIMV.l10:
    cmp word [bp + 8], byte 4
    jne short @..api_idx_0010_NIMV.l11
    push word [bp - 0xc]
    push word [bp - 0xe]
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    mov word [bp - 2], ax
    push word [bp - 0xe]
    call api_idx_0010_NIMV.loc2
    pop cx
    mov word [bp - 4], ax
@..api_idx_0010_NIMV.l11:
    mov ax, word [bp + 6]
    jmp near @..api_idx_0010_NIMV.l25
api_idx_0010_NIMV.jumptable_case1:
    cmp word [bp - 2], byte 0xff
    je short @..api_idx_0010_NIMV.l13
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push word [bp - 4]
    mov ax, 0
    push ax
    push ax
    push ax
    cmp word [bp + 4], byte 1
    jne short @..api_idx_0010_NIMV.l12
    mov ax, 2
@..api_idx_0010_NIMV.l12:
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 2]
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l13:
    jmp near api_idx_0010_NIMV.jumptable_case2
api_idx_0010_NIMV.jumptable_case3:
    cmp word [bp - 2], byte 0xff
    je short @..api_idx_0010_NIMV.l14
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push word [bp - 4]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 2]
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l14:
    jmp near api_idx_0010_NIMV.jumptable_case2
api_idx_0010_NIMV.jumptable_case4:
    cmp word [boundary_wall_variant], byte 0
    jne short @..api_idx_0010_NIMV.l17
    cmp word [bp + 4], byte 3
    jge short @..api_idx_0010_NIMV.l16
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov cx, word [bp + 4]
    cmp cx, byte 1
    jne short @..api_idx_0010_NIMV.l15
    mov ax, 2
@..api_idx_0010_NIMV.l15:
    push ax
    mov ax, 0xffff
    push ax
    add cx, word [bp + 0x18]
    mov ax, cx
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l16:
    jmp near @..api_idx_0010_NIMV.l21
@..api_idx_0010_NIMV.l17:
    cmp word [boundary_wall_variant], byte 3
    jl short @..api_idx_0010_NIMV.l18
    cmp word [boundary_wall_variant], byte 5
    jne short @..api_idx_0010_NIMV.l20
@..api_idx_0010_NIMV.l18:
    cmp word [bp + 4], byte 4
    jge short @..api_idx_0010_NIMV.l19
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x10]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x32]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x34]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x32]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l19:
    jmp short @..api_idx_0010_NIMV.l21
@..api_idx_0010_NIMV.l20:
    cmp word [boundary_wall_variant], byte 5
    jge short @..api_idx_0010_NIMV.l21
    cmp word [bp + 4], byte 4
    jge short @..api_idx_0010_NIMV.l21
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x14]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x46]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x48]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x46]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l21:
    jmp near api_idx_0010_NIMV.jumptable_case2
api_idx_0010_NIMV.jumptable_case5:
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short @..api_idx_0010_NIMV.l24
    cmp word [bp + 4], byte 4
    jge short @..api_idx_0010_NIMV.l24
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    push cx
    mov ax, 0xffff
    push ax
    cmp word [api_idx_0010_NIMV.bss1], byte 0
    je short @..api_idx_0010_NIMV.l22
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 4]
    jmp short @..api_idx_0010_NIMV.l23
@..api_idx_0010_NIMV.l22:
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 4]
@..api_idx_0010_NIMV.l23:
    push ax
    mov ax, 0xfc
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l24:
    jmp short api_idx_0010_NIMV.jumptable_case2
api_idx_0010_NIMV.jumptable1:
    dw api_idx_0010_NIMV.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case4 - IMAGE_BASE + __zres_end
@..api_idx_0010_NIMV.l25:
    cmp ax, strict word 0x10
    jae short api_idx_0010_NIMV.jumptable_case2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0010_NIMV.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0010_NIMV.jumptable_case2:
    mov word [bp - 2], 0xffff
    mov word [bp - 4], 0xffff
    mov ax, word [bp + 4]
    cmp ax, word [bp - 0xa]
    jl short @..api_idx_0010_NIMV.l27
    jmp near @..api_idx_0010_NIMV.l49
@..api_idx_0010_NIMV.l27:
    mov word [bp - 0x10], 0xffff
    mov ax, word [bp + 6]
    jmp near @..api_idx_0010_NIMV.l47
api_idx_0010_NIMV.jumptable_case6:
    mov ax, word [bp + 0x2e]
    cmp word [bp + 6], byte 8
    jne short @..api_idx_0010_NIMV.l28
    mov ax, word [bp + 0x2a]
@..api_idx_0010_NIMV.l28:
    mov word [bp - 6], ax
    mov ax, word [bp + 0x30]
    cmp word [bp + 6], byte 8
    jne short @..api_idx_0010_NIMV.l29
    mov ax, word [bp + 0x2c]
@..api_idx_0010_NIMV.l29:
    mov word [bp - 8], ax
    mov ax, word [bp - 6]
    add ax, word [bp + 4]
    inc ax
    inc ax
    inc ax
    mov word [bp - 2], ax
    mov word [bp - 4], 0xffff
api_idx_0010_NIMV.jumptable_case7:
    cmp word [bp + 6], byte 7
    jne short api_idx_0010_NIMV.jumptable_case8
    mov ax, word [bp + 0x44]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    mov word [bp - 2], ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    mov word [bp - 4], ax
api_idx_0010_NIMV.jumptable_case8:
    cmp word [boundary_wall_variant], byte 0
    jne short @..api_idx_0010_NIMV.l31
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
    jmp short @..api_idx_0010_NIMV.l32
@..api_idx_0010_NIMV.l31:
    cmp word [boundary_wall_variant], byte 2
    jne short @..api_idx_0010_NIMV.l32
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    push word [bp - 4]
    mov ax, word [bp + 0x36]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 2]
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x36]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l32:
    cmp word [bp + 6], byte 3
    je short @..api_idx_0010_NIMV.l33
    jmp near @..api_idx_0010_NIMV.l36
@..api_idx_0010_NIMV.l33:
    cmp word [bss_831a], byte 0
    je short @..api_idx_0010_NIMV.l34
    cmp word [bp + 4], byte 0
    jne short @..api_idx_0010_NIMV.l34
    cmp word [bp + 8], byte 2
    jne short @..api_idx_0010_NIMV.l34
    mov ax, 0
    push ax
    push ax
    push ax
    push ax
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bss_831a]
    add ax, strict word 0xc
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
    jmp near @..api_idx_0010_NIMV.l35
@..api_idx_0010_NIMV.l34:
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0010_NIMV.bss2]
    push ax
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 4]
    shl ax, 1
    add ax, word [api_idx_0010_NIMV.bss2]
    add ax, strict word 5
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0010_NIMV.bss2]
    push ax
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 4]
    inc ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l35:
    jmp short @..api_idx_0010_NIMV.l37
@..api_idx_0010_NIMV.l36:
    cmp word [bp + 6], byte 6
    jne short @..api_idx_0010_NIMV.l37
    mov ax, 0
    push ax
    push ax
    push word [api_idx_0010_NIMV.bss2]
    push ax
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, word [bp + 4]
    inc ax
    push ax
    mov ax, 0
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x36e]
    mov ax, 5
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l37:
    cmp word [boundary_wall_variant], byte 0
    jne short @..api_idx_0010_NIMV.l38
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, word [bp + 0x26]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x26]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
    jmp short @..api_idx_0010_NIMV.l39
@..api_idx_0010_NIMV.l38:
    cmp word [boundary_wall_variant], byte 2
    jne short @..api_idx_0010_NIMV.l39
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l39:
    cmp word [bp + 6], byte 8
    je short @..api_idx_0010_NIMV.l40
    cmp word [bp + 6], byte 9
    jne short @..api_idx_0010_NIMV.l41
@..api_idx_0010_NIMV.l40:
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    mov ax, word [bp - 6]
    add ax, word [bp + 4]
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l41:
    jmp near api_idx_0010_NIMV.jumptable_case9
api_idx_0010_NIMV.jumptable_case10:
    cmp word [bp + 4], byte 4
    jge short @..api_idx_0010_NIMV.l42
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0x12]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x4a]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc2
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
    mov ax, word [bp + 0x4c]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x4a]
    add ax, word [bp + 4]
    push ax
    call api_idx_0010_NIMV.loc1
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l42:
    jmp near api_idx_0010_NIMV.jumptable_case9
api_idx_0010_NIMV.jumptable_case11:
    mov word [bp - 0x10], 9
    mov word [bp - 0xc], 1
    mov ax, word [party_status_frame]
    inc ax
    inc ax
    mov word [bp - 0xe], ax
    jmp near api_idx_0010_NIMV.jumptable_case9
api_idx_0010_NIMV.jumptable_case12:
    mov word [bp - 0x10], 9
    mov word [bp - 0xc], 7
    mov ax, 0
    cmp word [party_status_frame], byte 0
    je short @..api_idx_0010_NIMV.l43
    mov ax, 8
@..api_idx_0010_NIMV.l43:
    mov word [bp - 0xe], ax
    jmp short api_idx_0010_NIMV.jumptable_case9
api_idx_0010_NIMV.jumptable_case13:
    mov word [bp - 0x10], 0xa
    mov ax, 5
    cmp word [boundary_wall_variant], byte 0
    jne short @..api_idx_0010_NIMV.l44
    mov ax, 1
@..api_idx_0010_NIMV.l44:
    mov cx, 0
    cmp word [bp + 6], byte 0xd
    jne short @..api_idx_0010_NIMV.l45
    mov cx, 1
@..api_idx_0010_NIMV.l45:
    add ax, cx
    mov word [bp - 0xc], ax
    mov word [bp - 0xe], 0
    jmp short api_idx_0010_NIMV.jumptable_case9
api_idx_0010_NIMV.jumptable_case14:
    mov word [bp - 0x10], 0xa
    mov word [bp - 0xc], 9
    mov ax, 0xb
    cmp word [bp + 6], byte 0xe
    jne short @..api_idx_0010_NIMV.l46
    mov ax, 0xa
@..api_idx_0010_NIMV.l46:
    mov word [bp - 0xe], ax
    jmp short api_idx_0010_NIMV.jumptable_case9
api_idx_0010_NIMV.jumptable2:
    dw api_idx_0010_NIMV.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case10 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case7 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case12 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case13 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case13 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case14 - IMAGE_BASE + __zres_end
    dw api_idx_0010_NIMV.jumptable_case14 - IMAGE_BASE + __zres_end
@..api_idx_0010_NIMV.l47:
    cmp ax, strict word 0x10
    jae short api_idx_0010_NIMV.jumptable_case9
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0010_NIMV.jumptable2 - IMAGE_BASE + __zres_end]
api_idx_0010_NIMV.jumptable_case9:
    cmp word [bp - 0x10], byte 0xff
    je short @..api_idx_0010_NIMV.l49
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [api_idx_0010_NIMV.bss2]
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    push word [bx + 0x576]
    push word [bp + 4]
    mov ax, 0xf8
    push ax
    mov ax, 0x48
    push ax
    mov ax, 0
    push ax
    push ax
    push word [bp - 0xe]
    push word [bp - 0xc]
    push ax
    mov ax, 0xa
    imul word [bp + 4]
    mov cx, word [bp + 8]
    shl cx, 1
    add ax, cx
    mov bx, ax
    push word [bx + 0x36e]
    push word [bp - 0x10]
    call api_idx_0010_NIMV.api_idx1
    add sp, byte 0x1c
@..api_idx_0010_NIMV.l49:
    ret
