; auto-generated
loc_SRNN:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x6]
    jmp near @..loc_SRNN.l1
loc_SRNN.jumptable_case1:
    mov ax, loc_SRNN.dseg1
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp near @..loc_SRNN.l2
loc_SRNN.jumptable_case2:
    mov ax, loc_SRNN.dseg2
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp near @..loc_SRNN.l2
loc_SRNN.jumptable_case3:
    mov ax, loc_SRNN.dseg3
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp near @..loc_SRNN.l2
loc_SRNN.jumptable_case4:
    mov ax, loc_SRNN.dseg4
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp near @..loc_SRNN.l2
loc_SRNN.jumptable_case5:
    mov ax, loc_SRNN.dseg5
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp near @..loc_SRNN.l2
loc_SRNN.jumptable_case6:
    mov ax, loc_SRNN.dseg6
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp short @..loc_SRNN.l2
loc_SRNN.jumptable_case7:
    mov ax, loc_SRNN.dseg7
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp short @..loc_SRNN.l2
loc_SRNN.jumptable_case8:
    mov ax, loc_SRNN.dseg8
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp short @..loc_SRNN.l2
loc_SRNN.jumptable_case9:
    mov ax, loc_SRNN.dseg9
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp short @..loc_SRNN.l2
loc_SRNN.jumptable_case10:
    mov ax, loc_SRNN.dseg10
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp short @..loc_SRNN.l2
loc_SRNN.jumptable_case11:
    mov ax, loc_SRNN.dseg11
    push ax
    push word [bp + 0x4]
    call loc_SRNN.api_idx1
    add sp, byte 4
    jmp short @..loc_SRNN.l2
loc_SRNN.jumptable1:
    dw loc_SRNN.jumptable_case1 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case2 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case3 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case4 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case5 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case6 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case7 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case8 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case9 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case10 - IMAGE_BASE + __zres_end
    dw loc_SRNN.jumptable_case11 - IMAGE_BASE + __zres_end
@..loc_SRNN.l1:
    cmp ax, strict word 0xb
    jae short @..loc_SRNN.l2
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + loc_SRNN.jumptable1 - IMAGE_BASE + __zres_end]
@..loc_SRNN.l2:
    ret
