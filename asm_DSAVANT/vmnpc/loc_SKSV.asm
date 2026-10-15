; auto-generated
loc_SKSV:
    mov ax, 0                        ; 0x10b6
    call aztec_csav                  ; 0x10b9
@..loc_SKSV.l1:
    cmp word [bss_845e], byte 0xfe   ; 0x10bc
    je short @..loc_SKSV.l2          ; 0x10c1
    call api_idx_0006_TPUL           ; 0x10c3
    jmp short @..loc_SKSV.l1         ; 0x10c6
@..loc_SKSV.l2:
    ret                              ; 0x10c8
