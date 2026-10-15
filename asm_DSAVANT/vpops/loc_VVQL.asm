; auto-generated
loc_VVQL:
    mov ax, 0                        ; 0x1076
    call aztec_csav                  ; 0x1079
    mov word [bss_845e], 0xfffe      ; 0x107c
@..loc_VVQL.l1:
    call api_idx_0006_LHQR           ; 0x1082
    cmp word [bss_845e], byte 0xfe   ; 0x1085
    jne short @..loc_VVQL.l1         ; 0x108a
    ret                              ; 0x108c
