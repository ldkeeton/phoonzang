; auto-generated
; asm only
dos_con_loc_HPRK:
    mov ah, 9                        ; 0x31ad
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x31b1
    int 0x21 ; DOS function dispatcher
