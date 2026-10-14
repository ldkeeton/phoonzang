; auto-generated
; asm only
ds_dos_con_loc_QUNU:
    mov ax, cs                       ; 0x3640
    mov ds, ax                       ; 0x3642
    mov dx, 0x3451                   ; 0x3644
    mov ah, 9                        ; 0x3647
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x364b
    int 0x21 ; DOS function dispatcher

    db 0xc3, 0x0d, 0x0a, 0x07
    db 'Unable to load sound driver', 0
    db 0x0a, 0x24

cseg_3672:
    db 0x90, 0x01
