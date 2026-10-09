    push bp                          ; 0x3ac5
    db 0x8b, 0xec ; mov bp, sp
    db 0x8b, 0xc4 ; mov ax, sp
    sub ax, word [bp + 0x4]          ; 0x3aca
    mov word [data_2514], ax         ; 0x3acd
    pop bp                           ; 0x3ad0
    ret                              ; 0x3ad1
