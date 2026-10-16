; auto-generated
loc_RPUI:
    mov ax, 0
    call aztec_csav
    mov word [bss_845e], 0xfffe
@..loc_RPUI.l1:
    call loc_RPUI.api_idx1
    cmp word [bss_845e], byte 0xfe
    jne short @..loc_RPUI.l1
    ret
