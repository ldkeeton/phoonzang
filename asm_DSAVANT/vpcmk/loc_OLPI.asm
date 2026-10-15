; auto-generated
loc_OLPI:
    mov ax, 0                        ; 0x4107
    call aztec_csav                  ; 0x410a
    mov ax, word [bp + 0x6]          ; 0x410d
    jmp near @..loc_OLPI.l4          ; 0x4110
