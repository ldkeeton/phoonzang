; auto-generated
api_idx_0050_PLNP:
    mov ax, 0xffb0                   ; 0x169d
    call aztec_csav                  ; 0x16a0
    lea ax, word [bp - 0x0050]       ; 0x16a3
    push ax                          ; 0x16a6
    push word [bp + 0x4]             ; 0x16a7
    call load_message_string         ; 0x16aa
    add sp, byte 4                   ; 0x16ad
    push word [bp + 0x8]             ; 0x16b0
    push word [bp + 0x6]             ; 0x16b3
    lea ax, word [bp - 0x0050]       ; 0x16b6
    push ax                          ; 0x16b9
    call api_idx_0002_TMNV           ; 0x16ba
    add sp, byte 6                   ; 0x16bd
    ret                              ; 0x16c0
