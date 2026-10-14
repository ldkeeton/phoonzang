; auto-generated
; asm only
dos_con_loc_QNMU:
    mov ah, 9                        ; 0x47af
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x47b3
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xb0

@..dos_read_file_5.l10:
    mov ax, cs                       ; 0x47f0
    mov ds, ax                       ; 0x47f2
    mov dx, 0x4900                   ; 0x47f4
