; auto-generated
loc_OJSH:
    mov ax, 0                        ; 0x1a4c
    call aztec_csav                  ; 0x1a4f
@..loc_OJSH.l1:
    cmp word [bss_845e], byte 0xfe   ; 0x1a52
    je short @..loc_OJSH.l2          ; 0x1a57
    call api_idx_0006_RITV           ; 0x1a59
    jmp short @..loc_OJSH.l1         ; 0x1a5c
@..loc_OJSH.l2:
    ret                              ; 0x1a5e
