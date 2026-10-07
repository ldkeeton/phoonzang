dos_con_loc_3ab7:
    mov ax, cs                       ; 0x3ab7
    mov ds, ax                       ; 0x3ab9
    mov dx, 0x3bc7                   ; 0x3abb
    mov ah, 9                        ; 0x3abe
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3ac2
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..dos_write_file_2.l18:
    pop si                           ; 0x3ae6
    pop di                           ; 0x3ae7
    pop ds                           ; 0x3ae8
    pop es                           ; 0x3ae9
    mov sp, bp                       ; 0x3aea
    pop bp                           ; 0x3aec
    ret                              ; 0x3aed
