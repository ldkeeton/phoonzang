; auto-generated
ds_app_OOHU: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1cb1
    call aztec_csav                  ; 0x1cb4
    mov ax, 0x4b                     ; 0x1cb7
    push ax                          ; 0x1cba
    call random_below                ; 0x1cbb
    pop cx                           ; 0x1cbe
    mov word [bss_59f4], ax          ; 0x1cbf
    mov al, byte [bss_59f4]          ; 0x1cc2
    mov byte [code_characters], al   ; 0x1cc5
    mov byte [bss_0fd5], al          ; 0x1cc8
    ret                              ; 0x1ccb
