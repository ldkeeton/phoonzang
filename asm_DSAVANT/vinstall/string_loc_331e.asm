string_loc_331e:
    push ds                          ; 0x331e
    pop es                           ; 0x331f
    mov di, word [bp + 0x8]          ; 0x3320
    test byte [bp - 0x000b], data_0004 ; 0x3323
    jne short string_loc_3330        ; 0x3327
    mov di, word [di]                ; 0x3329
    add word [bp + 0x8], byte 2      ; 0x332b
    ret                              ; 0x332f
