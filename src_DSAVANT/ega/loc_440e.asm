; auto-generated
loc_440e:
    mov ax, cs                       ; 0x440e
    mov ds, ax                       ; 0x4410
    mov dx, cseg_441e - IMAGE_BASE   ; 0x4412
    mov ah, 9                        ; 0x4415
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4419
    int 0x21 ; DOS function dispatcher
cseg_441e:

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE slots.', 0
    db 0x0a, 0x24

