; auto-generated
ds_app_OPJO: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x04c4
    call aztec_csav                  ; 0x04c7
    push word [bp + 0x6]             ; 0x04ca
    mov ax, word [bp + 0x4]          ; 0x04cd
    cwd                              ; 0x04d0
    push dx                          ; 0x04d1
    push ax                          ; 0x04d2
    call ds_app_ILKN                 ; 0x04d3
    add sp, byte 6                   ; 0x04d6
    ret                              ; 0x04d9
