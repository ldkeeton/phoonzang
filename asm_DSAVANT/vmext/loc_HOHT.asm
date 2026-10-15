; auto-generated
loc_HOHT:
    mov ax, 0                        ; 0x193b
    call aztec_csav                  ; 0x193e
    mov ax, 0xffff                   ; 0x1941
    cmp word [bss_91a6], byte 0      ; 0x1944
    je short @..loc_HOHT.l1          ; 0x1949
    mov ax, word [bp + 0x4]          ; 0x194b
@..loc_HOHT.l1:
    ret                              ; 0x194e
