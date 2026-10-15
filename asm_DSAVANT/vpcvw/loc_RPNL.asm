; auto-generated
loc_RPNL:
    mov ax, 0                        ; 0x40b7
    call aztec_csav                  ; 0x40ba
    push word [bp + 0x4]             ; 0x40bd
    call api_idx_007c_HKNH           ; 0x40c0
    pop cx                           ; 0x40c3
    push word [bp + 0x4]             ; 0x40c4
    call api_idx_0080_PKIL           ; 0x40c7
    pop cx                           ; 0x40ca
    cmp word [bp + 0x6], byte 0      ; 0x40cb
    jne short @..loc_RPNL.l1         ; 0x40cf
    push word [bp + 0x4]             ; 0x40d1
    call api_idx_004c_MJSN           ; 0x40d4
    pop cx                           ; 0x40d7
    call api_idx_0004_KUMO           ; 0x40d8
    mov ax, 0xc7                     ; 0x40db
    push ax                          ; 0x40de
    mov ax, 0x13f                    ; 0x40df
    push ax                          ; 0x40e2
    mov ax, 0                        ; 0x40e3
    push ax                          ; 0x40e6
    push ax                          ; 0x40e7
    call thunk_4                     ; 0x40e8
    add sp, byte 8                   ; 0x40eb
@..loc_RPNL.l1:
    ret                              ; 0x40ee
