; auto-generated
dos_con_loc_KOGR:
    mov ax, cs
    mov ds, ax
    mov dx, dos_con_loc_KOGR.cseg1 - IMAGE_BASE
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher
dos_con_loc_KOGR.cseg1:

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... not enough memory.', 0
    db 0x0a, 0x24

