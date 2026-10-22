; auto-generated
api_idx_0050_TJLH:
    mov ax, 0xffb0                   ; 0x13b4
    call aztec_csav                  ; 0x13b7
    lea ax, word [bp - 0x0050]       ; 0x13ba
    push ax                          ; 0x13bd
    push word [bp + 0x4]             ; 0x13be
    call load_message_string         ; 0x13c1
    add sp, byte 4                   ; 0x13c4
    mov ax, 0x5e                     ; 0x13c7
    push ax                          ; 0x13ca
    mov ax, 0x9138                   ; 0x13cb
    push ax                          ; 0x13ce
    lea ax, word [bp - 0x0050]       ; 0x13cf
    push ax                          ; 0x13d2
    call str_subst_char              ; 0x13d3
    add sp, byte 6                   ; 0x13d6
    push word [bp + 0xa]             ; 0x13d9
    push word [bp + 0x8]             ; 0x13dc
    push word [bp + 0x6]             ; 0x13df
    lea ax, word [bp - 0x0050]       ; 0x13e2
    push ax                          ; 0x13e5
    call loc_MLKO                    ; 0x13e6
    add sp, byte 8                   ; 0x13e9
    ret                              ; 0x13ec
