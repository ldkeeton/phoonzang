; auto-generated
fill_frame_border:
    mov ax, 0                        ; 0x17a6
    call aztec_csav                  ; 0x17a9
    push word [bp + 0xc]             ; 0x17ac
    mov ax, word [bp + 6]            ; 0x17af
    dec ax                           ; 0x17b2
    push ax                          ; 0x17b3
    mov ax, word [bp + 8]            ; 0x17b4
    inc ax                           ; 0x17b7
    push ax                          ; 0x17b8
    mov ax, word [bp + 6]            ; 0x17b9
    dec ax                           ; 0x17bc
    push ax                          ; 0x17bd
    mov ax, word [bp + 4]            ; 0x17be
    dec ax                           ; 0x17c1
    push ax                          ; 0x17c2
    call call_fill_area              ; 0x17c3
    add sp, byte 0xa                 ; 0x17c6
    push word [bp + 0xc]             ; 0x17c9
    mov ax, word [bp + 0xa]          ; 0x17cc
    inc ax                           ; 0x17cf
    push ax                          ; 0x17d0
    mov ax, word [bp + 8]            ; 0x17d1
    inc ax                           ; 0x17d4
    push ax                          ; 0x17d5
    mov ax, word [bp + 6]            ; 0x17d6
    dec ax                           ; 0x17d9
    push ax                          ; 0x17da
    mov ax, word [bp + 8]            ; 0x17db
    inc ax                           ; 0x17de
    push ax                          ; 0x17df
    call call_fill_area              ; 0x17e0
    add sp, byte 0xa                 ; 0x17e3
    push word [bp + 0xc]             ; 0x17e6
    mov ax, word [bp + 0xa]          ; 0x17e9
    inc ax                           ; 0x17ec
    push ax                          ; 0x17ed
    mov ax, word [bp + 8]            ; 0x17ee
    inc ax                           ; 0x17f1
    push ax                          ; 0x17f2
    mov ax, word [bp + 0xa]          ; 0x17f3
    inc ax                           ; 0x17f6
    push ax                          ; 0x17f7
    mov ax, word [bp + 4]            ; 0x17f8
    dec ax                           ; 0x17fb
    push ax                          ; 0x17fc
    call call_fill_area              ; 0x17fd
    add sp, byte 0xa                 ; 0x1800
    push word [bp + 0xc]             ; 0x1803
    mov ax, word [bp + 0xa]          ; 0x1806
    inc ax                           ; 0x1809
    push ax                          ; 0x180a
    mov ax, word [bp + 4]            ; 0x180b
    dec ax                           ; 0x180e
    push ax                          ; 0x180f
    mov ax, word [bp + 6]            ; 0x1810
    dec ax                           ; 0x1813
    push ax                          ; 0x1814
    mov ax, word [bp + 4]            ; 0x1815
    dec ax                           ; 0x1818
    push ax                          ; 0x1819
    call call_fill_area              ; 0x181a
    add sp, byte 0xa                 ; 0x181d
    ret                              ; 0x1820
