; auto-generated
dos_con_loc_GKQH:
    mov ax, cs                       ; 0x3ab7
    mov ds, ax                       ; 0x3ab9
    mov dx, cseg_3ac7 - IMAGE_BASE   ; 0x3abb
    mov ah, 9                        ; 0x3abe
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3ac2
    int 0x21 ; DOS function dispatcher
cseg_3ac7:

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

