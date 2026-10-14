; auto-generated
; asm only
dos_con_loc_KSIP:
    mov ax, cs                       ; 0x3d39
    mov ds, ax                       ; 0x3d3b
    mov dx, 0x3e49                   ; 0x3d3d
    mov ah, 9                        ; 0x3d40
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3d44
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

@..dos_file_loc_IIUJ.l2:
    pop di                           ; 0x3d6d
    pop si                           ; 0x3d6e
    pop es                           ; 0x3d6f
    pop ds                           ; 0x3d70
    ret                              ; 0x3d71
