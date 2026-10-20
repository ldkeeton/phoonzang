; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x0c   ; 0x0014
    jne short @..ovmain.l1           ; 0x0019
    call api_idx_0004_NRTK           ; 0x001b
@..ovmain.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
