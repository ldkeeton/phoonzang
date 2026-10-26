; auto-generated
loc_LPLI_1927:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    cmp word [loc_LPLI_1927.bss1], byte 0
    je short @..loc_LPLI_1927.l1
    mov ax, word [bp + 6]
@..loc_LPLI_1927.l1:
    ret
