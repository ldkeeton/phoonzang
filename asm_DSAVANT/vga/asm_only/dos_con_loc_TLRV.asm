; auto-generated
; asm only
dos_con_loc_TLRV:
    mov ah, 9                        ; 0x4088
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x408c
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xae

@..dos_file_loc_QVOO.l10:
    mov ax, cs                       ; 0x40cb
    mov ds, ax                       ; 0x40cd
    mov dx, 0x41db                   ; 0x40cf
