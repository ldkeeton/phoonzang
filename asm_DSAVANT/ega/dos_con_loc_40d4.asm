dos_con_loc_40d4:
    mov ah, 9                        ; 0x40d4
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x40d8
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk in CACHEAREA().', 0
    db 0x0a, 0x24

