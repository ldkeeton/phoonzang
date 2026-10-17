; auto-generated
loc_LPLI_1927:
    mov ax, 0                        ; 0x1927
    call aztec_csav                  ; 0x192a
    mov ax, word [bp + 0x4]          ; 0x192d
    cmp word [bss_91a4], byte 0      ; 0x1930
    je short @..loc_LPLI_1927.l1     ; 0x1935
    mov ax, word [bp + 0x6]          ; 0x1937
@..loc_LPLI_1927.l1:
    ret                              ; 0x193a
