leaf_loc_3a51:
    jmp short @..leaf_loc_3a51.l2    ; 0x3a51
@..leaf_loc_3a51.l1:
    add si, word [bp - 0x0030]       ; 0x3a53
@..leaf_loc_3a51.l2:
    add word [bp - 0x003c], dx       ; 0x3a56
    mov bx, word [bp - 0x003c]       ; 0x3a59
    cmp bx, word [bp - 0x0034]       ; 0x3a5c
    jb short @..leaf_loc_3a51.l3     ; 0x3a5f
    sub bx, word [bp - 0x0034]       ; 0x3a61
    mov word [bp - 0x003c], bx       ; 0x3a64
    inc si                           ; 0x3a67
@..leaf_loc_3a51.l3:
    cmp si, word [bp - 0x0032]       ; 0x3a68
    jb short @..leaf_loc_3a51.l5     ; 0x3a6b
@..leaf_loc_3a51.l4:
    ret                              ; 0x3a6d
