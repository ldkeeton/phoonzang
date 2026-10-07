dos_con_loc_43a7:
    mov ah, 9                        ; 0x43a7
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x43ab
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS slots.', 0
    db 0x0a, 0x24

@..dos_write_file_2.l21:
    mov ax, cs                       ; 0x43d1
    mov ds, ax                       ; 0x43d3
    mov dx, 0x44e1                   ; 0x43d5
