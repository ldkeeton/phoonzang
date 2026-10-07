    push bp                          ; 0x3b89
    db 0x8b, 0xec ; mov bp, sp
    cld                              ; 0x3b8c
    call far [cs:data_2e2b]          ; 0x3b8d
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x3b94
    ret                              ; 0x3b95
