; auto-generated
; asm only
dos_con_loc_UUHT:
    mov ax, cs                       ; 0x22be
    mov ds, ax                       ; 0x22c0
    mov dx, 0x23ce                   ; 0x22c2
    mov ah, 9                        ; 0x22c5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x22c9
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Picture slot '

cseg_22de:
    db 0x30
cseg_22df:
    db '0 not freed.', 0
    db 0x0a, 0x24
