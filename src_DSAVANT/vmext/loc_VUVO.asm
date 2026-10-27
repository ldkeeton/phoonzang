; auto-generated
loc_VUVO:
    mov ax, 0                        ; 0x0c0d
    call aztec_csav                  ; 0x0c10
    mov ax, MSG_RUNNING              ; 0x0c13
    push ax                          ; 0x0c16
    call api_idx_0050_SMLN           ; 0x0c17
    pop cx                           ; 0x0c1a
    mov ax, 1                        ; 0x0c1b
    ret                              ; 0x0c1e
