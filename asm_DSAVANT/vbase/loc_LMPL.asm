; auto-generated
loc_LMPL:
    mov ax, 0                        ; 0x6c3f
    call aztec_csav                  ; 0x6c42
    mov ax, 0xc6                     ; 0x6c45
    push ax                          ; 0x6c48
    mov ax, 0x13e                    ; 0x6c49
    push ax                          ; 0x6c4c
    mov ax, 0x92                     ; 0x6c4d
    push ax                          ; 0x6c50
    mov ax, 0xc                      ; 0x6c51
    push ax                          ; 0x6c54
    call ds_app_io_LUON              ; 0x6c55
    add sp, byte 8                   ; 0x6c58
    ret                              ; 0x6c5b
