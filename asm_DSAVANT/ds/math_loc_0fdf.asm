math_loc_0fdf:
    mov ax, 0                        ; 0x0fdf
    call leaf_loc_4652               ; 0x0fe2
    mov ax, 0xc3                     ; 0x0fe5
    push ax                          ; 0x0fe8
    push word [bp + 0xa]             ; 0x0fe9
    push word [bp + 0x8]             ; 0x0fec
    push word [bp + 0x6]             ; 0x0fef
    push word [bp + 0x4]             ; 0x0ff2
    call loc_3b48                    ; 0x0ff5
    add sp, byte 0x0a                ; 0x0ff8
    push word [bp + 0xa]             ; 0x0ffb
    push word [bp + 0x8]             ; 0x0ffe
    push word [bp + 0x6]             ; 0x1001
    push word [bp + 0x4]             ; 0x1004
    call loc_0e03                    ; 0x1007
    add sp, byte 8                   ; 0x100a
    mov ax, 0xb4                     ; 0x100d
    push ax                          ; 0x1010
    mov ax, 0xc5                     ; 0x1011
    push ax                          ; 0x1014
    mov ax, word [bp + 0xa]          ; 0x1015
    inc ax                           ; 0x1018
    inc ax                           ; 0x1019
    push ax                          ; 0x101a
    mov ax, word [bp + 0x8]          ; 0x101b
    inc ax                           ; 0x101e
    inc ax                           ; 0x101f
    push ax                          ; 0x1020
    mov ax, word [bp + 0x6]          ; 0x1021
    dec ax                           ; 0x1024
    dec ax                           ; 0x1025
    push ax                          ; 0x1026
    mov ax, word [bp + 0x4]          ; 0x1027
    dec ax                           ; 0x102a
    dec ax                           ; 0x102b
    push ax                          ; 0x102c
    call loc_0e82                    ; 0x102d
    add sp, byte 0x0c                ; 0x1030
    ret                              ; 0x1033
