dos_con_loc_35b8:
    mov ax, cs                       ; 0x35b8
    mov ds, ax                       ; 0x35ba
    mov dx, 0x33c9                   ; 0x35bc
    mov ah, 9                        ; 0x35bf
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x35c3
    int 0x21 ; DOS function dispatcher
    db 0xc3
