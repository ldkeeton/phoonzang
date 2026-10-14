; auto-generated
; asm only
dos_con_loc_PVVP:
    mov ax, cs                       ; 0x3b1f
    mov ds, ax                       ; 0x3b21
    mov dx, 0x3c2f                   ; 0x3b23
    mov ah, 9                        ; 0x3b26
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3b2a
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE/PIC memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0x8a

