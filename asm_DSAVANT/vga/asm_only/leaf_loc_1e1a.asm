; auto-generated
; asm only
leaf_loc_1e1a:
    cmp byte [cs:cseg_1ed3 - IMAGE_BASE], 0 ; 0x1e1a
    je short @..leaf_loc_1e1a.l1     ; 0x1e20
    retf                             ; 0x1e22
@..leaf_loc_1e1a.l1:
    mov al, 0xff                     ; 0x1e23
    mov byte [cs:cseg_1ed3 - IMAGE_BASE], al ; 0x1e25
    shr cx, 1                        ; 0x1e29
    mov word [cs:cseg_15b0 - IMAGE_BASE], cx ; 0x1e2b
    mov word [cs:cseg_15b2 - IMAGE_BASE], dx ; 0x1e30
