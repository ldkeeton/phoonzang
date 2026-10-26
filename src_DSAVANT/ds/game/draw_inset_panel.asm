; auto-generated
draw_inset_panel:
    mov ax, 0                        ; 0x0fdf
    call aztec_csav                  ; 0x0fe2
    mov ax, 0xc3                     ; 0x0fe5
    push ax                          ; 0x0fe8
    push word [bp + 0xa]             ; 0x0fe9
    push word [bp + 8]               ; 0x0fec
    push word [bp + 6]               ; 0x0fef
    push word [bp + 4]               ; 0x0ff2
    call gfx_fill_area               ; 0x0ff5
    add sp, byte 0xa                 ; 0x0ff8
    push word [bp + 0xa]             ; 0x0ffb
    push word [bp + 8]               ; 0x0ffe
    push word [bp + 6]               ; 0x1001
    push word [bp + 4]               ; 0x1004
    call draw_rect_outline           ; 0x1007
    add sp, byte 8                   ; 0x100a
    mov ax, 0xb4                     ; 0x100d
    push ax                          ; 0x1010
    mov ax, 0xc5                     ; 0x1011
    push ax                          ; 0x1014
    mov ax, word [bp + 0xa]          ; 0x1015
    inc ax                           ; 0x1018
    inc ax                           ; 0x1019
    push ax                          ; 0x101a
    mov ax, word [bp + 8]            ; 0x101b
    inc ax                           ; 0x101e
    inc ax                           ; 0x101f
    push ax                          ; 0x1020
    mov ax, word [bp + 6]            ; 0x1021
    dec ax                           ; 0x1024
    dec ax                           ; 0x1025
    push ax                          ; 0x1026
    mov ax, word [bp + 4]            ; 0x1027
    dec ax                           ; 0x102a
    dec ax                           ; 0x102b
    push ax                          ; 0x102c
    call draw_rect_bevel             ; 0x102d
    add sp, byte 0xc                 ; 0x1030
    ret                              ; 0x1033
