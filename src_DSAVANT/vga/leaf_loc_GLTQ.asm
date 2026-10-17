; auto-generated
leaf_loc_GLTQ:
    xor ax, ax                       ; 0x3360
    mov word [bp - 0x003c], ax       ; 0x3362
    mov dl, 0x80                     ; 0x3365
    mov bx, word [bp - 0x0034]       ; 0x3367
    mov cx, 8                        ; 0x336a
@..leaf_loc_GLTQ.l1:
    mov al, byte [cs:bx]             ; 0x336d
    and al, dl                       ; 0x3370
    je short @..leaf_loc_GLTQ.l2     ; 0x3372
    inc word [bp - 0x003c]           ; 0x3374
@..leaf_loc_GLTQ.l2:
    ror dl, 1                        ; 0x3377
    loop @..leaf_loc_GLTQ.l1         ; 0x3379
    ret                              ; 0x337b
