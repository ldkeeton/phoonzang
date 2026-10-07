io_loc_0a2a:
    pushf                            ; 0x0a2a
    push di                          ; 0x0a2b
    push es                          ; 0x0a2c
    cli                              ; 0x0a2d
    cld                              ; 0x0a2e
    xor ax, ax                       ; 0x0a2f
    mov es, ax                       ; 0x0a31
    mov di, 0x20                     ; 0x0a33
    mov ax, dx                       ; 0x0a36
    stosw                            ; 0x0a38
    mov ax, ds                       ; 0x0a39
    stosw                            ; 0x0a3b
    pop es                           ; 0x0a3c
    pop di                           ; 0x0a3d
    popf                             ; 0x0a3e
    ret                              ; 0x0a3f
