api_idx_000a:
    mov ax, 0xfff6                   ; 0x0244
    call ds_aztec_csav               ; 0x0247
    mov ax, 0                        ; 0x024a
    push ax                          ; 0x024d
    push word [bss_8d10]             ; 0x024e
    push word [bss_8d0e]             ; 0x0252
    call ds_loc_3b96                 ; 0x0256
    add sp, byte 6                   ; 0x0259
    mov ax, 0                        ; 0x025c
    push ax                          ; 0x025f
    push word [bss_8d0c]             ; 0x0260
    push word [bss_8d0a]             ; 0x0264
    call ds_loc_3b96                 ; 0x0268
    add sp, byte 6                   ; 0x026b
    mov byte [bp - 0x000a], 1        ; 0x026e
    mov byte [bp - 0x0009], 0        ; 0x0272
    mov ax, 0                        ; 0x0276
    push ax                          ; 0x0279
    push ax                          ; 0x027a
    lea ax, word [bp - 0x000a]       ; 0x027b
    push ax                          ; 0x027e
    mov ax, 0                        ; 0x027f
    push ax                          ; 0x0282
    mov ax, 0xc7                     ; 0x0283
    push ax                          ; 0x0286
    mov ax, 0                        ; 0x0287
    push ax                          ; 0x028a
    mov ax, 0x13f                    ; 0x028b
    push ax                          ; 0x028e
    mov ax, 0                        ; 0x028f
    push ax                          ; 0x0292
    mov ax, 0x9a                     ; 0x0293
    push ax                          ; 0x0296
    mov ax, 0x37                     ; 0x0297
    push ax                          ; 0x029a
    mov ax, 0xe                      ; 0x029b
    push ax                          ; 0x029e
    call ds_loc_4218                 ; 0x029f
    add sp, byte 0x16                ; 0x02a2
    cmp word [bp + 0x4], byte 0      ; 0x02a5
    je short @..api_idx_000a.l1      ; 0x02a9
    mov ax, 0xc2                     ; 0x02ab
    push ax                          ; 0x02ae
    mov ax, 0x13a                    ; 0x02af
    push ax                          ; 0x02b2
    mov ax, 0x93                     ; 0x02b3
    push ax                          ; 0x02b6
    mov ax, 8                        ; 0x02b7
    push ax                          ; 0x02ba
    call ds_loc_3b21                 ; 0x02bb
    add sp, byte 8                   ; 0x02be
@..api_idx_000a.l1:
    ret                              ; 0x02c1
