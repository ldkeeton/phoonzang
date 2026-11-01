; auto-generated
loc_LPLI_2e98:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    cmp word [loc_LPLI_2e98_bss20], byte 0
    je short .return1
    mov ax, word [bp + 6]
.return1:
    ret
