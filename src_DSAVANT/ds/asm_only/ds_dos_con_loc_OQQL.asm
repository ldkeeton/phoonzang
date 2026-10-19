; auto-generated
; asm only
ds_dos_con_loc_OQQL:
    mov ax, cs                       ; 0x35b8
    mov ds, ax                       ; 0x35ba
    mov dx, cseg_35c9 - IMAGE_BASE   ; 0x35bc
    mov ah, 9                        ; 0x35bf
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x35c3
    int 0x21 ; DOS function dispatcher
    db 0xc3
cseg_35c9:

    db 0x0d, 0x0a, 0x07
    db 'Unable to load display driver', 0
    db 0x0a, 0x24

