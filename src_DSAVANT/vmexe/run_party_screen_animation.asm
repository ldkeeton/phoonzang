; auto-generated
run_party_screen_animation:
    mov ax, 0                        ; 0x1a35
    call aztec_csav                  ; 0x1a38
    mov word [bss_845e], 0xfffe      ; 0x1a3b
.back1:
    call api_idx_0006_GMTP           ; 0x1a41
    cmp word [bss_845e], byte -2     ; 0x1a44
    jne short .back1                 ; 0x1a49
    ret                              ; 0x1a4b
