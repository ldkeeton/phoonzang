; auto-generated
ds_app_UKIP: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x03b8
    call aztec_csav                  ; 0x03bb
    push word [bp + 0x4]             ; 0x03be
    call ds_app_file_RKTP            ; 0x03c1
    pop cx                           ; 0x03c4
    push word [bp + 0x4]             ; 0x03c5
    call aztec_exit                  ; 0x03c8
    pop cx                           ; 0x03cb
    ret                              ; 0x03cc
