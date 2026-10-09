app_0e03: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0e03
    call aztec_csav                  ; 0x0e06
    mov ax, 0                        ; 0x0e09
    push ax                          ; 0x0e0c
    mov ax, word [bp + 0x6]          ; 0x0e0d
    dec ax                           ; 0x0e10
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x8]          ; 0x0e12
    inc ax                           ; 0x0e15
    push ax                          ; 0x0e16
    mov ax, word [bp + 0x6]          ; 0x0e17
    dec ax                           ; 0x0e1a
    push ax                          ; 0x0e1b
    mov ax, word [bp + 0x4]          ; 0x0e1c
    dec ax                           ; 0x0e1f
    push ax                          ; 0x0e20
    call loc_3b48                    ; 0x0e21
    add sp, byte 0x0a                ; 0x0e24
    mov ax, 0                        ; 0x0e27
    push ax                          ; 0x0e2a
    mov ax, word [bp + 0xa]          ; 0x0e2b
    inc ax                           ; 0x0e2e
    push ax                          ; 0x0e2f
    mov ax, word [bp + 0x8]          ; 0x0e30
    inc ax                           ; 0x0e33
    push ax                          ; 0x0e34
    mov ax, word [bp + 0x6]          ; 0x0e35
    dec ax                           ; 0x0e38
    push ax                          ; 0x0e39
    mov ax, word [bp + 0x8]          ; 0x0e3a
    inc ax                           ; 0x0e3d
    push ax                          ; 0x0e3e
    call loc_3b48                    ; 0x0e3f
    add sp, byte 0x0a                ; 0x0e42
    mov ax, 0                        ; 0x0e45
    push ax                          ; 0x0e48
    mov ax, word [bp + 0xa]          ; 0x0e49
    inc ax                           ; 0x0e4c
    push ax                          ; 0x0e4d
    mov ax, word [bp + 0x8]          ; 0x0e4e
    inc ax                           ; 0x0e51
    push ax                          ; 0x0e52
    mov ax, word [bp + 0xa]          ; 0x0e53
    inc ax                           ; 0x0e56
    push ax                          ; 0x0e57
    mov ax, word [bp + 0x4]          ; 0x0e58
    dec ax                           ; 0x0e5b
    push ax                          ; 0x0e5c
    call loc_3b48                    ; 0x0e5d
    add sp, byte 0x0a                ; 0x0e60
    mov ax, 0                        ; 0x0e63
    push ax                          ; 0x0e66
    mov ax, word [bp + 0xa]          ; 0x0e67
    inc ax                           ; 0x0e6a
    push ax                          ; 0x0e6b
    mov ax, word [bp + 0x4]          ; 0x0e6c
    dec ax                           ; 0x0e6f
    push ax                          ; 0x0e70
    mov ax, word [bp + 0x6]          ; 0x0e71
    dec ax                           ; 0x0e74
    push ax                          ; 0x0e75
    mov ax, word [bp + 0x4]          ; 0x0e76
    dec ax                           ; 0x0e79
    push ax                          ; 0x0e7a
    call loc_3b48                    ; 0x0e7b
    add sp, byte 0x0a                ; 0x0e7e
    ret                              ; 0x0e81
