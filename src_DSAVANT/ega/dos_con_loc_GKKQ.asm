; auto-generated
dos_con_loc_GKKQ:
    mov ah, 9                        ; 0x4370
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4374
    int 0x21 ; DOS function dispatcher
