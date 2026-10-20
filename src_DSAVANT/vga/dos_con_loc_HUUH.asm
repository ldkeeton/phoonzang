; auto-generated
dos_con_loc_HUUH:
    mov ax, cs                       ; 0x0a8d
    mov ds, ax                       ; 0x0a8f
    mov dx, cseg_0a9d - IMAGE_BASE   ; 0x0a91
    mov ah, 9                        ; 0x0a94
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0a98
    int 0x21 ; DOS function dispatcher
cseg_0a9d:

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with table full.', 0
    db 0x0a, 0x24

