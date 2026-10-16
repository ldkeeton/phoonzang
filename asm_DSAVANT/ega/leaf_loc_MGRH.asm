; auto-generated
leaf_loc_MGRH:
    push ax                          ; 0x4cd3
    mov bx, cseg_015b - IMAGE_BASE   ; 0x4cd4
    mov cx, 0x10                     ; 0x4cd7
@..leaf_loc_MGRH.l1:
    cmp ax, word [cs:bx]             ; 0x4cda
    jae short @..leaf_loc_MGRH.l2    ; 0x4cdd
    dec word [cs:bx]                 ; 0x4cdf
@..leaf_loc_MGRH.l2:
    inc bx                           ; 0x4ce2
    inc bx                           ; 0x4ce3
    loop @..leaf_loc_MGRH.l1         ; 0x4ce4
    pop ax                           ; 0x4ce6
    ret                              ; 0x4ce7
