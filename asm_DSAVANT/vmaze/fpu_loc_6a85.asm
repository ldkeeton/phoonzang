; auto-generated
fpu_loc_6a85:
    mov ax, word [bp + 0xe]          ; 0x6a85
    xchg al, ah                      ; 0x6a88
    sub al, al                       ; 0x6a8a
    add ax, word [bp + 0x10]         ; 0x6a8c
    mov bx, word [bp - 0x0004]       ; 0x6a8f
    mov word [bx + 0x4], ax          ; 0x6a92
    jmp short loc_6ac6               ; 0x6a95
