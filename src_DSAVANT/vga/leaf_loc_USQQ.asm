; auto-generated
leaf_loc_USQQ:
    push ax                          ; 0x4436
    mov bx, data_0251                ; 0x4437
    mov cx, 5                        ; 0x443a
@..leaf_loc_USQQ.l1:
    cmp ax, word [cs:bx]             ; 0x443d
    jae short @..leaf_loc_USQQ.l2    ; 0x4440
    dec word [cs:bx]                 ; 0x4442
@..leaf_loc_USQQ.l2:
    inc bx                           ; 0x4445
    inc bx                           ; 0x4446
    loop @..leaf_loc_USQQ.l1         ; 0x4447
    pop ax                           ; 0x4449
    ret                              ; 0x444a
