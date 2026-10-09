dos_free_mem_2:
    mov ah, 0x49                     ; 0x29b3
    int 0x21 ; DOS free memory
    pop di                           ; 0x29b7
    pop si                           ; 0x29b8
    pop es                           ; 0x29b9
    pop ds                           ; 0x29ba
    mov sp, bp                       ; 0x29bb
    pop bp                           ; 0x29bd
    ret                              ; 0x29be
