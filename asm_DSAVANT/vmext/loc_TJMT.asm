; auto-generated
loc_TJMT:
    mov ax, 0                        ; 0x1913
    call aztec_csav                  ; 0x1916
    mov ax, 0xffff                   ; 0x1919
    cmp word [bss_91a4], byte 0      ; 0x191c
    je short @..loc_TJMT.l1          ; 0x1921
    mov ax, word [bp + 0x4]          ; 0x1923
@..loc_TJMT.l1:
    ret                              ; 0x1926
