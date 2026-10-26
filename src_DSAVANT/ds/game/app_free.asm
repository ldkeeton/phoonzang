; auto-generated
app_free:
    mov ax, 0                        ; 0x022f
    call aztec_csav                  ; 0x0232
    push word [bp + 6]               ; 0x0235
    push word [bp + 4]               ; 0x0238
    call aztec_lfree                 ; 0x023b
    add sp, byte 4                   ; 0x023e
    ret                              ; 0x0241
