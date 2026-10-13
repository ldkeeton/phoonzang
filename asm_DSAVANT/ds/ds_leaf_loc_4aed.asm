ds_leaf_loc_4aed:
    push ds                          ; 0x4aed
    pop es                           ; 0x4aee
    mov di, word [bp + 0x8]          ; 0x4aef
    test byte [bp - 0x000b], 4       ; 0x4af2
    jne short @..ds_leaf_loc_4aed.l1 ; 0x4af6
    mov di, word [di]                ; 0x4af8
    add word [bp + 0x8], byte 2      ; 0x4afa
    ret                              ; 0x4afe
@..ds_leaf_loc_4aed.l1:
    les di, word [es:di]             ; 0x4aff
    add word [bp + 0x8], byte 4      ; 0x4b02
    ret                              ; 0x4b06
