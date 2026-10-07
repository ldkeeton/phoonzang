bios_video_loc_28ba:
    mov ax, cs                       ; 0x28ba
    mov ds, ax                       ; 0x28bc
    mov dx, 0x29ca                   ; 0x28be
    mov ah, 9                        ; 0x28c1
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x28c5
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in fade_in().', 0
    db 0x0a, 0x24

