; auto-generated
ds_app_1371: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1371
    call aztec_csav                  ; 0x1374
    push word [bp + 0x4]             ; 0x1377
    call ds_loc_41fe                 ; 0x137a
    pop cx                           ; 0x137d
    mov bx, word [bp + 0x4]          ; 0x137e
    mov byte [bx + 0x5b48], 0xff     ; 0x1381
    mov byte [bx + 0x5b5a], 0        ; 0x1386
    ret                              ; 0x138b
