api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x86a4
    db 0xe8, 0x61, 0x6d ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0x86aa
    jmp short @..api_idx_0002_8.l2   ; 0x86af
@..api_idx_0002_8.l1:
    mov bx, word [bp + 0x4]          ; 0x86b1
    mov si, word [bp - 0x0002]       ; 0x86b4
    mov byte [bx + si], 0x78         ; 0x86b7
    inc word [bp - 0x0002]           ; 0x86ba
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]       ; 0x86bd
    cmp ax, word [bp + 0x6]          ; 0x86c0
    jl short @..api_idx_0002_8.l1    ; 0x86c3
    ret                              ; 0x86c5
