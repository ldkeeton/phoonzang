; auto-generated
; asm only
dos_con_loc_PMRV:
    mov ah, 9                        ; 0x493a
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x493e
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xae

