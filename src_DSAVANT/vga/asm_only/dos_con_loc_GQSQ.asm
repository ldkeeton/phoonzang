; auto-generated
; asm only
dos_con_loc_GQSQ:
    mov ah, 9                        ; 0x4088
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x408c
    int 0x21 ; DOS function dispatcher
