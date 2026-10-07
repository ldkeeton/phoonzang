string_loc_08b8:
    mov bx, word [bp + 0x8]          ; 0x08b8
    mov al, byte [bx + 0x53c4]       ; 0x08bb
    sub ah, ah                       ; 0x08bf
    mov word [bp + 0x8], ax          ; 0x08c1
    jmp short math_loc_08f2          ; 0x08c4
