; auto-generated
leaf_loc_OUNM:
    push ax                          ; 0x4421
    mov bx, data_025b                ; 0x4422
    mov cx, 0x10                     ; 0x4425
@..leaf_loc_OUNM.l1:
    cmp ax, word [cs:bx]             ; 0x4428
    jae short @..leaf_loc_OUNM.l2    ; 0x442b
    dec word [cs:bx]                 ; 0x442d
@..leaf_loc_OUNM.l2:
    inc bx                           ; 0x4430
    inc bx                           ; 0x4431
    loop @..leaf_loc_OUNM.l1         ; 0x4432
    pop ax                           ; 0x4434
    ret                              ; 0x4435
