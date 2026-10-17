; auto-generated
; asm only
dos_con_loc_MSRN:
    mov ah, 9                        ; 0x4ae1
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4ae5
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... slot already used.', 0
    db 0x0a, 0x24

