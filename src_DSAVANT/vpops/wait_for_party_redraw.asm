; auto-generated
wait_for_party_redraw:
    mov ax, 0                        ; 0x108d
    call aztec_csav                  ; 0x1090
.back1:
    cmp word [bss_845e], byte -2     ; 0x1093
    je short .return1                ; 0x1098
    call api_idx_0006_LJUS           ; 0x109a
    jmp short .back1                 ; 0x109d
.return1:
    ret                              ; 0x109f
loc_MNNG:
    mov ax, 0                        ; 0x10a0
    call aztec_csav                  ; 0x10a3
    push word [bp + 0xc]             ; 0x10a6
    mov ax, word [bp + 6]            ; 0x10a9
    dec ax                           ; 0x10ac
    push ax                          ; 0x10ad
    mov ax, word [bp + 8]            ; 0x10ae
    inc ax                           ; 0x10b1
    push ax                          ; 0x10b2
    mov ax, word [bp + 6]            ; 0x10b3
    dec ax                           ; 0x10b6
    push ax                          ; 0x10b7
    mov ax, word [bp + 4]            ; 0x10b8
    dec ax                           ; 0x10bb
    push ax                          ; 0x10bc
    call gfx_fill_area               ; 0x10bd
    add sp, byte 0xa                 ; 0x10c0
    push word [bp + 0xc]             ; 0x10c3
    mov ax, word [bp + 0xa]          ; 0x10c6
    inc ax                           ; 0x10c9
    push ax                          ; 0x10ca
    mov ax, word [bp + 8]            ; 0x10cb
    inc ax                           ; 0x10ce
    push ax                          ; 0x10cf
    mov ax, word [bp + 6]            ; 0x10d0
    dec ax                           ; 0x10d3
    push ax                          ; 0x10d4
    mov ax, word [bp + 8]            ; 0x10d5
    inc ax                           ; 0x10d8
    push ax                          ; 0x10d9
    call gfx_fill_area               ; 0x10da
    add sp, byte 0xa                 ; 0x10dd
    push word [bp + 0xc]             ; 0x10e0
    mov ax, word [bp + 0xa]          ; 0x10e3
    inc ax                           ; 0x10e6
    push ax                          ; 0x10e7
    mov ax, word [bp + 8]            ; 0x10e8
    inc ax                           ; 0x10eb
    push ax                          ; 0x10ec
    mov ax, word [bp + 0xa]          ; 0x10ed
    inc ax                           ; 0x10f0
    push ax                          ; 0x10f1
    mov ax, word [bp + 4]            ; 0x10f2
    dec ax                           ; 0x10f5
    push ax                          ; 0x10f6
    call gfx_fill_area               ; 0x10f7
    add sp, byte 0xa                 ; 0x10fa
    push word [bp + 0xc]             ; 0x10fd
    mov ax, word [bp + 0xa]          ; 0x1100
    inc ax                           ; 0x1103
    push ax                          ; 0x1104
    mov ax, word [bp + 4]            ; 0x1105
    dec ax                           ; 0x1108
    push ax                          ; 0x1109
    mov ax, word [bp + 6]            ; 0x110a
    dec ax                           ; 0x110d
    push ax                          ; 0x110e
    mov ax, word [bp + 4]            ; 0x110f
    dec ax                           ; 0x1112
    push ax                          ; 0x1113
    call gfx_fill_area               ; 0x1114
    add sp, byte 0xa                 ; 0x1117
    ret                              ; 0x111a
