; auto-generated
; asm only
dos_con_loc_TUKI:
    mov ah, 9                        ; 0x147d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x1481
    int 0x21 ; DOS function dispatcher
