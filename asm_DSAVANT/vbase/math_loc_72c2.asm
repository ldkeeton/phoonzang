math_loc_72c2:
    mov ax, 0                        ; 0x72c2
    call ds_dispatch_f40b            ; 0x72c5
    push word [bp + 0x4]             ; 0x72c8
    call 0xefb7                      ; 0x72cb
    pop cx                           ; 0x72ce
    ret                              ; 0x72cf
