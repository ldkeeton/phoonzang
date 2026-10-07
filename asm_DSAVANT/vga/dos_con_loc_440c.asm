dos_con_loc_440c:
    push ax                          ; 0x440c
    mov bx, data_0229                ; 0x440d
    mov cx, 0x14                     ; 0x4410
@..dos_con_loc_440c.l1:
    cmp ax, word [cs:bx]             ; 0x4413
    jae short @..dos_con_loc_440c.l2 ; 0x4416
    dec word [cs:bx]                 ; 0x4418
@..dos_con_loc_440c.l2:
    inc bx                           ; 0x441b
    inc bx                           ; 0x441c
    loop @..dos_con_loc_440c.l1      ; 0x441d
    pop ax                           ; 0x441f
    ret                              ; 0x4420
