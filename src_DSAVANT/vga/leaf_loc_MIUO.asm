; auto-generated
leaf_loc_MIUO:
    push ax                          ; 0x0e34
    mov bx, data_029b                ; 0x0e35
    mov cx, 0x14                     ; 0x0e38
@..leaf_loc_MIUO.l1:
    cmp ax, word [cs:bx]             ; 0x0e3b
    jae short @..leaf_loc_MIUO.l2    ; 0x0e3e
    dec word [cs:bx]                 ; 0x0e40
@..leaf_loc_MIUO.l2:
    inc bx                           ; 0x0e43
    inc bx                           ; 0x0e44
    loop @..leaf_loc_MIUO.l1         ; 0x0e45
    mov bx, cseg_01c3 - IMAGE_BASE   ; 0x0e47
    mov cx, 0xa                      ; 0x0e4a
@..leaf_loc_MIUO.l3:
    cmp ax, word [cs:bx]             ; 0x0e4d
    jae short @..leaf_loc_MIUO.l4    ; 0x0e50
    dec word [cs:bx]                 ; 0x0e52
@..leaf_loc_MIUO.l4:
    inc bx                           ; 0x0e55
    inc bx                           ; 0x0e56
    loop @..leaf_loc_MIUO.l3         ; 0x0e57
    mov bx, data_02d7                ; 0x0e59
    mov cx, 0xa                      ; 0x0e5c
@..leaf_loc_MIUO.l5:
    cmp ax, word [cs:bx]             ; 0x0e5f
    jae short @..leaf_loc_MIUO.l6    ; 0x0e62
    dec word [cs:bx]                 ; 0x0e64
@..leaf_loc_MIUO.l6:
    inc bx                           ; 0x0e67
    inc bx                           ; 0x0e68
    loop @..leaf_loc_MIUO.l5         ; 0x0e69
    pop ax                           ; 0x0e6b
    ret                              ; 0x0e6c
cseg_0e6d:
    db 0x00, 0x00
cseg_0e6f:
    db 0x00, 0x00
