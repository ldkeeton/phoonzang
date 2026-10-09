    mov ah, 9                        ; 0x3fd5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3fd9
    int 0x21 ; DOS function dispatcher
    pop es                           ; 0x3fde

    db 0x0d, 0x0a
    db 'I/O error loading Misc. table.'
    db 0x0d, 0x0a, 0x24

