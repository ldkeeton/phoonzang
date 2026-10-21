; auto-generated
dos_con_loc_UIHJ:
    mov ah, 9                        ; 0x4755
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4759
    int 0x21 ; DOS function dispatcher
