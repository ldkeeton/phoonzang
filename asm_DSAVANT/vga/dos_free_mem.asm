dos_free_mem:
    mov ah, 0x49                     ; 0x28ae
    int 0x21 ; DOS free memory
    pop di                           ; 0x28b2
    pop si                           ; 0x28b3
    pop es                           ; 0x28b4
    pop ds                           ; 0x28b5
    mov sp, bp                       ; 0x28b6
    pop bp                           ; 0x28b8
    ret                              ; 0x28b9
