; auto-generated
ds_app_KNSQ: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0ee1
    call aztec_csav                  ; 0x0ee4
    mov ax, 0xc2                     ; 0x0ee7
    push ax                          ; 0x0eea
    push word [bp + 0xa]             ; 0x0eeb
    push word [bp + 0x8]             ; 0x0eee
    push word [bp + 0x6]             ; 0x0ef1
    push word [bp + 0x4]             ; 0x0ef4
    call thunk_7                     ; 0x0ef7
    add sp, byte 0x0a                ; 0x0efa
    push word [bp + 0xa]             ; 0x0efd
    push word [bp + 0x8]             ; 0x0f00
    push word [bp + 0x6]             ; 0x0f03
    push word [bp + 0x4]             ; 0x0f06
    call ds_app_GIKM                 ; 0x0f09
    add sp, byte 8                   ; 0x0f0c
    mov ax, 0xc5                     ; 0x0f0f
    push ax                          ; 0x0f12
    mov ax, 0xb4                     ; 0x0f13
    push ax                          ; 0x0f16
    push word [bp + 0xa]             ; 0x0f17
    push word [bp + 0x8]             ; 0x0f1a
    push word [bp + 0x6]             ; 0x0f1d
    push word [bp + 0x4]             ; 0x0f20
    call ds_app_TTLJ                 ; 0x0f23
    add sp, byte 0x0c                ; 0x0f26
    ret                              ; 0x0f29
