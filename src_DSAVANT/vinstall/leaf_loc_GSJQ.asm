; auto-generated
leaf_loc_GSJQ:
    push ds                          ; 0x331e
    pop es                           ; 0x331f
    mov di, word [bp + 0x8]          ; 0x3320
    test byte [bp - 0x000b], 4       ; 0x3323
    jne short @..leaf_loc_GSJQ.l1    ; 0x3327
    mov di, word [di]                ; 0x3329
    add word [bp + 0x8], byte 2      ; 0x332b
    ret                              ; 0x332f
@..leaf_loc_GSJQ.l1:
    les di, word [es:di]             ; 0x3330
    add word [bp + 0x8], byte 4      ; 0x3333
    ret                              ; 0x3337
