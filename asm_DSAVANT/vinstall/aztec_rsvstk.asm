aztec_rsvstk:
    push bp                          ; 0x3ac5
    mov bp, sp                       ; 0x3ac6
    mov ax, sp                       ; 0x3ac8
    sub ax, word [bp + 0x4]          ; 0x3aca
    mov word [dseg_2514], ax         ; 0x3acd
    pop bp                           ; 0x3ad0
    ret                              ; 0x3ad1
