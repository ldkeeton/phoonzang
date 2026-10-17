; auto-generated
; asm only
dos_con_loc_OHJU:
    mov ah, 9                        ; 0x45f2
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x45f6
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

