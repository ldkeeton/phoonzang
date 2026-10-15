; auto-generated
loc_TSPU:
    mov ax, 0                        ; 0x2c51
    call aztec_csav                  ; 0x2c54
    mov ax, 6                        ; 0x2c57
    imul word [bp + 0xa]             ; 0x2c5a
    add ax, word [bp + 0x6]          ; 0x2c5d
    push ax                          ; 0x2c60
    mov ax, 6                        ; 0x2c61
    imul word [bp + 0x8]             ; 0x2c64
    add ax, word [bp + 0x4]          ; 0x2c67
    inc ax                           ; 0x2c6a
    inc ax                           ; 0x2c6b
    push ax                          ; 0x2c6c
    push word [bp + 0x6]             ; 0x2c6d
    push word [bp + 0x4]             ; 0x2c70
    call ds_app_URLN                 ; 0x2c73
    add sp, byte 8                   ; 0x2c76
    push word [bp + 0xe]             ; 0x2c79
    push word [bp + 0xc]             ; 0x2c7c
    push word [bp + 0x10]            ; 0x2c7f
    push word [bp + 0x8]             ; 0x2c82
    push word [bp + 0x6]             ; 0x2c85
    push word [bp + 0x4]             ; 0x2c88
    call api_idx_0004_JRIG           ; 0x2c8b
    add sp, byte 0x0c                ; 0x2c8e
    ret                              ; 0x2c91
