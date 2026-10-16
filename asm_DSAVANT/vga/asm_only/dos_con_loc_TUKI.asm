; auto-generated
; asm only
dos_con_loc_TUKI:
    mov ah, 9                        ; 0x147d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x1481
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Mouse pointer size out of range.', 0
    db 0x0a, 0x24

