; auto-generated
loc_UMHI_2e84:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [loc_LPLI_2e98_bss20], byte 0
    je short .return1
    mov ax, word [bp + 4]
.return1:
    ret
