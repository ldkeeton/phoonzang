dos_mem_loc_371d:
    mov ax, cs                       ; 0x371d
    mov ds, ax                       ; 0x371f
    mov dx, 0x352e                   ; 0x3721
    mov ah, 9                        ; 0x3724
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3728
    int 0x21 ; DOS function dispatcher
loc_372d:
    ret                              ; 0x372d
