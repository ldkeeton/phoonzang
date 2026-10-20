; auto-generated
dos_con_loc_HJHM:
    mov ah, 9                        ; 0x47af
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x47b3
    int 0x21 ; DOS function dispatcher
