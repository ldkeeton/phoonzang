dos_con_in_noecho:
    push bp
    mov bp, sp
    mov ah, 7
    int 0x21 ; DOS keyboard input (no echo)
    mov ah, 0
    mov sp, bp
    pop bp
    ret
