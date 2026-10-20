; auto-generated
; asm only
dos_con_loc_OHJU:
    mov ah, 9                        ; 0x45f2
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x45f6
    int 0x21 ; DOS function dispatcher
