; auto-generated
loc_TRSS:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 6]
    jmp near .forward1
loc_TRSS.jumptable_case1:
    mov ax, loc_TRSS.dseg1
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp near loc_TRSS.return1
loc_TRSS.jumptable_case2:
    mov ax, loc_TRSS.dseg2
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp near loc_TRSS.return1
loc_TRSS.jumptable_case3:
    mov ax, loc_TRSS.dseg3
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp near loc_TRSS.return1
loc_TRSS.jumptable_case4:
    mov ax, loc_TRSS.dseg4
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp near loc_TRSS.return1
loc_TRSS.jumptable_case5:
    mov ax, loc_TRSS.dseg5
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp near loc_TRSS.return1
loc_TRSS.jumptable_case6:
    mov ax, loc_TRSS.dseg6
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp short loc_TRSS.return1
loc_TRSS.jumptable_case7:
    mov ax, loc_TRSS.dseg7
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp short loc_TRSS.return1
loc_TRSS.jumptable_case8:
    mov ax, loc_TRSS.dseg8
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp short loc_TRSS.return1
loc_TRSS.jumptable_case9:
    mov ax, loc_TRSS.dseg9
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp short loc_TRSS.return1
loc_TRSS.jumptable_case10:
    mov ax, loc_TRSS.dseg10
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp short loc_TRSS.return1
loc_TRSS.jumptable_case11:
    mov ax, loc_TRSS.dseg11
    push ax
    push word [bp + 4]
    call loc_TRSS.api_idx1
    add sp, byte 4
    jmp short loc_TRSS.return1
loc_TRSS.jumptable1:
    dw loc_TRSS.jumptable_case1 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case2 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case3 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case4 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case5 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case6 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case7 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case8 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case9 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case10 - IMAGE_BASE + __zres_end
    dw loc_TRSS.jumptable_case11 - IMAGE_BASE + __zres_end
loc_TRSS.forward1:
    cmp ax, strict word 0xb
    jae short loc_TRSS.return1
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + loc_TRSS.jumptable1 - IMAGE_BASE + __zres_end]
loc_TRSS.return1:
    ret
