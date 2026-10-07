string_loc_08aa:
    mov bx, word [bp + 0x8]          ; 0x08aa
    mov al, byte [bx + 0x52c4]       ; 0x08ad
    sub ah, ah                       ; 0x08b1
    mov word [bp + 0x8], ax          ; 0x08b3
    jmp short loc_08f2               ; 0x08b6
