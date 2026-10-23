; auto-generated
dos_con_loc_IJTT:
    mov bx, cs                       ; 0x3156
    mov ds, bx                       ; 0x3158
    mov dx, cseg_3166 - IMAGE_BASE   ; 0x315a
    mov ah, 9                        ; 0x315d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3161
    int 0x21 ; DOS function dispatcher
cseg_3166:
    db 0x0d, 0x0a, 0x07
    db 'Frame '
