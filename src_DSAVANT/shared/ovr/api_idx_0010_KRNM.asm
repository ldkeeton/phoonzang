; auto-generated
api_idx_0010_KRNM:
    mov ax, 0xfff0
    call aztec_csav
    mov ax, 4
    cmp word [boundary_wall_variant], byte 0
    jne short .forward1
    mov ax, 3
.forward1:
    mov word [bp - 0xa], ax
    mov word [bp - 2], 0xffff
    mov word [bp - 4], 0xffff
    cmp word [boundary_wall_variant], byte 0
    jg short .forward2
    jmp near .forward11
.forward2:
    cmp word [bp + 4], byte 3
    je short .forward3
    jmp near .forward11
.forward3:
    mov ax, word [boundary_wall_variant]
    cmp ax, strict word 3
    jl short .forward4
    cmp ax, strict word 5
    jne short .forward5
.forward4:
    mov ax, 0x15
    jmp short .forward6
.forward5:
    mov ax, 0x14
.forward6:
    mov word [bp - 0xc], ax
    cmp word [boundary_wall_variant], byte 3
    jl short .forward7
    cmp word [boundary_wall_variant], byte 5
    jne short .forward8
.forward7:
    mov ax, 0x16
    jmp short .forward9
.forward8:
    mov ax, 0x15
.forward9:
    mov word [bp - 0xe], ax
    cmp word [bp + 8], byte 0
    jne short .forward10
    push ax
    push word [bp - 0xc]
    call loc_LPLI_2e98
    add sp, byte 4
    mov word [bp - 2], ax
    push word [bp - 0xc]
    call loc_UMHI_2e84
    pop cx
    mov word [bp - 4], ax
    jmp short .forward11
.forward10:
    cmp word [bp + 8], byte 4
    jne short .forward11
    push word [bp - 0xc]
    push word [bp - 0xe]
    call loc_LPLI_2e98
    add sp, byte 4
    mov word [bp - 2], ax
    push word [bp - 0xe]
    call loc_UMHI_2e84
    pop cx
    mov word [bp - 4], ax
.forward11:
    mov ax, word [bp + 6]
    jmp near .forward25
jumptable_3a86_case_1:
    cmp word [bp - 2], byte -1
    je short api_idx_0010_KRNM.forward13
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
    jne short api_idx_0010_KRNM.forward12
    mov ax, 2
api_idx_0010_KRNM.forward12:
    push ax
    mov ax, 0xffff
    push ax
    push word [bp - 2]
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward13:
    jmp near jumptable_3a86_case_0
jumptable_3a86_case_5:
    cmp word [bp - 2], byte -1
    je short api_idx_0010_KRNM.forward14
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
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward14:
    jmp near jumptable_3a86_case_0
jumptable_3a86_case_2:
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0010_KRNM.forward17
    cmp word [bp + 4], byte 3
    jge short api_idx_0010_KRNM.forward16
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
    call loc_UMHI_2e84
    pop cx
    push ax
    mov ax, 0
    push ax
    push ax
    push ax
    mov cx, word [bp + 4]
    cmp cx, byte 1
    jne short api_idx_0010_KRNM.forward15
    mov ax, 2
api_idx_0010_KRNM.forward15:
    push ax
    mov ax, 0xffff
    push ax
    add cx, word [bp + 0x18]
    mov ax, cx
    push ax
    mov ax, word [bp + 0x16]
    add ax, word [bp + 4]
    push ax
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward16:
    jmp near api_idx_0010_KRNM.forward21
api_idx_0010_KRNM.forward17:
    cmp word [boundary_wall_variant], byte 3
    jl short api_idx_0010_KRNM.forward18
    cmp word [boundary_wall_variant], byte 5
    jne short api_idx_0010_KRNM.forward20
api_idx_0010_KRNM.forward18:
    cmp word [bp + 4], byte 4
    jge short api_idx_0010_KRNM.forward19
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
    call loc_UMHI_2e84
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
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward19:
    jmp short api_idx_0010_KRNM.forward21
api_idx_0010_KRNM.forward20:
    cmp word [boundary_wall_variant], byte 5
    jge short api_idx_0010_KRNM.forward21
    cmp word [bp + 4], byte 4
    jge short api_idx_0010_KRNM.forward21
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
    call loc_UMHI_2e84
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
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward21:
    jmp near jumptable_3a86_case_0
jumptable_3a86_case_4:
    mov ax, word [boundary_wall_variant]
    mov cx, 2
    cwd
    idiv cx
    mov ax, dx
    cmp ax, strict word 1
    jne short api_idx_0010_KRNM.forward24
    cmp word [bp + 4], byte 4
    jge short api_idx_0010_KRNM.forward24
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
    cmp word [api_idx_0010_KRNM_bss1234], byte 0
    je short api_idx_0010_KRNM.forward22
    mov ax, word [bp + 0x1c]
    add ax, word [bp + 4]
    jmp short api_idx_0010_KRNM.forward23
api_idx_0010_KRNM.forward22:
    mov ax, word [bp + 0x1a]
    add ax, word [bp + 4]
api_idx_0010_KRNM.forward23:
    push ax
    mov ax, 0xfc
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward24:
    jmp short jumptable_3a86_case_0
jumptable_3a86:
    dw jumptable_3a86_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_4 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
    dw jumptable_3a86_case_2 - IMAGE_BASE + __zres_end
api_idx_0010_KRNM.forward25:
    cmp ax, strict word 0x10
    jae short jumptable_3a86_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3a86 - IMAGE_BASE + __zres_end]
jumptable_3a86_case_0:
    mov word [bp - 2], 0xffff
    mov word [bp - 4], 0xffff
    mov ax, word [bp + 4]
    cmp ax, word [bp - 0xa]
    jl short api_idx_0010_KRNM.forward27
    jmp near api_idx_0010_KRNM.return1
api_idx_0010_KRNM.forward27:
    mov word [bp - 0x10], 0xffff
    mov ax, word [bp + 6]
    jmp near api_idx_0010_KRNM.forward47
jumptable_3ed8_case_8:
    mov ax, word [bp + 0x2e]
    cmp word [bp + 6], byte 8
    jne short api_idx_0010_KRNM.forward28
    mov ax, word [bp + 0x2a]
api_idx_0010_KRNM.forward28:
    mov word [bp - 6], ax
    mov ax, word [bp + 0x30]
    cmp word [bp + 6], byte 8
    jne short api_idx_0010_KRNM.forward29
    mov ax, word [bp + 0x2c]
api_idx_0010_KRNM.forward29:
    mov word [bp - 8], ax
    mov ax, word [bp - 6]
    add ax, word [bp + 4]
    inc ax
    inc ax
    inc ax
    mov word [bp - 2], ax
    mov word [bp - 4], 0xffff
jumptable_3ed8_case_7:
    cmp word [bp + 6], byte 7
    jne short jumptable_3ed8_case_1
    mov ax, word [bp + 0x44]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    call loc_LPLI_2e98
    add sp, byte 4
    mov word [bp - 2], ax
    mov ax, word [bp + 0x42]
    add ax, word [bp + 4]
    push ax
    call loc_UMHI_2e84
    pop cx
    mov word [bp - 4], ax
jumptable_3ed8_case_1:
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0010_KRNM.forward31
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
    call loc_UMHI_2e84
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
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
    jmp short api_idx_0010_KRNM.forward32
api_idx_0010_KRNM.forward31:
    cmp word [boundary_wall_variant], byte 2
    jne short api_idx_0010_KRNM.forward32
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
    call loc_UMHI_2e84
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
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward32:
    cmp word [bp + 6], byte 3
    je short api_idx_0010_KRNM.forward33
    jmp near api_idx_0010_KRNM.forward36
api_idx_0010_KRNM.forward33:
    cmp word [bss_831a], byte 0
    je short api_idx_0010_KRNM.forward34
    cmp word [bp + 4], byte 0
    jne short api_idx_0010_KRNM.forward34
    cmp word [bp + 8], byte 2
    jne short api_idx_0010_KRNM.forward34
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
    call api_idx_0004_OVUO
    add sp, byte 0x1c
    jmp near api_idx_0010_KRNM.forward35
api_idx_0010_KRNM.forward34:
    mov ax, 0
    push ax
    push ax
    push word [loc_LPLI_2e98_bss20]
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
    add ax, word [loc_LPLI_2e98_bss20]
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
    call api_idx_0004_OVUO
    add sp, byte 0x1c
    mov ax, 0
    push ax
    push ax
    push word [loc_LPLI_2e98_bss20]
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
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward35:
    jmp short api_idx_0010_KRNM.forward37
api_idx_0010_KRNM.forward36:
    cmp word [bp + 6], byte 6
    jne short api_idx_0010_KRNM.forward37
    mov ax, 0
    push ax
    push ax
    push word [loc_LPLI_2e98_bss20]
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
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward37:
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0010_KRNM.forward38
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xa]
    push word [bp + 4]
    mov ax, word [bp + 0x26]
    add ax, word [bp + 4]
    push ax
    call loc_UMHI_2e84
    pop cx
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call loc_UMHI_2e84
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
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x24]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x22]
    add ax, word [bp + 4]
    push ax
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
    jmp short api_idx_0010_KRNM.forward39
api_idx_0010_KRNM.forward38:
    cmp word [boundary_wall_variant], byte 2
    jne short api_idx_0010_KRNM.forward39
    mov ax, 0
    push ax
    push ax
    push ax
    push word [bp + 0xe]
    push word [bp + 4]
    mov ax, word [bp + 0x3e]
    add ax, word [bp + 4]
    push ax
    call loc_UMHI_2e84
    pop cx
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    call loc_UMHI_2e84
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
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, word [bp + 0x3c]
    add ax, word [bp + 4]
    push ax
    mov ax, word [bp + 0x3a]
    add ax, word [bp + 4]
    push ax
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward39:
    cmp word [bp + 6], byte 8
    je short api_idx_0010_KRNM.forward40
    cmp word [bp + 6], byte 9
    jne short api_idx_0010_KRNM.forward41
api_idx_0010_KRNM.forward40:
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
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward41:
    jmp near jumptable_3ed8_case_0
jumptable_3ed8_case_5:
    cmp word [bp + 4], byte 4
    jge short api_idx_0010_KRNM.forward42
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
    call loc_UMHI_2e84
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
    call loc_LPLI_2e98
    add sp, byte 4
    push ax
    mov ax, 0xff
    push ax
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.forward42:
    jmp near jumptable_3ed8_case_0
jumptable_3ed8_case_10:
    mov word [bp - 0x10], 9
    mov word [bp - 0xc], 1
    mov ax, word [party_status_frame]
    inc ax
    inc ax
    mov word [bp - 0xe], ax
    jmp near jumptable_3ed8_case_0
jumptable_3ed8_case_11:
    mov word [bp - 0x10], 9
    mov word [bp - 0xc], 7
    mov ax, 0
    cmp word [party_status_frame], byte 0
    je short api_idx_0010_KRNM.forward43
    mov ax, 8
api_idx_0010_KRNM.forward43:
    mov word [bp - 0xe], ax
    jmp short jumptable_3ed8_case_0
jumptable_3ed8_case_12:
    mov word [bp - 0x10], 0xa
    mov ax, 5
    cmp word [boundary_wall_variant], byte 0
    jne short api_idx_0010_KRNM.forward44
    mov ax, 1
api_idx_0010_KRNM.forward44:
    mov cx, 0
    cmp word [bp + 6], byte 0xd
    jne short api_idx_0010_KRNM.forward45
    mov cx, 1
api_idx_0010_KRNM.forward45:
    add ax, cx
    mov word [bp - 0xc], ax
    mov word [bp - 0xe], 0
    jmp short jumptable_3ed8_case_0
jumptable_3ed8_case_14:
    mov word [bp - 0x10], 0xa
    mov word [bp - 0xc], 9
    mov ax, 0xb
    cmp word [bp + 6], byte 0xe
    jne short api_idx_0010_KRNM.forward46
    mov ax, 0xa
api_idx_0010_KRNM.forward46:
    mov word [bp - 0xe], ax
    jmp short jumptable_3ed8_case_0
jumptable_3ed8:
    dw jumptable_3ed8_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_0 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_5 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_1 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_7 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_8 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_10 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_11 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_12 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_12 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_14 - IMAGE_BASE + __zres_end
    dw jumptable_3ed8_case_14 - IMAGE_BASE + __zres_end
api_idx_0010_KRNM.forward47:
    cmp ax, strict word 0x10
    jae short jumptable_3ed8_case_0
    xchg bx, ax
    shl bx, 1
    jmp [cs:bx + jumptable_3ed8 - IMAGE_BASE + __zres_end]
jumptable_3ed8_case_0:
    cmp word [bp - 0x10], byte -1
    je short api_idx_0010_KRNM.return1
    mov ax, 2
    push ax
    mov ax, 0
    push ax
    push word [loc_LPLI_2e98_bss20]
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
    call api_idx_0004_OVUO
    add sp, byte 0x1c
api_idx_0010_KRNM.return1:
    ret
