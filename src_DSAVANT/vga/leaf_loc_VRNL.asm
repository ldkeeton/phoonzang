; auto-generated
leaf_loc_VRNL:
    push ax                          ; 0x444b
    mov bx, data_4202                ; 0x444c
    mov cx, 0x14                     ; 0x444f
@..leaf_loc_VRNL.l1:
    cmp ax, word [cs:bx]             ; 0x4452
    jae short @..leaf_loc_VRNL.l2    ; 0x4455
    dec word [cs:bx]                 ; 0x4457
@..leaf_loc_VRNL.l2:
    add bx, byte 4                   ; 0x445a
    loop @..leaf_loc_VRNL.l1         ; 0x445d
    pop ax                           ; 0x445f
    ret                              ; 0x4460
