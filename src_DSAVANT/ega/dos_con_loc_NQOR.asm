; auto-generated
dos_con_loc_NQOR:
    mov ah, 9                        ; 0x43a7
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x43ab
    int 0x21 ; DOS function dispatcher
