math_loc_4c21:
    mov ax, 0                        ; 0x4c21
    call ds_dispatch_f40b            ; 0x4c24
    cmp word [bp + 0x6], byte 0      ; 0x4c27
    je short @..math_loc_4c21.l1     ; 0x4c2b
    push word [bp + 0x6]             ; 0x4c2d
    push word [bp + 0x4]             ; 0x4c30
    call api_idx_004e                ; 0x4c33
    add sp, byte 4                   ; 0x4c36
@..math_loc_4c21.l1:
    cmp word [bp + 0x8], byte 0      ; 0x4c39
    je short @..math_loc_4c21.l2     ; 0x4c3d
    push word [bp + 0x8]             ; 0x4c3f
    push word [bp + 0x4]             ; 0x4c42
    call api_idx_004e                ; 0x4c45
    add sp, byte 4                   ; 0x4c48
@..math_loc_4c21.l2:
    cmp word [bp + 0xa], byte 0      ; 0x4c4b
    je short @..math_loc_4c21.l3     ; 0x4c4f
    push word [bp + 0xa]             ; 0x4c51
    push word [bp + 0x4]             ; 0x4c54
    call api_idx_004e                ; 0x4c57
    add sp, byte 4                   ; 0x4c5a
@..math_loc_4c21.l3:
    cmp word [bp + 0xc], byte 0      ; 0x4c5d
    je short @..math_loc_4c21.l4     ; 0x4c61
    push word [bp + 0xc]             ; 0x4c63
    push word [bp + 0x4]             ; 0x4c66
    call api_idx_004e                ; 0x4c69
    add sp, byte 4                   ; 0x4c6c
@..math_loc_4c21.l4:
    cmp word [bp + 0xe], byte 0      ; 0x4c6f
    je short @..math_loc_4c21.l5     ; 0x4c73
    push word [bp + 0xe]             ; 0x4c75
    push word [bp + 0x4]             ; 0x4c78
    call api_idx_004e                ; 0x4c7b
    add sp, byte 4                   ; 0x4c7e
@..math_loc_4c21.l5:
    ret                              ; 0x4c81
