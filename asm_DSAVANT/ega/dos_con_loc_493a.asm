; auto-generated
dos_con_loc_493a:
    mov ah, 9                        ; 0x493a
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x493e
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xae

@..loc_4825.l10:
    mov ax, cs                       ; 0x497d
    mov ds, ax                       ; 0x497f
    mov dx, 0x4a8d                   ; 0x4981
