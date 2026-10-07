    push bp                          ; 0x3829
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x40                     ; 0x382c
    mov bx, word [bp + 0x4]          ; 0x382e
    jmp short loc_3857               ; 0x3831
