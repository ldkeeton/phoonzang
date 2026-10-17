; auto-generated
; asm only
dos_con_loc_MQTN:
    mov ah, 9
    int 0x21 ; DOS string output
    mov ax, 0x4c01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Insufficient EMS.', 0
    db 0x0a, 0x24

