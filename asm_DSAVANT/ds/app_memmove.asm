app_memmove: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0213
    call aztec_csav                  ; 0x0216
    push word [bp + 0xc]             ; 0x0219
    push word [bp + 0xa]             ; 0x021c
    push word [bp + 0x8]             ; 0x021f
    push word [bp + 0x6]             ; 0x0222
    push word [bp + 0x4]             ; 0x0225
    call aztec_movblock              ; 0x0228
    add sp, byte 0x0a                ; 0x022b
    ret                              ; 0x022e
