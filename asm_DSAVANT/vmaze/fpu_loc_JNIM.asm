; auto-generated
fpu_loc_JNIM:
    mov ax, word [bp + 0xe]          ; 0x6a57
    mov cx, 4                        ; 0x6a5a
    shl ax, cl                       ; 0x6a5d
    add ax, word [bp + 0x10]         ; 0x6a5f
    xchg al, ah                      ; 0x6a62
    sub al, al                       ; 0x6a64
    mov dx, word [bp + 0x12]         ; 0x6a66
    shl dx, cl                       ; 0x6a69
    mov cx, dx                       ; 0x6a6b
    add ax, cx                       ; 0x6a6d
    add ax, word [bp + 0x14]         ; 0x6a6f
    mov bx, word [bp - 0x0004]       ; 0x6a72
    mov word [bx + 0x4], ax          ; 0x6a75
    jmp short loc_6ac6               ; 0x6a78
