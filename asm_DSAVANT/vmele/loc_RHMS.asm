; auto-generated
loc_RHMS:
    mov ax, 0                        ; 0x2cc7
    call aztec_csav                  ; 0x2cca
    mov word [bss_845e], 0xfffe      ; 0x2ccd
@..loc_RHMS.l1:
    call api_idx_0006_VSSG           ; 0x2cd3
    cmp word [bss_845e], byte 0xfe   ; 0x2cd6
    jne short @..loc_RHMS.l1         ; 0x2cdb
    ret                              ; 0x2cdd
