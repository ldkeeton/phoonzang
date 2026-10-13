; auto-generated
leaf_loc_4cfd:
    push ax                          ; 0x4cfd
    mov bx, cseg_4ab4 - IMAGE_BASE   ; 0x4cfe
    mov cx, 0x14                     ; 0x4d01
@..leaf_loc_4cfd.l1:
    cmp ax, word [cs:bx]             ; 0x4d04
    jae short @..leaf_loc_4cfd.l2    ; 0x4d07
    dec word [cs:bx]                 ; 0x4d09
@..leaf_loc_4cfd.l2:
    add bx, byte 4                   ; 0x4d0c
    loop @..leaf_loc_4cfd.l1         ; 0x4d0f
    pop ax                           ; 0x4d11
    ret                              ; 0x4d12
