string_loc_08c6:
    mov bx, word [bp + 0x8]          ; 0x08c6
    mov al, byte [bx + 0x54c4]       ; 0x08c9
    sub ah, ah                       ; 0x08cd
    mov word [bp + 0x8], ax          ; 0x08cf
    jmp short math_loc_08f2          ; 0x08d2
    db 0x8e, 0x06, 0x8e, 0x06, 0xb8, 0x06, 0x9c, 0x06, 0xf2, 0x06, 0xaa, 0x06, 0xc6, 0x06
@..string_loc_0883.l1:
    sub ax, strict word 2            ; 0x08e2
    cmp ax, strict word 7            ; 0x08e5
    jae short math_loc_08f2          ; 0x08e8
    xchg bx, ax                      ; 0x08ea
    shl bx, 1                        ; 0x08eb
    jmp [cs:bx + 0x6d4]              ; 0x08ed
