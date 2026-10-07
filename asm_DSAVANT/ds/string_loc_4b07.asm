string_loc_4b07:
    cmp al, 0x2a                     ; 0x4b07
    jne short @..string_loc_4b07.l1  ; 0x4b09
    push ds                          ; 0x4b0b
    pop es                           ; 0x4b0c
    mov di, word [bp + 0x8]          ; 0x4b0d
    mov dx, word [es:di]             ; 0x4b10
    add di, byte 2                   ; 0x4b13
    mov word [bp + 0x8], di          ; 0x4b16
    lodsb                            ; 0x4b19
    ret                              ; 0x4b1a
