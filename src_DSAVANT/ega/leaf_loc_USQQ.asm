; auto-generated
leaf_loc_USQQ:
    push ax                          ; 0x4ce8
    mov bx, cseg_0151 - IMAGE_BASE   ; 0x4ce9
    mov cx, 5                        ; 0x4cec
@..leaf_loc_USQQ.l1:
    cmp ax, word [cs:bx]             ; 0x4cef
    jae short @..leaf_loc_USQQ.l2    ; 0x4cf2
    dec word [cs:bx]                 ; 0x4cf4
@..leaf_loc_USQQ.l2:
    inc bx                           ; 0x4cf7
    inc bx                           ; 0x4cf8
    loop @..leaf_loc_USQQ.l1         ; 0x4cf9
    pop ax                           ; 0x4cfb
    ret                              ; 0x4cfc
