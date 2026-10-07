math_loc_6b5a:
    mov ax, 0                        ; 0x6b5a
    call ds_dispatch_f40b            ; 0x6b5d
    cmp word [data_9b48], byte 0     ; 0x6b60
    je short @..math_loc_6b5a.l1     ; 0x6b65
    ret                              ; 0x6b67
