; auto-generated
fpu_loc_VSMI:
    mov ax, word [bp + 0x8]          ; 0x6a97
    mov bx, word [bp - 0x0004]       ; 0x6a9a
    mov word [bx + 0x2], ax          ; 0x6a9d
    mov ax, word [bp + 0xe]          ; 0x6aa0
    mov bx, word [bp - 0x0004]       ; 0x6aa3
    mov word [bx + 0x4], ax          ; 0x6aa6
    jmp short loc_NUGN_6ac6          ; 0x6aa9
jumptable_6aab:
    dw fpu_loc_JNIM - IMAGE_BASE + 0x5055      ; 0x6aab
    dw fpu_loc_NMIT - IMAGE_BASE + 0x5055      ; 0x6aad
    dw fpu_loc_NMIT - IMAGE_BASE + 0x5055      ; 0x6aaf
    dw fpu_loc_NMIT - IMAGE_BASE + 0x5055      ; 0x6ab1
    dw fpu_loc_NMIT - IMAGE_BASE + 0x5055      ; 0x6ab3
    dw fpu_loc_PGKQ - IMAGE_BASE + 0x5055      ; 0x6ab5
    dw fpu_loc_VSMI - IMAGE_BASE + 0x5055      ; 0x6ab7
@..api_idx_0004_VVMS.l3:
    cmp ax, strict word 7            ; 0x6ab9
    jae short loc_NUGN_6ac6          ; 0x6abc
    xchg bx, ax                      ; 0x6abe
    shl bx, 1                        ; 0x6abf
    jmp [cs:bx - 0x450e]             ; 0x6ac1
loc_NUGN_6ac6:
    ret                              ; 0x6ac6
