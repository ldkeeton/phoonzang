math_loc_047d:
    push bp                          ; 0x047d
    mov bp, sp                       ; 0x047e
    mov ax, word [cs:data_0295]      ; 0x0480
    mov bx, word [bp + 0xc]          ; 0x0484
    mov word [bx], ax                ; 0x0487
    mov ax, word [cs:data_0297]      ; 0x0489
    mov bx, word [bp + 0xe]          ; 0x048d
    mov word [bx], ax                ; 0x0490
    mov sp, bp                       ; 0x0492
    pop bp                           ; 0x0494
    ret                              ; 0x0495
