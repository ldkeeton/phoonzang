; auto-generated
dos_con_loc_GKGP:
    mov ax, cs
    mov ds, ax
    mov dx, dos_con_loc_GKGP.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
