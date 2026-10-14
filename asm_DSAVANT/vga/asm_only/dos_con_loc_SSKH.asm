; auto-generated
; asm only
dos_con_loc_SSKH:
    mov ah, 9                        ; 0x422f
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4233
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_read_file_6.l5:
    mov ax, cs                       ; 0x4264
    mov ds, ax                       ; 0x4266
    mov dx, 0x4374                   ; 0x4268
