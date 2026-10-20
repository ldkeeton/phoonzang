; auto-generated
dos_con_loc_QORG:
    mov ax, cs                       ; 0x3aee
    mov ds, ax                       ; 0x3af0
    mov dx, cseg_3afe - IMAGE_BASE   ; 0x3af2
    mov ah, 9                        ; 0x3af5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3af9
    int 0x21 ; DOS function dispatcher
cseg_3afe:

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS slots.', 0
    db 0x0a, 0x24

