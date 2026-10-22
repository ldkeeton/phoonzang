; auto-generated
dos_con_loc_KGMT:
    mov ah, 9                        ; 0x43d8
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x43dc
    int 0x21 ; DOS function dispatcher
