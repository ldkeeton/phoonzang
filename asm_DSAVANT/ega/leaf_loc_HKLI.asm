; auto-generated
leaf_loc_HKLI:
    push ax                          ; 0x4ca9
    mov bx, cseg_0fe7 - IMAGE_BASE   ; 0x4caa
    mov cx, 0xa                      ; 0x4cad
@..leaf_loc_HKLI.l1:
    cmp ax, word [cs:bx]             ; 0x4cb0
    jae short @..leaf_loc_HKLI.l2    ; 0x4cb3
    dec word [cs:bx]                 ; 0x4cb5
@..leaf_loc_HKLI.l2:
    inc bx                           ; 0x4cb8
    inc bx                           ; 0x4cb9
    loop @..leaf_loc_HKLI.l1         ; 0x4cba
    pop ax                           ; 0x4cbc
    ret                              ; 0x4cbd
