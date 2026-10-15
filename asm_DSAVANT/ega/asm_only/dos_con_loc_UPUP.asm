; auto-generated
; asm only
dos_con_loc_UPUP:
    mov ah, 9                        ; 0x317d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3181
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Picture slot '

