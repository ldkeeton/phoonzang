; auto-generated
dos_con_in_noecho:
    push bp                          ; 0x2521
    mov bp, sp                       ; 0x2522
    mov ah, 7                        ; 0x2524
    int 0x21 ; DOS keyboard input (no echo)
    mov ah, 0                        ; 0x2528
    mov sp, bp                       ; 0x252a
    pop bp                           ; 0x252c
    ret                              ; 0x252d
