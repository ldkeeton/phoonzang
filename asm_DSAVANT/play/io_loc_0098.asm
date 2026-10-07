io_loc_0098:
    mov bl, byte [cs:data_0b7c]      ; 0x0098
    xor bh, bh                       ; 0x009d
    shl bx, 1                        ; 0x009f
    mov ax, 0                        ; 0x00a1
    call [cs:bx + 0x1aa]             ; 0x00a4
    ret                              ; 0x00a9
