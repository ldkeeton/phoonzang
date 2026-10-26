; auto-generated
loc_UTQS:
    mov ax, 0
    call aztec_csav
.back1:
    cmp word [bss_845e], byte -2
    je short .return1
    call loc_UTQS.api_idx1
    jmp short .back1
.return1:
    ret
