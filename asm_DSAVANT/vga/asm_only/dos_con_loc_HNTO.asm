; auto-generated
; asm only
dos_con_loc_HNTO:
    mov ah, 9                        ; 0x4719
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x471d
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_read_file_7.l6:
    mov ax, cs                       ; 0x474e
    mov ds, ax                       ; 0x4750
    mov dx, 0x485e                   ; 0x4752
