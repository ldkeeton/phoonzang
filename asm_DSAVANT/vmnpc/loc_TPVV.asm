; auto-generated
loc_TPVV:
    mov ax, 0                        ; 0x3df9
    call aztec_csav                  ; 0x3dfc
    mov ax, 6                        ; 0x3dff
    imul word [bp + 0xa]             ; 0x3e02
    add ax, word [bp + 0x6]          ; 0x3e05
    push ax                          ; 0x3e08
    mov ax, 6                        ; 0x3e09
    imul word [bp + 0x8]             ; 0x3e0c
    add ax, word [bp + 0x4]          ; 0x3e0f
    inc ax                           ; 0x3e12
    inc ax                           ; 0x3e13
    push ax                          ; 0x3e14
    push word [bp + 0x6]             ; 0x3e15
    push word [bp + 0x4]             ; 0x3e18
    call ds_app_URLN                 ; 0x3e1b
    add sp, byte 8                   ; 0x3e1e
    push word [bp + 0xe]             ; 0x3e21
    push word [bp + 0xc]             ; 0x3e24
    push word [bp + 0x10]            ; 0x3e27
    push word [bp + 0x8]             ; 0x3e2a
    push word [bp + 0x6]             ; 0x3e2d
    push word [bp + 0x4]             ; 0x3e30
    call api_idx_0004_MQNP           ; 0x3e33
    add sp, byte 0x0c                ; 0x3e36
    ret                              ; 0x3e39
