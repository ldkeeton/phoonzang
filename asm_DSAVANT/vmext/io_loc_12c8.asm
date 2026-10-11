io_loc_12c8:
    mov ax, 0x248                    ; 0x12c8
    imul word [bp - 0x0006]          ; 0x12cb
    mov bx, ax                       ; 0x12ce
    cmp byte [bx + 0x5e2f], 2        ; 0x12d0
    jae short @..io_loc_12c8.l1      ; 0x12d5
    mov byte [bx + 0x5e2f], 2        ; 0x12d7
@..io_loc_12c8.l1:
    jmp short loc_1325               ; 0x12dc
