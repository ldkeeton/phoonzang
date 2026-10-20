; auto-generated
; asm only
dos_con_loc_HNTO:
    mov ah, 9                        ; 0x4719
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x471d
    int 0x21 ; DOS function dispatcher
