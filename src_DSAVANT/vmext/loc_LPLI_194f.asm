; auto-generated
loc_LPLI_194f:
    mov ax, 0                        ; 0x194f
    call aztec_csav                  ; 0x1952
    mov ax, word [bp + 0x4]          ; 0x1955
    cmp word [bss_91a6], byte 0      ; 0x1958
    je short @..loc_LPLI_194f.l1     ; 0x195d
    mov ax, word [bp + 0x6]          ; 0x195f
@..loc_LPLI_194f.l1:
    ret                              ; 0x1962
