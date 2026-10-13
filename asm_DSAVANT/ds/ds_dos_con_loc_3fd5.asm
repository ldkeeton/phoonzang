ds_dos_con_loc_3fd5:
    mov ah, 9                        ; 0x3fd5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3fd9
    int 0x21 ; DOS function dispatcher

    db 0x07, 0x0d, 0x0a
    db 'I/O error loading Misc. table.'
    db 0x0d, 0x0a, 0x24

