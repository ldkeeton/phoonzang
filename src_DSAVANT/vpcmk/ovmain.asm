; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    call api_idx_002c_VNHI           ; 0x0014
    mov word [game_state], 4         ; 0x0017
    mov ax, 0                        ; 0x001d
    ret                              ; 0x0020
