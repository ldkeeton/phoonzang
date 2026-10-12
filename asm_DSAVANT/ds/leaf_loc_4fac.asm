leaf_loc_4fac:
    push bp                          ; 0x4fac
    mov bp, sp                       ; 0x4fad
    mov ah, 0x40                     ; 0x4faf
    mov bx, word [bp + 0x4]          ; 0x4fb1
    jmp short @..aztec_write.use_dos ; 0x4fb4
