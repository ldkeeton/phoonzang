string_loc_3338:
    cmp al, 0x2a                     ; 0x3338
    jne short @..string_loc_3338.l1  ; 0x333a
    push ds                          ; 0x333c
    pop es                           ; 0x333d
    mov di, word [bp + 0x8]          ; 0x333e
    mov dx, word [es:di]             ; 0x3341
    add di, byte 2                   ; 0x3344
    mov word [bp + 0x8], di          ; 0x3347
    lodsb                            ; 0x334a
    ret                              ; 0x334b
