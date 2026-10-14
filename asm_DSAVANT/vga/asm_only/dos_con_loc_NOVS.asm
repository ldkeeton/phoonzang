; auto-generated
; asm only
dos_con_loc_NOVS:
    mov ax, cs                       ; 0x2a97
    mov ds, ax                       ; 0x2a99
    mov dx, 0x2ba7                   ; 0x2a9b
    mov ah, 9                        ; 0x2a9e
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x2aa2
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in RESET_RGB().', 0
    db 0x0a, 0x24

