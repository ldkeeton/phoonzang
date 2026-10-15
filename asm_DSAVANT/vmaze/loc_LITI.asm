; auto-generated
loc_LITI:
    mov ax, 0                        ; 0x2ec0
    call aztec_csav                  ; 0x2ec3
    mov ax, word [bp + 0x4]          ; 0x2ec6
    cmp word [bss_91d2], byte 0      ; 0x2ec9
    je short @..loc_LITI.l1          ; 0x2ece
    mov ax, word [bp + 0x6]          ; 0x2ed0
@..loc_LITI.l1:
    ret                              ; 0x2ed3
