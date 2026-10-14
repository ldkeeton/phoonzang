; auto-generated
leaf_loc_IKRU:
    push ax                          ; 0x440c
    mov bx, data_0229                ; 0x440d
    mov cx, 0x14                     ; 0x4410
@..leaf_loc_IKRU.l1:
    cmp ax, word [cs:bx]             ; 0x4413
    jae short @..leaf_loc_IKRU.l2    ; 0x4416
    dec word [cs:bx]                 ; 0x4418
@..leaf_loc_IKRU.l2:
    inc bx                           ; 0x441b
    inc bx                           ; 0x441c
    loop @..leaf_loc_IKRU.l1         ; 0x441d
    pop ax                           ; 0x441f
    ret                              ; 0x4420
