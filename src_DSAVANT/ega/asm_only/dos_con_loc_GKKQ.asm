; auto-generated
; asm only
dos_con_loc_GKKQ:
    mov ah, 9                        ; 0x4370
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4374
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

