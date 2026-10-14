; auto-generated
; asm only
dos_con_loc_43d8:
    mov ah, 9                        ; 0x43d8
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x43dc
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE/PIC memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0x8a

@..dos_write_file_2.l22:
    mov ax, cs                       ; 0x440e
    mov ds, ax                       ; 0x4410
    mov dx, 0x451e                   ; 0x4412
    mov ah, 9                        ; 0x4415
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4419
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE slots.', 0
    db 0x0a, 0x24, 0x00, 0x00

