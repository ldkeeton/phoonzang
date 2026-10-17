; auto-generated
leaf_loc_IHJG:
    push ax                          ; 0x4cbe
    mov bx, cseg_0129 - IMAGE_BASE   ; 0x4cbf
    mov cx, 0x14                     ; 0x4cc2
@..leaf_loc_IHJG.l1:
    cmp ax, word [cs:bx]             ; 0x4cc5
    jae short @..leaf_loc_IHJG.l2    ; 0x4cc8
    dec word [cs:bx]                 ; 0x4cca
@..leaf_loc_IHJG.l2:
    inc bx                           ; 0x4ccd
    inc bx                           ; 0x4cce
    loop @..leaf_loc_IHJG.l1         ; 0x4ccf
    pop ax                           ; 0x4cd1
    ret                              ; 0x4cd2
