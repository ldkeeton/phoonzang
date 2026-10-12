aztec_read:
    push bp ; } / #asm ; 0x4fa2
    mov bp, sp                       ; 0x4fa3
    mov ah, 0x3f                     ; 0x4fa5
    mov bx, word [bp + 0x4]          ; 0x4fa7
    jmp short @..aztec_write.use_dos ; 0x4faa
