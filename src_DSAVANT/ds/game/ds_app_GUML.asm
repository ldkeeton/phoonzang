; auto-generated
ds_app_GUML: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x052e
    call aztec_csav                  ; 0x0531
    push word [bp + 0x8]             ; 0x0534
    push word [bp + 0x6]             ; 0x0537
    mov ax, word [bp + 0x4]          ; 0x053a
    cwd                              ; 0x053d
    push dx                          ; 0x053e
    push ax                          ; 0x053f
    call ds_app_string_THKS          ; 0x0540
    add sp, byte 8                   ; 0x0543
    ret                              ; 0x0546
