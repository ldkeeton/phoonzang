    push bp                          ; 0x42a7
    db 0x8b, 0xec ; mov bp, sp
    cld                              ; 0x42aa
    call far [cs:data_2de7]          ; 0x42ab
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x42b2
    ret                              ; 0x42b3
