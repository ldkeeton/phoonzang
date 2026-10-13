ds_app_2b4e: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x2b4e
    call aztec_csav                  ; 0x2b51
    push word [bp + 0x4]             ; 0x2b54
    call ds_loc_41bd                 ; 0x2b57
    pop cx                           ; 0x2b5a
    mov word [bss_82b6], 0xffff      ; 0x2b5b
    ret                              ; 0x2b61
