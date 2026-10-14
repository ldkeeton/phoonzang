; auto-generated
dos_con_loc_4755:
    mov ah, 9                        ; 0x4755
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4759
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

