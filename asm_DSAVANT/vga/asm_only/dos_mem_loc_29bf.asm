; auto-generated
; asm only
dos_mem_loc_29bf:
    mov ax, cs                       ; 0x29bf
    mov ds, ax                       ; 0x29c1
    mov dx, 0x2acf                   ; 0x29c3
    mov ah, 9                        ; 0x29c6
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x29ca
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in fade_out().', 0
    db 0x0a, 0x24

