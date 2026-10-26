; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [game_state], byte 0x11 ; 0x0014
    jne short .forward1              ; 0x0019
    push word [member_roster_index]  ; 0x001b
    call api_idx_0014_VORK           ; 0x001f
    pop cx                           ; 0x0022
.forward1:
    mov ax, 0                        ; 0x0023
    ret                              ; 0x0026
