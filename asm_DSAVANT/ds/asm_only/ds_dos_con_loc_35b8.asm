; auto-generated
; asm only
ds_dos_con_loc_35b8:
    mov ax, cs                       ; 0x35b8
    mov ds, ax                       ; 0x35ba
    mov dx, 0x33c9                   ; 0x35bc
    mov ah, 9                        ; 0x35bf
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x35c3
    int 0x21 ; DOS function dispatcher

    db 0xc3, 0x0d, 0x0a, 0x07
    db 'Unable to load display driver', 0
    db 0x0a
    db '$play.drv', 0

