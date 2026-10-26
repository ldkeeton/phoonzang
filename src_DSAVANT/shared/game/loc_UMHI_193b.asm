; auto-generated
loc_UMHI_193b:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [loc_UMHI_193b.bss1], byte 0
    je short .return1
    mov ax, word [bp + 4]
.return1:
    ret
