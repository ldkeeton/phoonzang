; auto-generated
loc_UHKR:
    mov ax, 0                        ; 0x109f
    call aztec_csav                  ; 0x10a2
    mov word [bss_845e], 0xfffe      ; 0x10a5
@..loc_UHKR.l1:
    call api_idx_0006_TPUL           ; 0x10ab
    cmp word [bss_845e], byte 0xfe   ; 0x10ae
    jne short @..loc_UHKR.l1         ; 0x10b3
    ret                              ; 0x10b5
