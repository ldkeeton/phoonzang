math_loc_7cb4:
    mov ax, 0                        ; 0x7cb4
    call ds_dispatch_f40b            ; 0x7cb7
@..math_loc_7cb4.l1:
    cmp word [bp + 0x4], byte 0      ; 0x7cba
    jle short @..math_loc_7cb4.l3    ; 0x7cbe
    cmp word [bp + 0x6], byte 0      ; 0x7cc0
    je short @..math_loc_7cb4.l2     ; 0x7cc4
    mov ax, word [data_82e8]         ; 0x7cc6
    inc ax                           ; 0x7cc9
    mov cx, 2                        ; 0x7cca
    cwd                              ; 0x7ccd
    idiv cx                          ; 0x7cce
    mov word [data_82e8], dx         ; 0x7cd0
    call loc_676c                    ; 0x7cd4
    mov ax, 0x10                     ; 0x7cd7
    push ax                          ; 0x7cda
    call ds_dispatch_b7e0            ; 0x7cdb
    pop cx                           ; 0x7cde
@..math_loc_7cb4.l2:
    dec word [bp + 0x4]              ; 0x7cdf
    jmp short @..math_loc_7cb4.l1    ; 0x7ce2
@..math_loc_7cb4.l3:
    ret                              ; 0x7ce4
