; auto-generated
loc_PKMN:
    mov ax, 0                        ; 0x2189
    call aztec_csav                  ; 0x218c
    push word [bp + 0x4]             ; 0x218f
    call api_idx_007c_KMHO           ; 0x2192
    pop cx                           ; 0x2195
    push word [bp + 0x4]             ; 0x2196
    call api_idx_0080_RPOR           ; 0x2199
    pop cx                           ; 0x219c
    cmp word [bp + 0x6], byte 0      ; 0x219d
    jne short @..loc_PKMN.l1         ; 0x21a1
    push word [bp + 0x4]             ; 0x21a3
    call api_idx_004c_QHGO           ; 0x21a6
    pop cx                           ; 0x21a9
    mov ax, 0xc7                     ; 0x21aa
    push ax                          ; 0x21ad
    mov ax, 0x13f                    ; 0x21ae
    push ax                          ; 0x21b1
    mov ax, 0                        ; 0x21b2
    push ax                          ; 0x21b5
    push ax                          ; 0x21b6
    call thunk_4                     ; 0x21b7
    add sp, byte 8                   ; 0x21ba
@..loc_PKMN.l1:
    ret                              ; 0x21bd
