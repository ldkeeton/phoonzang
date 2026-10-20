; auto-generated
; asm only
dos_con_loc_VTSU:
    mov ah, 9                        ; 0x422f
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4233
    int 0x21 ; DOS function dispatcher
