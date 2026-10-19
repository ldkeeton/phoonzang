; auto-generated
api_idx_0054_UKJH:
    mov ax, 0xffac                   ; 0x0d46
    call aztec_csav                  ; 0x0d49
    mov ax, 1                        ; 0x0d4c
    push ax                          ; 0x0d4f
    call api_idx_0006_SHUK           ; 0x0d50
    pop cx                           ; 0x0d53
    mov ax, 0x5f                     ; 0x0d54
    push ax                          ; 0x0d57
    mov ax, 0xa8                     ; 0x0d58
    push ax                          ; 0x0d5b
    mov ax, 0xdd                     ; 0x0d5c
    push ax                          ; 0x0d5f
    mov ax, 0xa4                     ; 0x0d60
    push ax                          ; 0x0d63
    mov ax, 0x62                     ; 0x0d64
    push ax                          ; 0x0d67
    call gfx_entry_18                ; 0x0d68
    add sp, byte 0x0a                ; 0x0d6b
    mov ax, 0x5f                     ; 0x0d6e
    push ax                          ; 0x0d71
    mov ax, 1                        ; 0x0d72
    push ax                          ; 0x0d75
    call gfx_entry_12                ; 0x0d76
    add sp, byte 4                   ; 0x0d79
    mov ax, 0xa4                     ; 0x0d7c
    push ax                          ; 0x0d7f
    mov ax, 0x63                     ; 0x0d80
    push ax                          ; 0x0d83
    call gfx_entry_13                ; 0x0d84
    add sp, byte 4                   ; 0x0d87
    mov ax, 0                        ; 0x0d8a
    push ax                          ; 0x0d8d
    mov ax, dseg_90bb                ; 0x0d8e
    push ax                          ; 0x0d91
    call ds_string_loc_QRJV          ; 0x0d92
    add sp, byte 4                   ; 0x0d95
    mov ax, 0                        ; 0x0d98
    push ax                          ; 0x0d9b
    mov ax, bss_9138                 ; 0x0d9c
    push ax                          ; 0x0d9f
    call ds_string_loc_QRJV          ; 0x0da0
    add sp, byte 4                   ; 0x0da3
    mov ax, 0xa4                     ; 0x0da6
    push ax                          ; 0x0da9
    mov ax, 0xce                     ; 0x0daa
    push ax                          ; 0x0dad
    call gfx_entry_13                ; 0x0dae
    add sp, byte 4                   ; 0x0db1
    mov ax, 0                        ; 0x0db4
    push ax                          ; 0x0db7
    mov ax, dseg_90be                ; 0x0db8
    push ax                          ; 0x0dbb
    call ds_string_loc_QRJV          ; 0x0dbc
    add sp, byte 4                   ; 0x0dbf
    ret                              ; 0x0dc2
