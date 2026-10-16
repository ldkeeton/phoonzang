; auto-generated
loc_UTQS:
    mov ax, 0
    call aztec_csav
@..loc_UTQS.l1:
    cmp word [bss_845e], byte 0xfe
    je short @..loc_UTQS.l2
    call loc_UTQS.api_idx1
    jmp short @..loc_UTQS.l1
@..loc_UTQS.l2:
    ret
