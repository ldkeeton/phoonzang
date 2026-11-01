; auto-generated
loc_UMHI_2eac:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [loc_LPLI_2ec0_bss20], byte 0
    je short .return1
    mov ax, word [bp + 4]
.return1:
    ret
