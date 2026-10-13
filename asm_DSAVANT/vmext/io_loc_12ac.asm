; auto-generated
io_loc_12ac:
    mov ax, 0x248                    ; 0x12ac
    imul word [bp - 0x0006]          ; 0x12af
    mov bx, ax                       ; 0x12b2
    mov al, byte [bx + 0x5d5d]       ; 0x12b4
    sub ah, ah                       ; 0x12b8
    cmp ax, word [bp - 0x000e]       ; 0x12ba
    jge short @..io_loc_12ac.l1      ; 0x12bd
    mov al, byte [bp - 0x000e]       ; 0x12bf
    mov byte [bx + 0x5d5d], al       ; 0x12c2
@..io_loc_12ac.l1:
    jmp short loc_1325               ; 0x12c6
