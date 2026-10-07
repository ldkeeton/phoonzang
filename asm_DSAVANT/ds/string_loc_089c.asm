string_loc_089c:
    mov bx, word [bp + 0x8]          ; 0x089c
    mov al, byte [bx + 0x5264]       ; 0x089f
    sub ah, ah                       ; 0x08a3
    mov word [bp + 0x8], ax          ; 0x08a5
    jmp short math_loc_08f2          ; 0x08a8
