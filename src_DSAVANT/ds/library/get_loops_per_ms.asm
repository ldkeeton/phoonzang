; auto-generated
get_loops_per_ms:
    push bp                          ; 0x383e
    mov bp, sp                       ; 0x383f
    cld                              ; 0x3841
    mov ax, word [cs:loops_per_ms - IMAGE_BASE] ; 0x3842
    mov sp, bp                       ; 0x3846
    pop bp                           ; 0x3848
    ret                              ; 0x3849
