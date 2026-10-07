    push bp                          ; 0x4fac
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x40                     ; 0x4faf
    mov bx, word [bp + 0x4]          ; 0x4fb1
    jmp short loc_4fda               ; 0x4fb4
