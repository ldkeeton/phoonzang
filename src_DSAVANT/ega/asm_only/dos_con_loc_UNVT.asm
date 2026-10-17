; auto-generated
; asm only
dos_con_loc_UNVT:
    mov ax, cs                       ; 0x0fae
    mov ds, ax                       ; 0x0fb0
    mov dx, 0x10be                   ; 0x0fb2
    mov ah, 9                        ; 0x0fb5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0fb9
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with table full.', 0
    db 0x0a, 0x24

