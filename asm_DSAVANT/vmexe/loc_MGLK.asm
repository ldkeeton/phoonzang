; auto-generated
loc_MGLK:
    mov ax, 0                        ; 0x1a35
    call aztec_csav                  ; 0x1a38
    mov word [bss_845e], 0xfffe      ; 0x1a3b
@..loc_MGLK.l1:
    call api_idx_0006_RITV           ; 0x1a41
    cmp word [bss_845e], byte 0xfe   ; 0x1a44
    jne short @..loc_MGLK.l1         ; 0x1a49
    ret                              ; 0x1a4b
