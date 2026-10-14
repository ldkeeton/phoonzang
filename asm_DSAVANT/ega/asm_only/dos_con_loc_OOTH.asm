; auto-generated
; asm only
dos_con_loc_OOTH:
    mov ah, 9                        ; 0x4ae1
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4ae5
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_read_file_6.l5:
    mov ax, cs                       ; 0x4b16
    mov ds, ax                       ; 0x4b18
    mov dx, 0x4c26                   ; 0x4b1a
