; auto-generated
leaf_loc_PTSI:
    push ax                          ; 0x43f7
    mov bx, data_0bc6                ; 0x43f8
    mov cx, 0xa                      ; 0x43fb
@..leaf_loc_PTSI.l1:
    cmp ax, word [cs:bx]             ; 0x43fe
    jae short @..leaf_loc_PTSI.l2    ; 0x4401
    dec word [cs:bx]                 ; 0x4403
@..leaf_loc_PTSI.l2:
    inc bx                           ; 0x4406
    inc bx                           ; 0x4407
    loop @..leaf_loc_PTSI.l1         ; 0x4408
    pop ax                           ; 0x440a
    ret                              ; 0x440b
