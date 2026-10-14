; auto-generated
; asm only
dos_con_loc_USIL:
    mov ax, cs                       ; 0x3b5c
    mov ds, ax                       ; 0x3b5e
    mov dx, 0x3c6c                   ; 0x3b60
    mov ah, 9                        ; 0x3b63
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3b67
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE slots.', 0
    db 0x0a, 0x24, 0x00, 0x00

