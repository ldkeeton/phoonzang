api_idx_0050:
    mov ax, 0xffb0                   ; 0x13b4
    db 0xe8, 0x51, 0xe0 ; call 0xf40b
    lea ax, word [bp - 0x0050]       ; 0x13ba
    push ax                          ; 0x13bd
    push word [bp + 0x4]             ; 0x13be
    db 0xe8, 0x77, 0xa1 ; call 0xb53b
    add sp, byte 4                   ; 0x13c4
    mov ax, 0x5e                     ; 0x13c7
    push ax                          ; 0x13ca
    mov ax, 0x9138                   ; 0x13cb
    push ax                          ; 0x13ce
    lea ax, word [bp - 0x0050]       ; 0x13cf
    push ax                          ; 0x13d2
    call 0xb300                      ; 0x13d3
    add sp, byte 6                   ; 0x13d6
    push word [bp + 0xa]             ; 0x13d9
    push word [bp + 0x8]             ; 0x13dc
    push word [bp + 0x6]             ; 0x13df
    lea ax, word [bp - 0x0050]       ; 0x13e2
    push ax                          ; 0x13e5
    call math_loc_130b               ; 0x13e6
    add sp, byte 8                   ; 0x13e9
    ret                              ; 0x13ec
