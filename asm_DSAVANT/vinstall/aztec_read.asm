aztec_read:
    push bp ; } / #asm ; 0x381f
    mov bp, sp                       ; 0x3820
    mov ah, 0x3f                     ; 0x3822
    mov bx, word [bp + 0x4]          ; 0x3824
    jmp short loc_3857               ; 0x3827
