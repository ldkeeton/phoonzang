; auto-generated
; asm only
dos_con_loc_0a4f:
    mov ax, cs                       ; 0x0a4f
    mov ds, ax                       ; 0x0a51
    mov dx, 0xb5f                    ; 0x0a53
    mov ah, 9                        ; 0x0a56
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0a5a
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with bad slot number.', 0
    db 0x0a, 0x24

