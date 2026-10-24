; auto-generated
loc_ROTV:
    mov ax, 0                        ; 0x62c6
    call aztec_csav                  ; 0x62c9
@..loc_ROTV.l1:
    cmp word [party_char_count], byte 0 ; 0x62cc
    jle short @..loc_ROTV.l2         ; 0x62d1
    mov ax, 0                        ; 0x62d3
    push ax                          ; 0x62d6
    mov ax, word [party_char_count]  ; 0x62d7
    dec ax                           ; 0x62da
    push ax                          ; 0x62db
    call api_idx_0006_MROT           ; 0x62dc
    add sp, byte 4                   ; 0x62df
    jmp short @..loc_ROTV.l1         ; 0x62e2
@..loc_ROTV.l2:
    ret                              ; 0x62e4
