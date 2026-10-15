; auto-generated
loc_NNQI:
    mov ax, 0                        ; 0x2e98
    call aztec_csav                  ; 0x2e9b
    mov ax, word [bp + 0x4]          ; 0x2e9e
    cmp word [bss_91d0], byte 0      ; 0x2ea1
    je short @..loc_NNQI.l1          ; 0x2ea6
    mov ax, word [bp + 0x6]          ; 0x2ea8
@..loc_NNQI.l1:
    ret                              ; 0x2eab
