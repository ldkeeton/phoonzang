; auto-generated
run_party_screen_animation:
    mov ax, 0                        ; 0x109f
    call aztec_csav                  ; 0x10a2
    mov word [bss_845e], 0xfffe      ; 0x10a5
.back1:
    call step_party_animation        ; 0x10ab
    cmp word [bss_845e], byte -2     ; 0x10ae
    jne short .back1                 ; 0x10b3
    ret                              ; 0x10b5
