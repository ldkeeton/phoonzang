; auto-generated
loc_UMJN:
    mov ax, 0                        ; 0x2eac
    call aztec_csav                  ; 0x2eaf
    mov ax, 0xffff                   ; 0x2eb2
    cmp word [bss_91d2], byte 0      ; 0x2eb5
    je short @..loc_UMJN.l1          ; 0x2eba
    mov ax, word [bp + 0x4]          ; 0x2ebc
@..loc_UMJN.l1:
    ret                              ; 0x2ebf
