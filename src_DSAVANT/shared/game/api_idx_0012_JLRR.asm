; auto-generated
api_idx_0012_JLRR:
    mov ax, 0xffee
    call aztec_csav
    mov word [bp - 0x0004], 0xffff
    mov word [bp - 0x0006], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..api_idx_0012_JLRR.l34
api_idx_0012_JLRR.jumptable_case1:
    cmp word [bp + 0x26], byte 0xff
    jne short @..api_idx_0012_JLRR.l1
    jmp near @..api_idx_0012_JLRR.l11
@..api_idx_0012_JLRR.l1:
    cmp word [bp + 0x4], byte 0
    je short @..api_idx_0012_JLRR.l2
    jmp near @..api_idx_0012_JLRR.l11
@..api_idx_0012_JLRR.l2:
    cmp word [bp + 0x6], byte 8
    jne short @..api_idx_0012_JLRR.l3
    mov ax, word [bp + 0x26]
    inc ax
    jmp short @..api_idx_0012_JLRR.l4
@..api_idx_0012_JLRR.l3:
    mov ax, word [bp + 0x26]
    inc ax
    inc ax
    inc ax
@..api_idx_0012_JLRR.l4:
    mov word [bp - 0x0002], ax
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012_JLRR.l5
    mov ax, word [bp - 0x0002]
    inc ax
@..api_idx_0012_JLRR.l5:
    push ax
    mov ax, 0xffff
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012_JLRR.l6
    mov ax, word [bp - 0x0002]
@..api_idx_0012_JLRR.l6:
    push ax
    mov ax, 0
    push ax
    push ax
    mov ax, 2
    push ax
    push ax
    cmp word [bp + 0x6], byte 8
    jne short @..api_idx_0012_JLRR.l7
    cmp word [bp + 0x8], byte 2
    jg short @..api_idx_0012_JLRR.l8
@..api_idx_0012_JLRR.l7:
    cmp word [bp + 0x6], byte 9
    jne short @..api_idx_0012_JLRR.l9
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012_JLRR.l9
@..api_idx_0012_JLRR.l8:
    mov ax, word [bp - 0x0002]
    inc ax
    jmp short @..api_idx_0012_JLRR.l10
@..api_idx_0012_JLRR.l9:
    mov ax, 0xffff
@..api_idx_0012_JLRR.l10:
    push ax
    push word [bp - 0x0002]
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
api_idx_0012_JLRR.jumptable_case2:
@..api_idx_0012_JLRR.l11:
    cmp word [bp + 0x6], byte 3
    je short @..api_idx_0012_JLRR.l12
    jmp near @..api_idx_0012_JLRR.l15
@..api_idx_0012_JLRR.l12:
    cmp word [bp + 0x4], byte 4
    jl short @..api_idx_0012_JLRR.l13
    jmp near @..api_idx_0012_JLRR.l15
@..api_idx_0012_JLRR.l13:
    cmp word [bp + 0x34], byte 0xff
    je short @..api_idx_0012_JLRR.l14
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
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
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x34]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l14:
    mov ax, word [bp + 0x32]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x30]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    mov word [bp - 0x0006], ax
@..api_idx_0012_JLRR.l15:
    cmp word [bp + 0x6], byte 6
    jne short @..api_idx_0012_JLRR.l16
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_JLRR.l16
    mov ax, word [bp + 0x24]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    mov word [bp - 0x0006], ax
api_idx_0012_JLRR.jumptable_case3:
@..api_idx_0012_JLRR.l16:
    cmp word [api_idx_0012_JLRR.location_changed1], byte 0
    jne short @..api_idx_0012_JLRR.l18
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_JLRR.l17
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
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
    push word [bp - 0x0004]
    mov ax, word [bp + 0x20]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1e]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l17:
    jmp short @..api_idx_0012_JLRR.l19
@..api_idx_0012_JLRR.l18:
    cmp word [api_idx_0012_JLRR.location_changed1], byte 2
    jne short @..api_idx_0012_JLRR.l19
    cmp word [bp + 0x4], byte 5
    jge short @..api_idx_0012_JLRR.l19
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
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
    push word [bp - 0x0004]
    mov ax, word [bp + 0x2e]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x2c]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l19:
    cmp word [bp + 0x26], byte 0xff
    je short @..api_idx_0012_JLRR.l22
    cmp word [bp + 0x4], byte 0
    jne short @..api_idx_0012_JLRR.l22
    cmp word [bp + 0x6], byte 8
    je short @..api_idx_0012_JLRR.l20
    cmp word [bp + 0x6], byte 9
    jne short @..api_idx_0012_JLRR.l22
@..api_idx_0012_JLRR.l20:
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    cmp word [bp + 0x8], byte 2
    jge short @..api_idx_0012_JLRR.l21
    mov ax, word [bp + 0x26]
@..api_idx_0012_JLRR.l21:
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
@..api_idx_0012_JLRR.l22:
    jmp near api_idx_0012_JLRR.jumptable_case4
api_idx_0012_JLRR.jumptable_case5:
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_JLRR.l23
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    mov word [bp - 0x0004], ax
    mov ax, word [bp + 0x38]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc1
    pop cx
    mov word [bp - 0x0006], ax
api_idx_0012_JLRR.jumptable_case6:
@..api_idx_0012_JLRR.l23:
    cmp word [api_idx_0012_JLRR.location_changed1], byte 0
    jne short @..api_idx_0012_JLRR.l25
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_JLRR.l24
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xa]
    push word [bp + 0x4]
    push word [bp - 0x0006]
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
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
    push word [bp - 0x0004]
    mov ax, word [bp + 0x18]
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l24:
    jmp near @..api_idx_0012_JLRR.l31
@..api_idx_0012_JLRR.l25:
    cmp word [api_idx_0012_JLRR.location_changed1], byte 3
    jl short @..api_idx_0012_JLRR.l26
    cmp word [api_idx_0012_JLRR.location_changed1], byte 5
    je short @..api_idx_0012_JLRR.l26
    jmp near @..api_idx_0012_JLRR.l30
@..api_idx_0012_JLRR.l26:
    cmp word [bp + 0x4], byte 5
    jl short @..api_idx_0012_JLRR.l27
    jmp near @..api_idx_0012_JLRR.l29
@..api_idx_0012_JLRR.l27:
    cmp word [api_idx_0012_JLRR.location_changed1], byte 2
    jne short @..api_idx_0012_JLRR.l28
    cmp word [bp - 0x0004], byte 0xff
    je short @..api_idx_0012_JLRR.l28
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xe]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    push word [bp - 0x0006]
    mov ax, 0
    push ax
    push ax
    push ax
    mov ax, 2
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 0x0004]
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l28:
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
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
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
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x28]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l29:
    jmp short @..api_idx_0012_JLRR.l31
@..api_idx_0012_JLRR.l30:
    cmp word [api_idx_0012_JLRR.location_changed1], byte 5
    jge short @..api_idx_0012_JLRR.l31
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_JLRR.l31
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x14]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
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
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l31:
    jmp near api_idx_0012_JLRR.jumptable_case4
api_idx_0012_JLRR.jumptable_case7:
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_JLRR.l32
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0xc]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
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
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc4
    add sp, byte 4
    push ax
    mov ax, 0xfb
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l32:
    jmp near api_idx_0012_JLRR.jumptable_case4
api_idx_0012_JLRR.jumptable_case8:
    cmp word [bp + 0x4], byte 4
    jge short @..api_idx_0012_JLRR.l33
    mov ax, 0
    push ax
    mov ax, 1
    push ax
    mov ax, 0
    push ax
    push word [bp + 0x12]
    push word [bp + 0x4]
    mov ax, 0xffff
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
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
    add ax, word [bp + 0x4]
    push ax
    mov ax, word [bp + 0x40]
    add ax, word [bp + 0x4]
    push ax
    call api_idx_0012_JLRR.loc2
    add sp, byte 4
    push ax
    mov ax, 0xfd
    push ax
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l33:
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
@..api_idx_0012_JLRR.l34:
    cmp ax, strict word 0x10
    jae short api_idx_0012_JLRR.jumptable_case4
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0012_JLRR.jumptable1 - IMAGE_BASE + __zres_end]
api_idx_0012_JLRR.jumptable_case4:
    cmp word [bp + 0x4], byte 4
    jl short @..api_idx_0012_JLRR.l35
    jmp near @..api_idx_0012_JLRR.l50
@..api_idx_0012_JLRR.l35:
    cmp word [bp + 0x8], byte 1
    je short @..api_idx_0012_JLRR.l36
    cmp word [bp + 0x8], byte 3
    jne short @..api_idx_0012_JLRR.l37
@..api_idx_0012_JLRR.l36:
    mov ax, 0
    jmp short @..api_idx_0012_JLRR.l38
@..api_idx_0012_JLRR.l37:
    mov ax, 1
@..api_idx_0012_JLRR.l38:
    mov word [bp - 0x0012], ax
    mov ax, 0
    cmp word [bp + 0x8], byte 2
    jle short @..api_idx_0012_JLRR.l39
    mov ax, 1
@..api_idx_0012_JLRR.l39:
    mov word [bp - 0x0006], ax
    mov word [bp - 0x000c], 0xffff
    mov ax, word [bp + 0x6]
    jmp near @..api_idx_0012_JLRR.l48
api_idx_0012_JLRR.jumptable_case9:
    mov word [bp - 0x000c], 9
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x3e6]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x3e8]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 4
    mov ax, word [party_status_frame]
    add ax, strict word 5
    mov word [bp - 0x000a], ax
    jmp near @..api_idx_0012_JLRR.l49
api_idx_0012_JLRR.jumptable_case10:
    mov word [bp - 0x000c], 9
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x436]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x438]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 9
    mov ax, 0
    cmp word [party_status_frame], byte 0
    je short @..api_idx_0012_JLRR.l40
    mov ax, 0xa
@..api_idx_0012_JLRR.l40:
    mov word [bp - 0x000a], ax
    jmp near @..api_idx_0012_JLRR.l49
api_idx_0012_JLRR.jumptable_case11:
    mov word [bp - 0x000c], 0xa
    cmp word [api_idx_0012_JLRR.location_changed1], byte 0
    jne short @..api_idx_0012_JLRR.l41
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x486]
    jmp short @..api_idx_0012_JLRR.l42
@..api_idx_0012_JLRR.l41:
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x4d6]
@..api_idx_0012_JLRR.l42:
    mov word [bp - 0x000e], ax
    cmp word [api_idx_0012_JLRR.location_changed1], byte 0
    jne short @..api_idx_0012_JLRR.l43
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x488]
    jmp short @..api_idx_0012_JLRR.l44
@..api_idx_0012_JLRR.l43:
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x4d8]
@..api_idx_0012_JLRR.l44:
    mov word [bp - 0x0010], ax
    mov ax, 7
    cmp word [api_idx_0012_JLRR.location_changed1], byte 0
    jne short @..api_idx_0012_JLRR.l45
    mov ax, 3
@..api_idx_0012_JLRR.l45:
    mov cx, 0
    cmp word [bp + 0x6], byte 0x0d
    jne short @..api_idx_0012_JLRR.l46
    mov cx, 1
@..api_idx_0012_JLRR.l46:
    add ax, cx
    mov word [bp - 0x0008], ax
    mov word [bp - 0x000a], 0
    jmp short @..api_idx_0012_JLRR.l49
api_idx_0012_JLRR.jumptable_case12:
    mov word [bp - 0x000c], 0xa
    mov ax, word [bp + 0x4]
    mov cx, 4
    shl ax, cl
    mov cx, word [bp - 0x0012]
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov cx, word [bp - 0x0006]
    shl cx, 1
    shl cx, 1
    add ax, cx
    mov bx, ax
    mov ax, word [bx + 0x526]
    mov word [bp - 0x000e], ax
    mov ax, word [bx + 0x528]
    mov word [bp - 0x0010], ax
    mov word [bp - 0x0008], 0xc
    mov ax, 0xe
    cmp word [bp + 0x6], byte 0x0e
    jne short @..api_idx_0012_JLRR.l47
    mov ax, 0xd
@..api_idx_0012_JLRR.l47:
    mov word [bp - 0x000a], ax
    jmp short @..api_idx_0012_JLRR.l49
api_idx_0012_JLRR.jumptable2:
    dw api_idx_0012_JLRR.jumptable_case9 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case10 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case11 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case12 - IMAGE_BASE + __zres_end
    dw api_idx_0012_JLRR.jumptable_case12 - IMAGE_BASE + __zres_end
@..api_idx_0012_JLRR.l48:
    sub ax, strict word 0xa
    cmp ax, strict word 6
    jae short @..api_idx_0012_JLRR.l49
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + api_idx_0012_JLRR.jumptable2 - IMAGE_BASE + __zres_end]
@..api_idx_0012_JLRR.l49:
    cmp word [bp - 0x000c], byte 0xff
    je short @..api_idx_0012_JLRR.l50
    mov ax, 3
    push ax
    mov ax, 1
    push ax
    push word [bp - 0x0006]
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
    push word [bp - 0x000a]
    push word [bp - 0x0008]
    push word [bp - 0x0010]
    push word [bp - 0x000e]
    push word [bp - 0x000c]
    call api_idx_0012_JLRR.api_idx1
    add sp, byte 0x1c
@..api_idx_0012_JLRR.l50:
    ret
