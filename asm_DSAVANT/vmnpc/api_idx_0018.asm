api_idx_0018:
    mov ax, 0xffe8                   ; 0x0727
    db 0xe8, 0xde, 0xec ; call 0xf40b
    mov byte [bp - 0x0018], 0        ; 0x072d
    mov ax, 6                        ; 0x0731
    imul word [bp + 0x4]             ; 0x0734
    mov cx, word [bp + 0x6]          ; 0x0737
    shl cx, 1                        ; 0x073a
    add ax, cx                       ; 0x073c
    mov bx, ax                       ; 0x073e
    mov ax, word [bx - 0x7bc6]       ; 0x0740
    mov word [bp - 0x0002], ax       ; 0x0744
    cmp word [bp - 0x0002], byte 0   ; 0x0747
    jne short @..api_idx_0018.l1     ; 0x074b
    ret                              ; 0x074d
