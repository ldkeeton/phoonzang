; auto-generated
run_party_screen_animation:
    mov ax, 0
    call aztec_csav
    mov word [bss_845e], 0xfffe
@..run_party_screen_animation.l1:
    call run_party_screen_animation.api_idx1
    cmp word [bss_845e], byte 0xfe
    jne short @..run_party_screen_animation.l1
    ret
