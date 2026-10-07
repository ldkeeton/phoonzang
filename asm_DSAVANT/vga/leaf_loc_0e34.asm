leaf_loc_0e34:
    push ax                          ; 0x0e34
    mov bx, data_029b                ; 0x0e35
    mov cx, 0x14                     ; 0x0e38
@..leaf_loc_0e34.l1:
    cmp ax, word [cs:bx]             ; 0x0e3b
    jae short @..leaf_loc_0e34.l2    ; 0x0e3e
    dec word [cs:bx]                 ; 0x0e40
@..leaf_loc_0e34.l2:
    inc bx                           ; 0x0e43
    inc bx                           ; 0x0e44
    loop @..leaf_loc_0e34.l1         ; 0x0e45
    mov bx, 0x2c3                    ; 0x0e47
    mov cx, 0xa                      ; 0x0e4a
@..leaf_loc_0e34.l3:
    cmp ax, word [cs:bx]             ; 0x0e4d
    jae short @..leaf_loc_0e34.l4    ; 0x0e50
    dec word [cs:bx]                 ; 0x0e52
@..leaf_loc_0e34.l4:
    inc bx                           ; 0x0e55
    inc bx                           ; 0x0e56
    loop @..leaf_loc_0e34.l3         ; 0x0e57
    mov bx, data_02d7                ; 0x0e59
    mov cx, 0xa                      ; 0x0e5c
@..leaf_loc_0e34.l5:
    cmp ax, word [cs:bx]             ; 0x0e5f
    jae short @..leaf_loc_0e34.l6    ; 0x0e62
    dec word [cs:bx]                 ; 0x0e64
@..leaf_loc_0e34.l6:
    inc bx                           ; 0x0e67
    inc bx                           ; 0x0e68
    loop @..leaf_loc_0e34.l5         ; 0x0e69
    pop ax                           ; 0x0e6b
    ret                              ; 0x0e6c
