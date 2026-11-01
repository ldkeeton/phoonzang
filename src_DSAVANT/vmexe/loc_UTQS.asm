; auto-generated
loc_UTQS:
    mov ax, 0                        ; 0x1a4c
    call aztec_csav                  ; 0x1a4f
.back1:
    cmp word [bss_845e], byte -2     ; 0x1a52
    je short .return1                ; 0x1a57
    call api_idx_0006_GMTP           ; 0x1a59
    jmp short .back1                 ; 0x1a5c
.return1:
    ret                              ; 0x1a5e
