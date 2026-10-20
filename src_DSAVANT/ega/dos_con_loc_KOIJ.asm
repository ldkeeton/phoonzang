; auto-generated
dos_con_loc_KOIJ:
    mov ax, cs                       ; 0x0f70
    mov ds, ax                       ; 0x0f72
    mov dx, cseg_0f80 - IMAGE_BASE   ; 0x0f74
    mov ah, 9                        ; 0x0f77
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0f7b
    int 0x21 ; DOS function dispatcher
cseg_0f80:

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with bad slot number.', 0
    db 0x0a, 0x24

