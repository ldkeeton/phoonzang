; auto-generated
loc_POKM:
    mov ax, 0                        ; 0x62c6
    call aztec_csav                  ; 0x62c9
@..loc_POKM.l1:
    cmp word [bss_69c8], byte 0      ; 0x62cc
    jle short @..loc_POKM.l2         ; 0x62d1
    mov ax, 0                        ; 0x62d3
    push ax                          ; 0x62d6
    mov ax, word [bss_69c8]          ; 0x62d7
    dec ax                           ; 0x62da
    push ax                          ; 0x62db
    call api_idx_0006_HMGH           ; 0x62dc
    add sp, byte 4                   ; 0x62df
    jmp short @..loc_POKM.l1         ; 0x62e2
@..loc_POKM.l2:
    ret                              ; 0x62e4
