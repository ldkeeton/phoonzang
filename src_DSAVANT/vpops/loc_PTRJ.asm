; auto-generated
loc_PTRJ:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x0c   ; 0x0014
    jne short @..loc_PTRJ.l1         ; 0x0019
    call api_idx_0004_PPTR           ; 0x001b
@..loc_PTRJ.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
