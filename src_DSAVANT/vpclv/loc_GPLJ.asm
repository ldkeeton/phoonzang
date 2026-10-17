; auto-generated
loc_GPLJ:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x16   ; 0x0014
    jne short @..loc_GPLJ.l1         ; 0x0019
    call api_idx_000c_RMOO           ; 0x001b
@..loc_GPLJ.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
