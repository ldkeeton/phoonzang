    push bp                          ; 0x436c
    db 0x8b, 0xec ; mov bp, sp
    cld                              ; 0x436f
    call far [cs:data_2e33]          ; 0x4370
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x4377
    ret                              ; 0x4378
