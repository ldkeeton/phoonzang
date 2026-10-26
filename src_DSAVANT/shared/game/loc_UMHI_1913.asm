; auto-generated
loc_UMHI_1913:
    mov ax, 0
    call aztec_csav
    mov ax, 0xffff
    cmp word [loc_UMHI_1913.bss1], byte 0
    je short @..loc_UMHI_1913.l1
    mov ax, word [bp + 4]
@..loc_UMHI_1913.l1:
    ret
