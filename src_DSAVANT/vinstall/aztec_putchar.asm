; auto-generated
aztec_putchar:
    push bp                          ; 0x2c7a
    mov bp, sp                       ; 0x2c7b
    mov ax, Cbuffs + 0xd             ; 0x2c7d
    push ax                          ; 0x2c80
    push word [bp + 0x4]             ; 0x2c81
    call aztec_aputc                 ; 0x2c84
    add sp, byte 4                   ; 0x2c87
    mov sp, bp                       ; 0x2c8a
    pop bp                           ; 0x2c8c
    ret                              ; 0x2c8d
