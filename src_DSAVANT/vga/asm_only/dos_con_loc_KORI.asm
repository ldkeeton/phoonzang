; auto-generated
; asm only
dos_con_loc_KORI:
    mov ax, cs                       ; 0x22ee
    mov ds, ax                       ; 0x22f0
    mov dx, cseg_22fe - IMAGE_BASE   ; 0x22f2
    mov ah, 9                        ; 0x22f5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x22f9
    int 0x21 ; DOS function dispatcher
cseg_22fe:

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable loading picture.', 0
    db 0x0a, 0x24

