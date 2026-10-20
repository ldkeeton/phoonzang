; auto-generated
dos_con_loc_NUII:
    mov ax, cs                       ; 0x1a9f
    mov ds, ax                       ; 0x1aa1
    mov dx, cseg_1aaf - IMAGE_BASE   ; 0x1aa3
    mov ah, 9                        ; 0x1aa6
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x1aaa
    int 0x21 ; DOS function dispatcher
cseg_1aaf:

    db 0x0d, 0x0a, 0x07
    db 'Mouse pointer size out of range.', 0
    db 0x0a, 0x24

