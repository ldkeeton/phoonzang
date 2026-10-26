; auto-generated
loc_UMHI_1913:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [loc_UMHI_1913.bss1], byte 0
    je short .return1
    mov ax, word [bp + 4]
.return1:
    ret
