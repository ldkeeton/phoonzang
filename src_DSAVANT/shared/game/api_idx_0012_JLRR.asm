; auto-generated
api_idx_0012_JLRR:
    mov ax, 0xffee
    call aztec_csav
    mov word [bp - 4], 0xffff
    mov word [bp - 6], 0xffff
    mov ax, word [bp + 6]
    jmp near .forward34
api_idx_0012_JLRR.jumptable_case1:
    cmp word [bp + 0x26], byte -1
    jne short api_idx_0012_JLRR.forward1
    jmp near api_idx_0012_JLRR.jumptable_case2
api_idx_0012_JLRR.forward1:
    cmp word [bp + 4], byte 0
    je short api_idx_0012_JLRR.forward2
    jmp near api_idx_0012_JLRR.jumptable_case2
api_idx_0012_JLRR.forward2:
    cmp word [bp + 6], byte 8
    jne short api_idx_0012_JLRR.forward3
    mov ax, word [bp + 0x26]
    inc ax
    jmp short api_idx_0012_JLRR.forward4
api_idx_0012_JLRR.forward3:
    mov ax, word [bp + 0x26]
    inc ax
    inc ax
    inc ax
api_idx_0012_JLRR.forward4:
    mov word [bp - 2], ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    cmp word [bp + 8], byte 2
    jge short api_idx_0012_JLRR.forward5
    mov ax, word [bp - 2]
    inc ax
api_idx_0012_JLRR.forward5:
    push ax
    mov ax, 0xffff
    cmp word [bp + 8], byte 2
    jge short api_idx_0012_JLRR.forward6
    mov ax, word [bp - 2]
api_idx_0012_JLRR.forward6:
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    cmp word [bp + 6], byte 8
    jne short api_idx_0012_JLRR.forward7
    cmp word [bp + 8], byte 2
    jg short api_idx_0012_JLRR.forward8
api_idx_0012_JLRR.forward7:
    cmp word [bp + 6], byte 9
    jne short api_idx_0012_JLRR.forward9
    cmp word [bp + 8], byte 2
    jge short api_idx_0012_JLRR.forward9
api_idx_0012_JLRR.forward8:
    mov ax, word [bp - 2]
    inc ax
    jmp short api_idx_0012_JLRR.forward10
api_idx_0012_JLRR.forward9:
    mov ax, 0xffff
api_idx_0012_JLRR.forward10:
    push ax
    push word [bp - 2]
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.jumptable_case2:
    cmp word [bp + 6], byte 3
    je short api_idx_0012_JLRR.forward12
    jmp near api_idx_0012_JLRR.forward15
api_idx_0012_JLRR.forward12:
    cmp word [bp + 4], byte 4
    jl short api_idx_0012_JLRR.forward13
    jmp near api_idx_0012_JLRR.forward15
api_idx_0012_JLRR.forward13:
    cmp word [bp + 0x34], byte -1
    je short api_idx_0012_JLRR.forward14
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
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
    mov ax, word [bp + 0x36]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward14:
    mov ax, word [bp + 0x32]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    mov word [bp - 4], ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    mov word [bp - 6], ax
api_idx_0012_JLRR.forward15:
    cmp word [bp + 6], byte 6
    jne short api_idx_0012_JLRR.jumptable_case3
    cmp word [bp + 4], byte 4
    jge short api_idx_0012_JLRR.jumptable_case3
    mov ax, word [bp + 0x24]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    mov word [bp - 4], ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    mov word [bp - 6], ax
api_idx_0012_JLRR.jumptable_case3:
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0012_JLRR.forward18
    cmp word [bp + 4], byte 4
    jge short api_idx_0012_JLRR.forward17
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    push word [bp - 6]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 4]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward17:
    jmp short api_idx_0012_JLRR.forward19
api_idx_0012_JLRR.forward18:
    cmp word [boundary_wall_variant], byte 2
    jne short api_idx_0012_JLRR.forward19
    cmp word [bp + 4], byte 5
    jge short api_idx_0012_JLRR.forward19
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    push word [bp - 6]
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 4]
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward19:
    cmp word [bp + 0x26], byte -1
    je short api_idx_0012_JLRR.forward22
    cmp word [bp + 4], byte 0
    jne short api_idx_0012_JLRR.forward22
    cmp word [bp + 6], byte 8
    je short api_idx_0012_JLRR.forward20
    cmp word [bp + 6], byte 9
    jne short api_idx_0012_JLRR.forward22
api_idx_0012_JLRR.forward20:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 8], byte 2
    jge short api_idx_0012_JLRR.forward21
    mov ax, word [bp + 0x26]
api_idx_0012_JLRR.forward21:
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp + 0x26]
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward22:
    jmp near api_idx_0012_JLRR.jumptable_case4
api_idx_0012_JLRR.jumptable_case5:
    cmp word [bp + 4], byte 4
    jge short api_idx_0012_JLRR.jumptable_case6
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    mov word [bp - 4], ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    mov word [bp - 6], ax
api_idx_0012_JLRR.jumptable_case6:
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0012_JLRR.forward25
    cmp word [bp + 4], byte 4
    jge short api_idx_0012_JLRR.forward24
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    push word [bp - 6]
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    push word [bp - 4]
    mov ax, word [bp + 0x18]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward24:
    jmp near api_idx_0012_JLRR.forward31
api_idx_0012_JLRR.forward25:
    cmp word [boundary_wall_variant], byte 3
    jl short api_idx_0012_JLRR.forward26
    cmp word [boundary_wall_variant], byte 5
    je short api_idx_0012_JLRR.forward26
    jmp near api_idx_0012_JLRR.forward30
api_idx_0012_JLRR.forward26:
    cmp word [bp + 4], byte 5
    jl short api_idx_0012_JLRR.forward27
    jmp near api_idx_0012_JLRR.forward29
api_idx_0012_JLRR.forward27:
    cmp word [boundary_wall_variant], byte 2
    jne short api_idx_0012_JLRR.forward28
    cmp word [bp - 4], byte -1
    je short api_idx_0012_JLRR.forward28
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    push word [bp - 6]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 4]
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward28:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x10]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
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
    mov ax, word [bp + 0x2a]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward29:
    jmp short api_idx_0012_JLRR.forward31
api_idx_0012_JLRR.forward30:
    cmp word [boundary_wall_variant], byte 5
    jge short api_idx_0012_JLRR.forward31
    cmp word [bp + 4], byte 4
    jge short api_idx_0012_JLRR.forward31
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x14]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
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
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward31:
    jmp near api_idx_0012_JLRR.jumptable_case4
api_idx_0012_JLRR.jumptable_case7:
    cmp word [bp + 4], byte 4
    jge short api_idx_0012_JLRR.forward32
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xc]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc3
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
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc4
    add sp, byte 4
    push ax
    mov ax, 0xfb
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward32:
    jmp near api_idx_0012_JLRR.jumptable_case4
api_idx_0012_JLRR.jumptable_case8:
    cmp word [bp + 4], byte 4
    jge short api_idx_0012_JLRR.forward33
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x12]
    push word [bp + 4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc1
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
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.forward33:
    jmp short api_idx_0012_JLRR.jumptable_case4
api_idx_0012_JLRR.jumptable1:
    dw api_idx_0012_JLRR.jumptable_case4 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case3 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case7 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case8 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case2 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case5 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case1 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case6 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case6 - IMAGE_BASE + __zres_end
api_idx_0012_JLRR.forward34:
    cmp ax, strict word 0x10
    jae short api_idx_0012_JLRR.jumptable_case4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0012_JLRR.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0012_JLRR.jumptable_case4:
    cmp word [bp + 4], byte 4
    jl short api_idx_0012_JLRR.forward35
    jmp near api_idx_0012_JLRR.return1
api_idx_0012_JLRR.forward35:
    cmp word [bp + 8], byte 1
    je short api_idx_0012_JLRR.forward36
    cmp word [bp + 8], byte 3
    jne short api_idx_0012_JLRR.forward37
api_idx_0012_JLRR.forward36:
    mov ax, 0
    jmp short api_idx_0012_JLRR.forward38
api_idx_0012_JLRR.forward37:
    mov ax, 1
api_idx_0012_JLRR.forward38:
    mov word [bp - 0x12], ax
    mov ax, 0
    cmp word [bp + 8], byte 2
    jle short api_idx_0012_JLRR.forward39
    mov ax, 1
api_idx_0012_JLRR.forward39:
    mov word [bp - 6], ax
    mov word [bp - 0xc], 0xffff
    mov ax, word [bp + 6]
    jmp near api_idx_0012_JLRR.forward48
api_idx_0012_JLRR.jumptable_case9:
    mov word [bp - 0xc], 9
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x3e6]
    mov word [bp - 0xe], ax
    mov ax, word [bx + 0x3e8]
    mov word [bp - 0x10], ax
    mov word [bp - 8], 4
    mov ax, word [party_status_frame]
    add ax, strict word 5
    mov word [bp - 0xa], ax
    jmp near api_idx_0012_JLRR.forward49
api_idx_0012_JLRR.jumptable_case10:
    mov word [bp - 0xc], 9
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x436]
    mov word [bp - 0xe], ax
    mov ax, word [bx + 0x438]
    mov word [bp - 0x10], ax
    mov word [bp - 8], 9
    mov ax, 0
    cmp word [party_status_frame], byte 0
    je short api_idx_0012_JLRR.forward40
    mov ax, 0xa
api_idx_0012_JLRR.forward40:
    mov word [bp - 0xa], ax
    jmp near api_idx_0012_JLRR.forward49
api_idx_0012_JLRR.jumptable_case11:
    mov word [bp - 0xc], 0xa
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0012_JLRR.forward41
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x486]
    jmp short api_idx_0012_JLRR.forward42
api_idx_0012_JLRR.forward41:
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x4d6]
api_idx_0012_JLRR.forward42:
    mov word [bp - 0xe], ax
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0012_JLRR.forward43
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x488]
    jmp short api_idx_0012_JLRR.forward44
api_idx_0012_JLRR.forward43:
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x4d8]
api_idx_0012_JLRR.forward44:
    mov word [bp - 0x10], ax
    mov ax, 7
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0012_JLRR.forward45
    mov ax, 3
api_idx_0012_JLRR.forward45:
    mov cx, 0
    cmp word [bp + 6], byte 0xd
    jne short api_idx_0012_JLRR.forward46
    mov cx, 1
api_idx_0012_JLRR.forward46:
    add ax, cx
    mov word [bp - 8], ax
    mov word [bp - 0xa], 0
    jmp short api_idx_0012_JLRR.forward49
api_idx_0012_JLRR.jumptable_case12:
    mov word [bp - 0xc], 0xa
    mov ax, word [bp + 4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x12]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 6]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x526]
    mov word [bp - 0xe], ax
    mov ax, word [bx + 0x528]
    mov word [bp - 0x10], ax
    mov word [bp - 8], 0xc
    mov ax, 0xe
    cmp word [bp + 6], byte 0xe
    jne short api_idx_0012_JLRR.forward47
    mov ax, 0xd
api_idx_0012_JLRR.forward47:
    mov word [bp - 0xa], ax
    jmp short api_idx_0012_JLRR.forward49
api_idx_0012_JLRR.jumptable2:
    dw api_idx_0012_JLRR.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case10 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case12 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case12 - IMAGE_BASE + __zres_end
api_idx_0012_JLRR.forward48:
    sub ax, strict word 0xa
    cmp ax, strict word 6
    jae short api_idx_0012_JLRR.forward49
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0012_JLRR.jumptable2 - IMAGE_BASE + __zres_end]
api_idx_0012_JLRR.forward49:
    cmp word [bp - 0xc], byte -1
    je short api_idx_0012_JLRR.return1
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    push word [bp - 6]
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
    push word [bp - 0xa]
    push word [bp - 8]
    push word [bp - 0x10]
    push word [bp - 0xe]
    push word [bp - 0xc]
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.return1:
    ret
