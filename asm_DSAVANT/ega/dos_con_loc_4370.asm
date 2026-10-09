dos_con_loc_4370:
    mov ah, 9                        ; 0x4370
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4374
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..dos_write_file_2.l19:
    pop si                           ; 0x4398
    pop di                           ; 0x4399
    pop ds                           ; 0x439a
    pop es                           ; 0x439b
    mov sp, bp                       ; 0x439c
    pop bp                           ; 0x439e
    ret                              ; 0x439f
@..dos_write_file_2.l20:
    mov ax, cs                       ; 0x43a0
    mov ds, ax                       ; 0x43a2
    mov dx, 0x44b0                   ; 0x43a4
