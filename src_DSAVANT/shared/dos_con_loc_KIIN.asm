; auto-generated
; asm only
dos_con_loc_KIIN:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
