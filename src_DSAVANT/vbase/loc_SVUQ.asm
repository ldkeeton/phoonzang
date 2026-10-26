; auto-generated
loc_SVUQ:
    mov ax, 0                        ; 0x6c1e
    call aztec_csav                  ; 0x6c21
    mov ax, 0                        ; 0x6c24
    push ax                          ; 0x6c27
    mov ax, 0xc6                     ; 0x6c28
    push ax                          ; 0x6c2b
    mov ax, 0x13f                    ; 0x6c2c
    push ax                          ; 0x6c2f
    mov ax, 0x92                     ; 0x6c30
    push ax                          ; 0x6c33
    mov ax, 0                        ; 0x6c34
    push ax                          ; 0x6c37
    call gfx_fill_area               ; 0x6c38
    add sp, byte 0xa                 ; 0x6c3b
    ret                              ; 0x6c3e
