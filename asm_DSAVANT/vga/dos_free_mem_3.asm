dos_free_mem_3:
    mov ah, 0x49                     ; 0x2a8b
    int 0x21 ; DOS free memory
    pop di                           ; 0x2a8f
    pop si                           ; 0x2a90
    pop es                           ; 0x2a91
    pop ds                           ; 0x2a92
    mov sp, bp                       ; 0x2a93
    pop bp                           ; 0x2a95
    ret                              ; 0x2a96
