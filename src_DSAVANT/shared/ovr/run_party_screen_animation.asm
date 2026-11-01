; auto-generated
run_party_screen_animation:
    mov ax, 0
    call aztec_csav
    mov word [bss_845e], 0xfffe
.back1:
    call api_idx_0006_LJUS
    cmp word [bss_845e], byte -2
    jne short .back1
    ret
