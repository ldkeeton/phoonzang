string_loc_1adb:
    mov ax, 0x248                    ; 0x1adb
    imul word [bp + 0x4]             ; 0x1ade
    mov bx, ax                       ; 0x1ae1
    mov byte [bx + 0x5dac], 0        ; 0x1ae3
    jmp short loc_1b1c               ; 0x1ae8
