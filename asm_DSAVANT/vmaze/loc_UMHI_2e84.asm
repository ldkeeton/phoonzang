; auto-generated
loc_UMHI_2e84:
    mov ax, 0                        ; 0x2e84
    call aztec_csav                  ; 0x2e87
    mov ax, 0xffff                   ; 0x2e8a
    cmp word [bss_91d0], byte 0      ; 0x2e8d
    je short @..loc_UMHI_2e84.l1     ; 0x2e92
    mov ax, word [bp + 0x4]          ; 0x2e94
@..loc_UMHI_2e84.l1:
    ret                              ; 0x2e97
