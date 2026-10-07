math_loc_82a9:
    mov ax, 0                        ; 0x82a9
    call ds_dispatch_f40b            ; 0x82ac
    mov ax, 0xa                      ; 0x82af
    push ax                          ; 0x82b2
    call ds_dispatch_e489            ; 0x82b3
    pop cx                           ; 0x82b6
    ret                              ; 0x82b7
