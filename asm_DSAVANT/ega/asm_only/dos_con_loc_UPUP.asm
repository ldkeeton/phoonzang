; auto-generated
; asm only
dos_con_loc_UPUP:
    mov ah, 9                        ; 0x317d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3181
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Picture slot 00 not freed.', 0
    db 0x0a, 0x24

@..dos_read_file_3.l8:
    mov ax, cs                       ; 0x31a6
    mov ds, ax                       ; 0x31a8
    mov dx, 0x32b6                   ; 0x31aa
